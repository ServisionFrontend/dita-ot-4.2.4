<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    <!-- 正文文本样式 -->
    <xsl:attribute-set name="common.block">
        <xsl:attribute name="color">#FF0000</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 一级标题样式 -->
    <xsl:attribute-set name="topic.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-size">24pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="color">#FF0000</xsl:attribute>
        <xsl:attribute name="space-before">0pt</xsl:attribute>
        <xsl:attribute name="space-after">16pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 二级标题样式 -->
    <xsl:attribute-set name="topic.topic.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-size">20pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="color">#FF0000</xsl:attribute>
        <xsl:attribute name="space-before">15pt</xsl:attribute>
        <xsl:attribute name="space-after">12pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 三级标题样式 -->
    <xsl:attribute-set name="topic.topic.topic.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-size">16pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="color">#FF0000</xsl:attribute>
        <xsl:attribute name="space-before">12pt</xsl:attribute>
        <xsl:attribute name="space-after">8pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 四级标题样式 -->
    <xsl:attribute-set name="topic.topic.topic.topic.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-size">14pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="color">#FF0000</xsl:attribute>
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="space-after">6pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 段落样式 -->
    <xsl:attribute-set name="p">
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="color">#FF0000</xsl:attribute>
        <xsl:attribute name="space-before">6pt</xsl:attribute>
        <xsl:attribute name="space-after">6pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 列表项样式 -->
    <xsl:attribute-set name="li">
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="color">#FF0000</xsl:attribute>
        <xsl:attribute name="space-after">3pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 表格单元格样式 -->
    <xsl:attribute-set name="thead.row.entry">
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="color">#FF0000</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="tbody.row.entry">
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="color">#FF0000</xsl:attribute>
    </xsl:attribute-set>
</xsl:stylesheet>