<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                >
                <!-- xmlns="http://www.w3.org/1999/xhtml" -->
                <!-- xmlns:tei="http://www.tei-c.org/ns/1.0" -->

  <xsl:strip-space elements="l  p"/>

<xsl:template match="teiHeader">
</xsl:template>
  
  
  <xsl:template match="text">
    <html>
      <head>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <style>
          html {
    font-size: 20px;
}
body {
    max-width: 80vw;
    margin: auto;
    position: relative;
}

body>nav {
    position:sticky;
    top: 0;
    border-bottom: 4px black solid;
    background-color: darkred;
    height: 100px;
    width: 100%;
    text-align: center;
}

div.scene {
    padding-left: 30px;
    border: 2px solid black;
    margin:15px;}

div.act {
}

.speaker {
    padding-left:20px;
}

.line span {
    background-color: rgba(180,180,180, 0.5);

}

.notshown {
     color: rgb(180,180,180, 0.1);
}

.noun {
    color: rgb(140,90,90);
    font-weight: 700;
}

        </style>
      </head>
      <body>
        <nav>
          <h1>Romeo and Juliet, Scene 2</h1>
        </nav>
        <div class="header">
          <xsl:apply-templates select="front"/>
        </div>
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
    <main>
      <xsl:apply-templates select="div[@type = 'act']"  />
    </main>
  </xsl:template>

  <xsl:template match="div[@type = 'act']">
    <div class="act">
      <xsl:apply-templates select="node()"/>
    </div>
  </xsl:template>

  <xsl:template match="div[@type = 'scene']">
    <div class="scene" >
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
    <p class="speaker"><strong><xsl:value-of select="descendant::speaker"/></strong>
    <xsl:apply-templates select="l | p"/>
    </p>
  </xsl:template>
  
  <xsl:template match="l | p">
     <!-- <em>Talking </em> -->
     <!--  -->
    <div class="line">
      <xsl:for-each select="node()">
        <!-- <xsl:sort select="position()" data-type="number" order="descending"/> -->
        <xsl:apply-templates select="."/>
    </xsl:for-each>
    </div>
  </xsl:template>

  <xsl:template match="w | pc ">
      <span class="notshown"><xsl:apply-templates select="node()"/></span>
  </xsl:template>

    <xsl:template match="c"><span class="notshown">&#160;<xsl:apply-templates select="node()"/></span></xsl:template>


  <xsl:template match="w[@ana = '#n1' or @ana = '#n2'] ">
      <span class="noun"><xsl:apply-templates select="node()"/></span>
  </xsl:template>


</xsl:stylesheet> 



