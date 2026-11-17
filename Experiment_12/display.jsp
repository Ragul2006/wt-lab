<%@ page contentType="text/html;charset=UTF-8" %>
<%
String id = request.getParameter("bookid");
String book = request.getParameter("bookname");
String student = request.getParameter("student");
String issue = request.getParameter("issuedate");
String ret = request.getParameter("returndate");
%>
<html><head><title>Book Record</title></head><body>
<h2>Library Record</h2>
<table border="1" cellpadding="8">
<tr><th>Book ID</th><td><%= id %></td></tr>
<tr><th>Book Name</th><td><%= book %></td></tr>
<tr><th>Student</th><td><%= student %></td></tr>
<tr><th>Issue Date</th><td><%= issue %></td></tr>
<tr><th>Return Date</th><td><%= ret %></td></tr>
</table>
</body></html>