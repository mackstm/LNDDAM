<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Noticias</title>
            </head>
            <body>
                <h1><xsl:apply-templates select="/Category/Feed/item"/></h1>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="item">
        <table border="1" width="70%">
            <tr>
                <td>
                <xsl:value-of select="title"/>
                </td>
            </tr>
            <br/>
        </table>
    </xsl:template>
</xsl:stylesheet>