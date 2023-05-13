<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Plantilla de coincidencia raíz -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Portofolio</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="/CSS/Treballs.css"/>
      </head>
      <body>
        <header style="margin-top:0px ;">
          <h1>PORTOFOLIO</h1>
          <nav>
            <ul ALIGN="CENTER">
              <li><a  href="/XML/Curriculum.xml">CURRICULUM</a></li>          
            <li class="current"><a>TREBALLS</a></li>  
            </ul>
          </nav>
        </header>
        <main>
        <div class="PROJECTES">          
          <xsl:for-each select="projectes/HTML">
          <h2><xsl:value-of select="title"/></h2>
          <p><a href="http://espaidejocs.cat" target="_blank"><img src="/FOTOS/Logo.png" width="300" height="75"></img></a></p>
          <xsl:value-of select="description"/>
          </xsl:for-each>
          <xsl:for-each select="projectes/XML">
          <h2><xsl:value-of select="title"/></h2>
          <p><a href="/M4/Prova.xml" target="_blank"><img src="/FOTOS/XML.png" width="500" height="450"></img></a></p>
          <xsl:value-of select="description"/>
          </xsl:for-each>
        </div>
        </main>
        <footer>
          <div>
            <span class="mb-3 mb-md-0 text-body-secondary">M4 Cas2 UF2</span>
          </div>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
