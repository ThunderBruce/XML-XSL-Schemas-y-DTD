<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <head>
  </head>
  <body>
  <table border="1">
  <tr>
  <th>Titulo</th>
  <th>Artista</th>
  <th>Sello</th>
  <th>Año</th>
  <th>Canciones</th>
  <th>Duracion</th>
  </tr>
  <xsl:for-each select="//cd">

  <tr>
  <td><xsl:value-of select="titulo"/></td>
  <td><xsl:value-of select="artista"/></td>
  <td><xsl:value-of select="sello"/></td>
  <td><xsl:value-of select="anyo"/></td>
  <td><xsl:for-each select="cancion"><xsl:value-of select="."/><br></br></xsl:for-each></td>
  <td><xsl:for-each select="cancion/@tiempo"><xsl:apply-templates select="."/><br></br></xsl:for-each></td>
  </tr>

  </xsl:for-each>
  </table>
  </body>
  </html>
  </xsl:template>
  <xsl:template match="cdteca/cd/cancion/@tiempo">
  <xsl:sort select="." order="ascending" datatype="number"/>
  </xsl:template>
</xsl:stylesheet>

