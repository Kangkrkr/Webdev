<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(/webdev/css/pc.css);
</style>
</head>
<body>
<table>
<script type="text/javascript">
var score = 
[
   ['이름','국어','영어','수학','철학','총점','평균'],
   ['신해철',100, 90, 80, 70],
   ['서태지', 90, 80, 70, 60],
   ['윤상',   80, 70, 60, 50]
];

for (var row = 0; row < score.length; row++) {
   var sum = 0;
   document.write('<tr>');
   for (var col = 0; col < score[row].length; col++) {
      document.write('<td>' + score[row][col] + '</td>');
//       if(row !== 0 && col !== 0) sum += score[row][col];
//       (row !== 0 && col !== 0) && (sum += score[row][col]);
//      (typeof(score[row][col]) == 'number') && (sum += score[row][col]);
      (!isNaN(score[row][col])) && (sum += score[row][col]);
      
   }
   if (row !== 0) {
      document.write('<td>' + sum + '</td>');
      document.write('<td>' + sum/(score[row].length - 1) + '</td>');
   }   
   document.write('</tr>');
}

</script>
</table>
</body>
</html>