package board.model;

import java.util.List;

public interface BoardDAO {

	public List<BoardVO> getArticleList();
	public boolean insertArticle(BoardVO boardVO);
	public BoardVO getArticle(int no);
	public int updateArticle(BoardVO boardVO);
	public boolean deleteArticle(int no);
}
