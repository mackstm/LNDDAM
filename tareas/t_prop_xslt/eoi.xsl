<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" indent="yes"/>

<xsl:template match="/">
    <html>
        <body>
            <h1>Calendario de examenes</h1>
        </body>
    </html>
</xsl:template>

    <xsl:template match="/">
        <html>
            <body>
                <h2>Mayo</h2>
                <xsl:for-each select="//@codigo[//idioma/nivel/examen[contains(text(), 'Mayo')]]">
                    <table border="1">
                        <tr><th colspan="4" bgcolor="green" style="color: white">
                            <xsl:value-of select="../@codigo"/>
                        </th></tr>
                        <tr bgcolor="blue" style="color: white"><th>Nivel</th><th>Modalidad</th><th>Lugar</th><th>Fecha</th></tr>
                        <xsl:for-each select="//examen[../../@codigo='Inglés']">
                            <tr>
                                <td bgcolor="purple"><xsl:value-of select="../@certificacion"/></td>
                                <td bgcolor="purple"><xsl:value-of select="@tipo"/></td>
                                <td bgcolor="purple"><xsl:value-of select="../../../@sede"/></td>
                                <td bgcolor="purple"><xsl:value-of select="text()"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>