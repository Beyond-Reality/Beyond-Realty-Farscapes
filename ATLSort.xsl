<!--
ATLauncher Configs.xml Sorter
Author: Léa Gris @ Beyond Reality Team https://github.com/Beyond-Reality
Date: 2017-05-03
Version: 0.0.1
License: http://www.wtfpl.net/

Example usage:
  xsltproc ATLSort.xsl Configs.xml > SortedConfigs.xml
  saxon-xslt Configs.xml ATLSort.xsl > SortedConfigs.xml
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" cdata-section-elements="install update warning" />
  <xsl:strip-space elements="*"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/">
    <xsl:comment>
Sorted by: ATLSort.xsl
From: Beyond Reality Team https://github.com/Beyond-Reality
Author: Léa Gris
</xsl:comment>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="mods">
    <xsl:copy>
      <xsl:text>&#10;</xsl:text>
      <xsl:comment>
      Minecraft Forge
</xsl:comment>
      <xsl:apply-templates select="mod[@type='forge']"/>
      <xsl:text>&#10;</xsl:text>
      <xsl:comment>
      Sorted Mods
</xsl:comment>
      <xsl:apply-templates select="mod[@type='mods']">
        <xsl:sort select="@name"/>
      </xsl:apply-templates>
      <xsl:text>&#10;</xsl:text>
      <xsl:comment>
      Sorted Dependency / Core Mods
</xsl:comment>
      <xsl:apply-templates select="mod[@type='dependency']">
        <xsl:sort select="@name"/>
      </xsl:apply-templates>
      <xsl:text>&#10;</xsl:text>
      <xsl:comment>
      Commented-out Mods
</xsl:comment>
      <xsl:text>&#10;</xsl:text>
      <xsl:apply-templates select="comment()[contains(., 'name=')]">
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/comment()">
    <xsl:value-of select="text()"/>
  </xsl:template>

</xsl:stylesheet>
