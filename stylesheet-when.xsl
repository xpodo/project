<?xml version="1.0"?>

<!--
    Document   : stylesheet.xsl
    Author     : dpodo
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/save_hry">
        <xsl:for-each select="profil">
            {
            "Hrac":"<xsl:value-of select="jmeno_savu"/>",
            "Hacknute pocitace s aktivnimi viry":
            <xsl:for-each select="hacked_ips/slave">
                <xsl:choose>
                <xsl:when test="@assigned!=''">
                    "Jmeno":"<xsl:value-of select="@name"/>", "IP":"<xsl:value-of select="@ip"/>", "Aktivni virus":"<xsl:value-of select="@assigned"/>",
                </xsl:when>
                </xsl:choose>
            </xsl:for-each>
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>