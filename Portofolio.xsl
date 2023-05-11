<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Plantilla de coincidencia raíz -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Portofolio</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="CSS/Inici.css"/>
      </head>
      <body>
        <header style="margin-top:0px ;">
          <h1>PORTOFOLIO</h1>
          <nav>
            <ul ALIGN="CENTER">
              <li><a href="">Inici</a></li>          
              <li><a href="">Treballs</a></li>  
            </ul>
          </nav>
        </header>
        <main>
          <h1>INFORMACIÓ PERSONAL</h1>
          <p>Nom: <xsl:value-of select="portfolio/personal-info/name"/></p>
          <p>Email: <xsl:value-of select="portfolio/personal-info/email"/></p>
          <p>Telefon: <xsl:value-of select="portfolio/personal-info/phone"/></p>
          <p>Adreça: <xsl:value-of select="portfolio/personal-info/address"/></p>
          
          <h1>TITULS ACADEMICS</h1>
          <xsl:for-each select="portfolio/education/degree">
            <p>Nom: <xsl:value-of select="name"/></p>
            <p>Escola: <xsl:value-of select="school"/></p>
            <p>Any: <xsl:value-of select="year"/></p>
          </xsl:for-each>
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

