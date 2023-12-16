<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Mascotas</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Animal-Id</th>
<th style="text-align:left">Nombre</th>
<th style="text-align:left">Raza</th>
    </tr>
    <xsl:for-each select="response/row/row">
    <tr>
  <td><xsl:value-of select="animalid"/></td>
      <td><xsl:value-of select="petname"/></td>
      <td><xsl:value-of select="breed"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>