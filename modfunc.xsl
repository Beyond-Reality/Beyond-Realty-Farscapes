<?xml version="1.0" encoding="UTF-8"?>
<!--
ATLauncher XML to functional mod list CSV
Author: Léa Gris
Date: 2017-05-29
Version: 0.1.0
License: http://www.wtfpl.net/

Example usage:
  xsltproc modlist.xsl ATLauncherModpack.xml > modlist.md
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:functx="http://www.functx.com"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="1.0">

  <xsl:strip-space elements="*"/>
  <xsl:output method="text" />

  <xsl:template name="tokenize">
    <xsl:param name="csv" />
    <xsl:variable name="first-item" select="normalize-space( substring-before( concat( $csv, ','), ','))" />
    <xsl:variable name="hasnext" select="contains( normalize-space($csv),',' )" />
    <xsl:choose>
      <xsl:when test="$first-item">
        <xsl:value-of select="$first-item" />
        <xsl:if test="$hasnext">
          <xsl:text><![CDATA[<br/>]]></xsl:text>
        </xsl:if>
        <xsl:call-template name="tokenize">
          <xsl:with-param name="csv" select="substring-after($csv,',')" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="*">
    <xsl:apply-templates select="mods"/>
  </xsl:template>

  <xsl:template match="/version/mods">
    <xsl:text>"Mod Name", "Mod function"&#xa;</xsl:text>
    <xsl:apply-templates select="mod">
      <xsl:sort select="@name"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="mod">
    <xsl:text>"</xsl:text>
    <xsl:value-of select="@name"/>
    <xsl:text>", "</xsl:text>
    <xsl:value-of select="@colour"/>
    <xsl:text>"&#xa;</xsl:text>
  </xsl:template>

</xsl:stylesheet>
