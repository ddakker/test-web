<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String url = "jdbc:mysql://192.168.23.23:3306/test";
String id = "root";
String pw = "opennaru";


Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(url, id, pw);
String sql = "select seq, subject, name, created from boards order by created desc";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();
 
%>
<html>
	<head>
		<title>게시판 리스트</title>
	</head>
	
	<body>
		<h1>리스트</h1>
		<table border="1" width="100%">
			<tr>
				<th width="10%">번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>등록</th>
			</tr>
<%
if(rs.next() == false) {
%>
			<tr>
				<td colspan="4">조회된 결과가 없습니다.</td>
			</tr>
<%
} else {
	do {
		int seq = rs.getInt("seq");
		String subject = rs.getString("subject");
		String name = rs.getString("name");
		Date created = rs.getDate("created");
%>
			<tr>
				<td width="20%"><%= seq %></td>
				<td><%= subject %></td>
				<td><%= name %></td>
				<td><%= created %></td>
			</tr>

<%
	} while (rs.next());
}
%>
		</table>
	</body>
</html>
