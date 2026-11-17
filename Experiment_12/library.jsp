<%@ page contentType="text/html;charset=UTF-8" %>
<html><head><title>Library Management</title></head><body>
<h2>Library Book Details</h2>
<form action="display.jsp" method="post">
  Book ID: <input name="bookid" required><br><br>
  Book Name: <input name="bookname" required><br><br>
  Student Name: <input name="student" required><br><br>
  Issue Date: <input type="date" name="issuedate" required><br><br>
  Return Date: <input type="date" name="returndate" required><br><br>
  <input type="submit" value="Save Details">
</form>
</body></html>