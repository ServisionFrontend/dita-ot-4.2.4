<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    <!-- 自定义一级标题样式 -->
    <xsl:attribute-set name="topic.title">
        <xsl:attribute name="border-after-width">0pt</xsl:attribute>
        <xsl:attribute name="space-before">8pt</xsl:attribute>
        <xsl:attribute name="space-after">8pt</xsl:attribute>
        <xsl:attribute name="font-size">18pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="padding-top">0pt</xsl:attribute>
        <xsl:attribute name="margin-left">23pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>
    <!-- 自定义二级标题样式 -->
    <xsl:attribute-set name="topic.topic.title">
        <xsl:attribute name="border-after-width">0pt</xsl:attribute>
        <xsl:attribute name="space-before">8pt</xsl:attribute>
        <xsl:attribute name="space-after">8pt</xsl:attribute>
        <xsl:attribute name="font-size">14pt</xsl:attribute>
        <xsl:attribute name="padding-top">0pt</xsl:attribute>
        <xsl:attribute name="margin-left">25pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>
    <!-- 自定义三级标题样式 -->
    <xsl:attribute-set name="topic.topic.topic.title">
        <xsl:attribute name="border-after-width">0pt</xsl:attribute>
        <xsl:attribute name="space-before">8pt</xsl:attribute>
        <xsl:attribute name="space-after">8pt</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="padding-top">0pt</xsl:attribute>
        <xsl:attribute name="margin-left">25pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>
    <!-- 自定义四级标题样式 -->
    <xsl:attribute-set name="topic.topic.topic.topic.title">
        <xsl:attribute name="space-before">8pt</xsl:attribute>
        <xsl:attribute name="space-after">8pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 图片容器样式 -->
    <xsl:attribute-set name="image__block">
        <xsl:attribute name="margin">0</xsl:attribute>
        <xsl:attribute name="start-indent">25pt</xsl:attribute>
        <xsl:attribute name="end-indent">0pt</xsl:attribute>
        <xsl:attribute name="text-align">start</xsl:attribute>
    </xsl:attribute-set>
</xsl:stylesheet>