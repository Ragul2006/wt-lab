<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html><head><title>Student Details</title></head><body>
<h2>Student Details</h2>
<table border="1">
<tr><th>Roll Number</th><th>Name</th><th>Department</th></tr>
<xsl:for-each select="students/student">
<tr>
<td><xsl:value-of select="rollno"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="department"/></td>
</tr>
</xsl:for-each>
</table>
</body></html>
</xsl:template>
</xsl:stylesheet>