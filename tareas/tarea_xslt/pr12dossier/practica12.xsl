<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Lista de alumnos de 1ºASIR</h2>
                <table border="1">
                    <tr><th colspan="3" bgcolor="blue" style="color: white">1ºASIR</th></tr>
                    <tr bgcolor="pink"><th>CIAL</th><th>Nombre</th><th>Apellidos</th></tr>
                    <xsl:for-each select="//alumno[../@codigo='1']">
                        <tr>
                            <td bgcolor="green"><xsl:value-of select="@cial"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Lista de alumnos de 2ºASIR</h2>
                <table border="1">
                    <tr><th colspan="3" bgcolor="blue" style="color: white">2ºASIR</th></tr>
                    <tr bgcolor="pink"><th>CIAL</th><th>Nombre</th><th>Apellidos</th></tr>
                    <xsl:for-each select="//alumno[../@codigo='2']">
                        <tr>
                            <td bgcolor="green"><xsl:value-of select="@cial"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Lista de alumnos de 1ºDAI</h2>
                <table border="1">
                    <tr><th colspan="3" bgcolor="blue" style="color: white">1ºDAI</th></tr>
                    <tr bgcolor="pink"><th>CIAL</th><th>Nombre</th><th>Apellidos</th></tr>
                    <xsl:for-each select="//alumno[../@codigo='3']">
                        <tr>
                            <td bgcolor="green"><xsl:value-of select="@cial"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
