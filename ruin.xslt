<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head><script src="https://code.jquery.com/jquery-3.4.1.min.js"></script></head>
      <body>
        <h1>The Ruin</h1>
        <table>
          <xsl:apply-templates select="node()"/>
          <!-- <xsl:for-each select="poem/l"> -->
          <!--   <p>              -->
          <!--     <xsl:apply-templates select="node()"/> -->
          <!--   </p> -->
          <!-- </xsl:for-each> -->
        </table>

        <script src="script.js"></script>
      </body>
      
    </html>
  </xsl:template>

  <xsl:template match="poem">
    <table>
      <xsl:apply-templates select="node()"/>
    </table>  
  </xsl:template>
  

  <xsl:template match="l">
    <tr>
      <td style="padding-right:10px; color:gray">
        <xsl:value-of select="@n"/>
      </td>
      <td style="color:white;">
        <xsl:apply-templates select="node()"/>
      </td>
    </tr>
  </xsl:template>
  
  <xsl:template match="concrete-noun">
    <strong style="color:black;">
      <xsl:apply-templates select="node()"/>
    </strong>  
  </xsl:template>

  <xsl:template match="adjective">
    <span style="color:green">
      <xsl:apply-templates select="node()"/>
    </span>
  </xsl:template>

  <xsl:template match="hyperbole">
    <span style="background-color: rgba(250,20,20,0.3)">
      <xsl:apply-templates select="node()"/>
    </span>
  </xsl:template>

  <xsl:template match="hard-word">
    <a style="background-color: rgba(20, 250, 20, 0.4)" href="{concat('https://www-oed-com.myaccess.library.utoronto.ca/search?q=', node())}">
      <xsl:apply-templates select="node()"/>
    </a>
  </xsl:template>

    <xsl:template match="synonym">
    <span class="synonym" style="color:red;">
      <xsl:apply-templates select="node()"/>
    </span>
  </xsl:template>

</xsl:stylesheet> 
