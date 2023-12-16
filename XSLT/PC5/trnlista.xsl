<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Alumnos Topicos III</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
        <th style="text-align:left">Codigo</th>
        <th style="text-align:left">Especialidad</th>
        <th style="text-align:left">Apellidos y nombres</th>
    </tr>
    <xsl:for-each select="root/item">
    <tr>
        <td><xsl:value-of select="codigo"/></td>
        <td><xsl:value-of select="especialidad"/></td>
        <td><xsl:value-of select="nombres-apellidos"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>