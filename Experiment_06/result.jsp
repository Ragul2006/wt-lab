<%@ page contentType="text/html;charset=UTF-8" %>
<%
String student = request.getParameter("student");
int score = 0;
for (int i = 1; i <= 3; i++) {
    String answer = request.getParameter("q" + i);
    if ("1".equals(answer)) score++;
}
%>
<html><head><title>Exam Result</title></head><body>
<h2>Examination Result</h2>
<p>Student Name: <%= student %></p>
<p>Correct Answers: <%= score %> out of 3</p>
<p><%= score >= 2 ? "PASS" : "FAIL" %></p>
</body></html>