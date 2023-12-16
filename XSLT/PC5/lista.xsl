<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>

  <!-- Plantilla para el elemento root -->
  <xsl:template match="/root">
    <root>
      <!-- Llama a la plantilla recursiva con el texto del nodo root -->
      <xsl:call-template name="processLines">
        <xsl:with-param name="text" select="."/>
      </xsl:call-template>
    </root>
  </xsl:template>

  <!-- Plantilla recursiva para procesar cada línea de texto -->
  <xsl:template name="processLines">
    <xsl:param name="text"/>
    <xsl:choose>
      <!-- Si el texto contiene un salto de línea, procesa la primera línea y luego llama a la plantilla recursivamente con el resto del texto -->
      <xsl:when test="contains($text, '&#10;')">
        <xsl:call-template name="processLine">
          <xsl:with-param name="line" select="substring-before($text, '&#10;')"/>
        </xsl:call-template>
        <xsl:call-template name="processLines">
          <xsl:with-param name="text" select="substring-after($text, '&#10;')"/>
        </xsl:call-template>
      </xsl:when>
      <!-- Si el texto no contiene un salto de línea, procesa la última línea -->
      <xsl:otherwise>
        <xsl:call-template name="processLine">
          <xsl:with-param name="line" select="$text"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Plantilla para procesar una línea de texto -->
  <xsl:template name="processLine">
    <xsl:param name="line"/>
    <xsl:if test="normalize-space($line) != ''">
        <!-- regex para el codigo -->
        <xsl:variable name="codigo" select="replace($line, '.*(20(1[2-9]|2[0-3])[0-7]\d{3}[\.\-\s]*([A-Ka-k])\s).*', '$1')"/>
        <!-- regex para la especialidad y la reemplaza por Ciencias de la computación -->
        <xsl:variable name="especialidad" select="replace($line, '.*\s(N6)\s.*', 'Ciencias de la computación')"/>
        <!-- regex para los nombres y apellidos -->
        <xsl:variable name="nombres-apellidos" select="replace($line, '.*N6\s+(.*)', '$1')"/>
        <item>
            <codigo><xsl:value-of select="normalize-space($codigo)"/></codigo>
            <especialidad><xsl:value-of select="normalize-space($especialidad)"/></especialidad>
            <nombres-apellidos><xsl:value-of select="normalize-space($nombres-apellidos)"/></nombres-apellidos>
        </item>
    </xsl:if>
</xsl:template>

</xsl:stylesheet>