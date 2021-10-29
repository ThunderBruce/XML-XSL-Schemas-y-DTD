<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <head>
  <link rel="stylesheet" type="text/css" href="" />
  </head>
  <body>
  <h2>Listado de Notas</h2>
  <table>
  <tr>
  <th>Alumno</th>
  <th>NOTAS</th>
  </tr>
  <tr>
  <th>Nombre</th>
  <th>Apellidos</th>
  <th>Matricula</th>
  <th>Teoria</th>
  <th>Practica</th>
  <th>Final</th>
  </tr>
  <xsl:for-each select="notas/alumno">
  <xsl:sort select="nota-teoria" order="descending" />
  <tr>
  <td><xsl:value-of select="nombre"/></td>
  <td><xsl:value-of select="apellidos"/></td>
  <td><xsl:value-of select="num-matricula"/></td>
  <td><xsl:value-of select="nota-teoria"/></td>
  <td><xsl:value-of select="nota-practica"/></td>
  <td><xsl:value-of select="nota-final"/></td>
  </tr>
  </xsl:for-each>
  </table>
  </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
