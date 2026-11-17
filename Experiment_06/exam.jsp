<%@ page contentType="text/html;charset=UTF-8" %>
<html><head><title>Online Examination</title></head><body>
<h2>Online Examination</h2>
<form action="result.jsp" method="post">
  Student Name: <input type="text" name="student" required><br><br>
  1. HTML stands for?<br>
  <input type="radio" name="q1" value="1" required> Hyper Text Markup Language<br>
  <input type="radio" name="q1" value="0"> High Text Machine Language<br><br>
  2. Which tag creates a hyperlink?<br>
  <input type="radio" name="q2" value="1" required> &lt;a&gt;<br>
  <input type="radio" name="q2" value="0"> &lt;p&gt;<br><br>
  3. Which language styles a web page?<br>
  <input type="radio" name="q3" value="1" required> CSS<br>
  <input type="radio" name="q3" value="0"> SQL<br><br>
  <input type="submit" value="Submit Exam">
</form>
</body></html>