<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style type="text/css">

                    table {
                        width:65%;
                        text-align:center;
                        margin:auto;
                    }
                    
                    .line-1 {
                        height: 2px;
                        background: white;
                    }
                    
                    .titol {
                        text-align: center;
                        width:100%;
                        background: #b5b5b5;
                        font-size:50px;
                        color:#FFFFFF;
                        font-weight:bold;
                    }

                    .h1 {
                        font-weight:bold;
                        font-size:30px;
                    }

                    .info {
                        align-items: center;
                    }

                    body {
                        margin: 1%;
                        width:99%;
                        padding: 0;
                        color: #FFFFFF;
                        background: #000000;
                        font-family: Arial,Helvetica,sans-serif;
                    }

                    .foto {
                        display:block;
                        height:auto;
                        transform:scale(0.7);
                    }
                                 
                </style>
            </head>
            <body>
                    <div class="titol">Llenguatges de programació</div>
                <br />

                <table>
                    <div class="info">
                        <xsl:for-each select="llenguatges/llenguatge">
                        <tr class="h1"><td><xsl:value-of select="nom" /><br /><br /></td></tr>
                        
                            <tr><td><xsl:value-of select="descripció" /><br /><br /></td></tr>

                            <tr><td><xsl:value-of select="datacreació" /><br /></td></tr>

                            <tr><td rowspan="2" class="foto">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="foto"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="height">
                                        <xsl:value-of select="200"/>
                                    </xsl:attribute>
                                </xsl:element>
                                <br /><br /><br />
                                <div class="line-1"></div>
                                
                            </td></tr>

                        </xsl:for-each>
                    </div>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>