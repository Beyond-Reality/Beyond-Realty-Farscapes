<!--
ATLauncher Configs.xml Sorter
Author: Léa Gris @ Beyond Reality Team https://github.com/Beyond-Reality
Date: 2017-05-04
Version: 1.0.1
License: http://www.wtfpl.net/

Example usage:
  xsltproc ATLSort.xsl Configs.xml > SortedConfigs.xml
  saxon-xslt Configs.xml ATLSort.xsl > SortedConfigs.xml
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:date="http://exslt.org/dates-and-times"
  xmlns:saxon="http://saxon.sf.net/"
  extension-element-prefixes="date">

  <xsl:output method="xml" indent="yes" saxon:indent="yes" saxon:indent-spaces="4" omit-xml-declaration="yes" cdata-section-elements="install update warning"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="comment()[contains(., 'ATLSort')]"/>

  <xsl:template match="/">
    <xsl:comment>
Sorted on: <xsl:value-of select="date:date-time()"/>
With: ATLSort.xsl
From: Beyond Reality Team https://github.com/Beyond-Reality
Author: Léa Gris<xsl:text>&#10;</xsl:text>
    </xsl:comment>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="mods">
    <xsl:copy>
      <xsl:text>&#10;&#10;      </xsl:text>
      <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="mod[@type='forge' or @type='mcpc']/@name"/><xsl:text> </xsl:text></xsl:comment>
      <xsl:text>&#10;</xsl:text>
      <xsl:apply-templates select="mod[@type='forge' or @type='mcpc']"/>
      <xsl:variable name="nmods" select="count(mod[@type='mods' or @type='jar' or @type='flan'])"/>
      <xsl:if test="$nmods &gt; 0">
        <xsl:text>&#10;&#10;      </xsl:text>
        <xsl:comment> Mods </xsl:comment>
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="mod[@type='mods' or @type='jar' or @type='flan']">
          <xsl:sort select="@name"/>
        </xsl:apply-templates>
      </xsl:if>

      <xsl:variable name="nplugins" select="count(mod[@type='plugins'])"/>  
      <xsl:if test="$nplugins &gt; 0">
        <xsl:text>&#10;&#10;      </xsl:text>
        <xsl:comment> Plugins </xsl:comment>
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="mod[@type='plugins']">
          <xsl:sort select="@name"/>
        </xsl:apply-templates>
        <xsl:text>&#10;&#10;</xsl:text>
      </xsl:if>

      <xsl:variable name="nresources" select="count(mod[@type='resourcepack' or @type='extract' or @type='decomp'])"/>
      <xsl:if test="$nresources &gt; 0">
        <xsl:text>&#10;&#10;      </xsl:text>
        <xsl:comment> Resources </xsl:comment>
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="mod[@type='resourcepack' or @type='extract' or @type='decomp']">
          <xsl:sort select="@name"/>
        </xsl:apply-templates>
      </xsl:if>

      <xsl:variable name="ncore" select="count(mod[@type='dependency' or @type='coremods' or @type='denlib' or @type='ic2lib'])"/>
      <xsl:if test="$ncore &gt; 0">
        <xsl:text>&#10;&#10;      </xsl:text>
        <xsl:comment> Dependency / Core Mods </xsl:comment>
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="mod[@type='dependency' or @type='coremods' or @type='denlib' or @type='ic2lib']">
          <xsl:sort select="@name"/>
        </xsl:apply-templates>
      </xsl:if>

      <xsl:variable name="ncommented" select="count(comment()[contains(., 'name=')])"/>
      <xsl:if test="$ncommented &gt; 0">
        <xsl:text>&#10;&#10;      </xsl:text>
        <xsl:comment> Disabled Mods </xsl:comment>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:comment>
          <xsl:text>&#10;</xsl:text>
          <xsl:for-each select="comment()[contains(., 'name=')]">
            <xsl:value-of disable-output-escaping="yes" select="."/>
          </xsl:for-each>
        </xsl:comment>
      </xsl:if>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
