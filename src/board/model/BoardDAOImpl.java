package board.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

// 싱글턴 패턴의 클래스로 작성한다.
// Persistance Layer의 분리.
public class BoardDAOImpl implements BoardDAO {

	private static BoardDAOImpl boardDAOImpl= new BoardDAOImpl();
	
	private BoardDAOImpl(){}
	
	public static BoardDAOImpl getInstance(){
		
		if(boardDAOImpl == null){
			boardDAOImpl = new BoardDAOImpl();
		}
		
		return boardDAOImpl;
	}

	@Override
	public List<BoardVO> getArticleList() {
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<BoardVO> list = new ArrayList<BoardVO>();
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT no, title, name, content, regdate, readcount, pwd ");
		sql.append(" FROM board");
		sql.append(" ORDER BY no DESC");
		
		try{
			Class.forName("oracle.jdbc.OracleDriver");
		
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			
			rs = ps.executeQuery();
			
			while(rs.next()){
				BoardVO boardVO = new BoardVO();
				
				boardVO.setNo(rs.getInt("no"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setName(rs.getString("name"));
				boardVO.setRegdate(rs.getString("regdate"));
				boardVO.setReadcount(rs.getInt("readcount"));
				
				list.add(boardVO);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null) try{ rs.close(); } catch(Exception e){};
			if(ps != null) try{ ps.close(); } catch(Exception e){};
			if(conn != null) try{ conn.close(); } catch(Exception e){};
		}
		
		return list;
	}

	@Override
	public boolean insertArticle(BoardVO boardVO) {
		
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO board(no, title, name, content, pwd)");
		sql.append(" VALUES(seq_board.nextval, ?, ?, ?, ?)");
		
		boolean result = false;
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try{
			Class.forName("oracle.jdbc.OracleDriver");
		
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1, boardVO.getTitle());
			ps.setString(2, boardVO.getName());
			ps.setString(3, boardVO.getContent());
			ps.setString(4, boardVO.getPwd());
			
			ps.executeUpdate();
			
			result = true;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(ps != null) try{ ps.close(); } catch(Exception e){};
			if(conn != null) try{ conn.close(); } catch(Exception e){};
		}
		
		return result;
	}

	@Override
	public BoardVO getArticle(int no) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		BoardVO boardVO = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append("select no, title, name, readcount, content, regdate from board where no=?");

		try{
			Class.forName("oracle.jdbc.OracleDriver");
		
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			ps.setInt(1, no);
			
			rs = ps.executeQuery();
			if(rs.next()){
				
				boardVO = new BoardVO();
				
				boardVO.setNo(rs.getInt("no"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setName(rs.getString("name"));
				boardVO.setRegdate(rs.getString("regdate"));
				boardVO.setContent(rs.getString("content"));
				boardVO.setReadcount(rs.getInt("readcount"));
			}// 결과를 받아온것이 없을 경우 else문으로 처리.
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(ps != null) try{ ps.close(); } catch(Exception e){};
			if(conn != null) try{ conn.close(); } catch(Exception e){};
		}
		
		return boardVO;
	}

	@Override
	public int updateArticle(BoardVO boardVO) {
		
		int result = 0;
		
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE board SET title=?, name=?, pwd=?, content=? WHERE no=?");
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try{
			Class.forName("oracle.jdbc.OracleDriver");
		
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1, boardVO.getTitle());
			ps.setString(2, boardVO.getName());
			ps.setString(3, boardVO.getPwd());
			ps.setString(4, boardVO.getContent());
			ps.setInt(5, boardVO.getNo());
			
			result = ps.executeUpdate(); 
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(ps != null) try{ ps.close(); } catch(Exception e){};
			if(conn != null) try{ conn.close(); } catch(Exception e){};
		}
		
		return result;
	}

	@Override
	public boolean deleteArticle(int no) {
		
		boolean result = false;
		
		StringBuffer sql = new StringBuffer();
		sql.append("DELETE FROM board WHERE no=?");
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try{
			Class.forName("oracle.jdbc.OracleDriver");
		
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			ps.setInt(1, no);
			
			if(ps.executeUpdate() > 0){
				result = true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(ps != null) try{ ps.close(); } catch(Exception e){};
			if(conn != null) try{ conn.close(); } catch(Exception e){};
		}
		
		return result;
	}
}
