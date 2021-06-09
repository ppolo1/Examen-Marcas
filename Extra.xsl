<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h3>En esta página se hablará de lo que es el Anime, de donde viene la palabra, y muchas cosas más</h3>
  <p></p>
  <table border="10">
    <tr>
      <caption></caption>
      <th style="text-align:left">Mangas</th>
      <th style="text-align:left">Link</th>
    </tr>
    <xsl:for-each select="otaku/mangas/manga">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="link"/></td>
    </tr>
    </xsl:for-each>
  </table>
  <br />
  <table border="10">
    <tr>
      <caption></caption>
      <th style="text-align:left">Webtoons</th>
      <th style="text-align:left">Link</th>
    </tr>
    <xsl:for-each select="otaku/webtoons/webtoon">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="link"/></td>
    </tr>
    </xsl:for-each>
  </table>
  <br />
  <table border="10">
    <tr>
      <caption></caption>
      <th style="text-align:left">Animes</th>
      <th style="text-align:left">Link</th>
    </tr>
    <xsl:for-each select="otaku/animes/anime">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="link"/></td>
    </tr>
    </xsl:for-each>
  </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>

<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output omit-xml-declaration="yes" indent="yes"/> 
<xsl:strip-space elements="*"/> 

<xsl:template match="node()|@*"> 
    <xsl:copy> 
    <xsl:apply-templates select="node()|@*"/> 
    </xsl:copy> 
</xsl:template> 

<xsl:template match="link"> 
    <a href="{@url}"><xsl:apply-templates/></a> 
</xsl:template> 
</xsl:stylesheet>