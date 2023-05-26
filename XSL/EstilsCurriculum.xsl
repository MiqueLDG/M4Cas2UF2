<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Plantilla de coincidencia raíz -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Portofolio</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="/CSS/Inici.css"/>
      </head>
      <body>
        <header style="margin-top:0px ;">
          <h1>PORTOFOLIO</h1>
          <nav>
            <ul ALIGN="CENTER">
              <li class="current"><a>CURRICULUM</a></li>          
            <li><a href="/XML/Treballs.xml">TREBALLS</a></li>  
            </ul>
          </nav>
        </header>
        <main>
            <div class="Informacio">
        <h1>INFORMACIÓ PERSONAL</h1>
        <table>
          <tr>
            <td>Nom</td>
            <td><xsl:value-of select="portfolio/personal-info/name"/></td>
          </tr>
          <tr>
            <td>Email</td>
            <td><xsl:value-of select="portfolio/personal-info/email"/></td>
          </tr>
          <tr>
            <td>Telèfon</td>
            <td><xsl:value-of select="portfolio/personal-info/phone"/></td>
          </tr>
          <tr>
            <td>Adreça</td>
            <td><xsl:value-of select="portfolio/personal-info/address"/></td>
          </tr>
        </table>
      </div>
        <div class="TITULS">
          <h1>TITOLS ACADEMICS</h1>
          <table>
          <xsl:for-each select="portfolio/education/degree">
          <tr>
            <td class="grau">Grau</td>
            <td class="grau"><xsl:value-of select="grau"/></td>
          </tr>
          <tr>
            <td>Especialitat</td>
            <td><xsl:value-of select="especialitzacio"/></td>
          </tr>
          <tr>
            <td>Centre</td>
            <td><xsl:value-of select="school"/></td>
          </tr>
          <tr>
            <td>Any</td>
            <td><xsl:value-of select="year"/></td>
          </tr>
          </xsl:for-each>
          </table>
        </div>
        <div class="HABILITATS">
          <h1>HABILITATS</h1>
          <h2>IDIOMES</h2>
          <table>
          <xsl:for-each select="portfolio/idiomes">
          <tr>
            <td><xsl:value-of select="idioma"/></td>
            <td><xsl:value-of select="nivell"/></td>
          </tr>
          </xsl:for-each>
          </table>
          <h2>CONEIXEMENTS INFORMÀTICS</h2>
          <table>
          <xsl:for-each select="portfolio/coneixements/llenguatges/programacio">
           <tr>
            <td><xsl:value-of select="nom"/></td>
            <td><xsl:value-of select="nivell"/></td>
          </tr>
          </xsl:for-each>
          <xsl:for-each select="portfolio/coneixements/llenguatges/marques">
           <tr>
            <td><xsl:value-of select="nom"/></td>
            <td><xsl:value-of select="nivell"/></td>
          </tr>
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
