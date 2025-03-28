<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="3.0">
    <!-- Override the default maximum TOC level (usually 3) to show 6 levels -->
    <xsl:variable name="tocMaximumLevel" select="6"/>
    <!-- Custom styles for TOC entries at different levels -->
    <xsl:attribute-set name="__toc__topic__content">
        <xsl:attribute name="margin-left">
            <xsl:variable name="level" select="count(ancestor-or-self::*[contains(@class, ' topic/topic ')])"/>
            <xsl:value-of select="concat(string(($level - 1) * 15), 'px')"/>
        </xsl:attribute>
        <xsl:attribute name="margin-right">10px</xsl:attribute>
        <xsl:attribute name="text-align">start</xsl:attribute>
        <xsl:attribute name="text-align-last">justify</xsl:attribute>
        <xsl:attribute name="overflow">hidden</xsl:attribute>
        <xsl:attribute name="white-space">nowrap</xsl:attribute>
        <xsl:attribute name="font-size">
            <xsl:variable name="level" select="count(ancestor-or-self::*[contains(@class, ' topic/topic ')])"/>
            <xsl:choose>
                <xsl:when test="$level = 1">14pt</xsl:when>
                <xsl:when test="$level = 2">12pt</xsl:when>
                <xsl:when test="$level = 3">11pt</xsl:when>
                <xsl:when test="$level = 4">10pt</xsl:when>
                <xsl:when test="$level = 5">10pt</xsl:when>
                <xsl:when test="$level = 6">9pt</xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$default-font-size"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
        <xsl:attribute name="font-weight">
            <xsl:variable name="level" select="count(ancestor-or-self::*[contains(@class, ' topic/topic ')])"/>
            <xsl:choose>
                <xsl:when test="$level = 1">bold</xsl:when>
                <xsl:when test="$level = 2">bold</xsl:when>
                <xsl:otherwise>normal</xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:attribute-set>
    <!-- Override the TOC link properties to limit width -->
    <xsl:attribute-set name="__toc__link">
        <xsl:attribute name="line-height">150%</xsl:attribute>
        <xsl:attribute name="width">70%</xsl:attribute>
    </xsl:attribute-set>
    <!-- Customize the title portion of TOC to enable truncation -->
    <xsl:attribute-set name="__toc__title">
        <xsl:attribute name="end-indent" select="'14pt'"/>
        <xsl:attribute name="keep-together.within-line">always</xsl:attribute>
        <xsl:attribute name="wrap-option">no-wrap</xsl:attribute>
    </xsl:attribute-set>
    <!-- Remove the complex indentation settings -->
    <xsl:attribute-set name="__toc__indent">
        <xsl:attribute name="margin-left">20px</xsl:attribute>
        <xsl:attribute name="margin-right">20px</xsl:attribute>
    </xsl:attribute-set>
    <!-- Override the region body margins for TOC pages -->
    <xsl:attribute-set name="region-body.odd">
        <xsl:attribute name="margin-top">20px</xsl:attribute>
        <xsl:attribute name="margin-bottom">20px</xsl:attribute>
        <xsl:attribute name="margin-left">20px</xsl:attribute>
        <xsl:attribute name="margin-right">20px</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="region-body.even">
        <xsl:attribute name="margin-top">20px</xsl:attribute>
        <xsl:attribute name="margin-bottom">20px</xsl:attribute>
        <xsl:attribute name="margin-left">20px</xsl:attribute>
        <xsl:attribute name="margin-right">20px</xsl:attribute>
    </xsl:attribute-set>
</xsl:stylesheet>