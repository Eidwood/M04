<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Visitas a mi web</title>
        <style>
          table { border-collapse: collapse; width: 80%; margin: 20px 0; }
          th, td { border: 1px solid #000; padding: 8px 12px; text-align: left; }
        </style>
      </head>
      <body>
        <h1>Visitas a mi web</h1>
        <table>
          <tr>
            <th>Fecha</th>
            <th>Hora</th>
            <th>Navegador</th>
            <th>Duración (s)</th>
          </tr>

          <!-- Recorremos solo visitas a 'inicio' -->
          <xsl:for-each select="visitas/visita[pagina='inicio']">
            <xsl:sort select="fecha" data-type="text" order="ascending"/>

            <!-- Fila con color según navegador usando atributo literal -->
            <tr style="{ 
                concat(
                  substring('background-color:#FFFF99;', 1 div (navegador='chrome')), 
                  substring('background-color:#99CCFF;', 1 div (navegador='edge')), 
                  substring('background-color:#FFFFFF;', 1 div (not(navegador='chrome' or navegador='edge')))
                )
            }">
              <td><xsl:value-of select="fecha"/></td>
              <td><xsl:value-of select="hora"/></td>
              <td><xsl:value-of select="navegador"/></td>
              <td><xsl:value-of select="duracion"/></td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
