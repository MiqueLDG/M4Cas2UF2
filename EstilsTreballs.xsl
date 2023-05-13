<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Plantilla de coincidencia raíz -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Portofolio</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="CSS/Treballs.css"/>
      </head>
      <body>
        <header style="margin-top:0px ;">
          <h1>PORTOFOLIO</h1>
          <nav>
            <ul ALIGN="CENTER">
              <li><a  href="Curriculum.xml">CURRICULUM</a></li>          
            <li class="current"><a>TREBALLS</a></li>  
            </ul>
          </nav>
        </header>
        <main>
        <div class="PROJECTES">
          <h1></h1>
          <table>
          <xsl:for-each select="projectes/projecte">
          <xsl:value-of select="title"/>
          <br></br>
          <xsl:value-of select="description"/>
          </xsl:for-each>
          </table>
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
