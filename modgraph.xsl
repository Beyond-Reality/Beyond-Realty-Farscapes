<?xml version="1.1"?>
<!--
ATLauncher Configs.xml grapher
Author: Léa Gris @ Beyond Reality Team https://github.com/Beyond-Reality
Date: 2017-05-29
Version: 1.0.0
License: http://www.wtfpl.net/

Example usage:
  xsltproc modgraph.xsl Configs.xml > graph.svg
  saxon-xslt Configs.xml modgraph.xsl > graph.svg
-->
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/2000/svg"
    >
  <xsl:output
      method="xml"
      indent="yes"
      standalone="no"
      doctype-public="-//W3C//DTD SVG 1.1//EN"
      doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"
      media-type="image/svg"/>

  <xsl:key name="mods-by-colour" match="/version/mods/mod" use="@colour"/>

  <xsl:template match="*">
    <xsl:apply-templates select="mods"/>
  </xsl:template>

  <xsl:template match="mods">
    <svg xmlns="http://www.w3.org/2000/svg" width="3248" height="1008">

    <xsl:for-each select="mod[count(. | key('mods-by-colour', @colour)[1]) = 1]">
      <xsl:sort select="@colour"/>

      <xsl:variable name="colourname" select="@colour"/>
      <xsl:variable name="dx" select="position() - 1"/>
      <xsl:variable name="colourcode" select="/version/colours/colour[@name=$colourname]/@code"/>

      <g name="{$colourname}" transform="translate({10+ $dx * 216}, 10)">
        <text x="104" y="16" font-size="16px" font-weight="bold" text-anchor="middle" dy="-.4em"><xsl:value-of select="@colour"/></text>  

        <xsl:for-each select="key('mods-by-colour', @colour)">
          <xsl:sort select="@name"/>
          <xsl:variable name="dy" select="position() - 1"/>
          <g transform="translate(0,{32 + $dy * 24})">
            <rect x="0" y="0" width="208" 
            height="16" fill="{$colourcode}" stroke="black"/>
            <text x="104" y="16" font-size="12px" text-anchor="middle" dy="-.4em"><xsl:value-of select="@name"/></text>  
          </g>
        </xsl:for-each>
      </g>
    </xsl:for-each>

    </svg>
  </xsl:template>

</xsl:stylesheet>
