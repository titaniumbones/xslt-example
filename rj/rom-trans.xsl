<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                >
                <!-- xmlns="http://www.w3.org/1999/xhtml" -->
                <!-- xmlns:tei="http://www.tei-c.org/ns/1.0" -->

  <!-- <xsl:strip-space elements=""/> -->

<xsl:template match="teiHeader">
</xsl:template>
  
  
  <xsl:template match="text">
    <html>
      <head><script src="https://code.jquery.com/jquery-3.4.1.min.js"></script></head>
      <body>
        <h1>Romeo and Juliet, Scene 2</h1>
        <xsl:apply-templates select="front"/>
        <xsl:apply-templates select="body"/>
          <script src="script.js"></script>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="castList">
    <h2>Cast</h2>
        <xsl:apply-templates select="./castGroup"/>
   
  </xsl:template>

  <xsl:template match="castGroup">
        <xsl:if test="descendant::head">
          <xsl:value-of select="descendant::head"/>
        </xsl:if>
    
        <ul>
    <xsl:for-each select="castItem">
      <xsl:if test="descendant::name">
        <li><xsl:value-of select="descendant::name"/>
        <xsl:if test="descendant::roleDesc">
          : <xsl:value-of select="descendant::roleDesc"/>
        </xsl:if>
        </li>       
      </xsl:if>
    </xsl:for-each>
    </ul>
    <hr/>
  </xsl:template>
  

  <xsl:template match="body">
    <xsl:apply-templates select="div[@type = 'act']"  />
  </xsl:template>

  <xsl:template match="div[@type = 'act']">
    <xsl:apply-templates select="node()"/>
  </xsl:template>

  <xsl:template match="div[@type = 'scene']">
    <div style="padding-left: 30px; border: 2px solid black; margin:15px;">
      <xsl:apply-templates select="node()"/>
    </div>
  </xsl:template>

  <xsl:template match="head">
    <h3><xsl:value-of select="."/></h3>
  </xsl:template>

  <xsl:template match="stage">
    <p class="stage"><em><xsl:value-of select="."/></em></p>
  </xsl:template>

  <xsl:template match="sp">
    <p style="padding-left:20px;"><strong><xsl:value-of select="descendant::speaker"/></strong>
    <xsl:apply-templates select="l | p"/>
    </p>
  </xsl:template>
  
  <xsl:template match="l | p">
      <!-- <em>Talking </em> -->
      <div style="padding-left:1-px;background-color: gray;"><xsl:apply-templates select="node()"/></div>
  </xsl:template>

  <xsl:template match="w | c ">
      <span style="background-color:x;"><xsl:apply-templates select="node()"/></span>
  </xsl:template>

  <xsl:template match="w[@ana = '#n1'] ">
      <span style="font-weight:700;color:red;"><xsl:apply-templates select="node()"/></span>
  </xsl:template>


</xsl:stylesheet> 



