<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    <!-- 设置目录标题样式 -->
    <xsl:attribute-set name="__toc__header">
        <xsl:attribute name="text-align">center</xsl:attribute>
        <xsl:attribute name="font-family">AlibabaPuHuiTi</xsl:attribute>
        <xsl:attribute name="font-size">18pt</xsl:attribute>
        <xsl:attribute name="font-weight">700</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖默认的目录标题模板 -->
    <xsl:template name="createTocHeader">
        <fo:block xsl:use-attribute-sets="__toc__header" id="{$id.toc}" span="all">
            <xsl:apply-templates select="." mode="customTopicAnchor"/>
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'Index'"/>
            </xsl:call-template>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>