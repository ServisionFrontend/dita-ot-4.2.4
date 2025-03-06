<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    <!-- 覆盖region-body属性集，设置页面边距 -->
    <!-- 60px ≈ 45pt, 55px ≈ 41.25pt -->
    <!-- 覆盖奇数页边距设置 -->
    <xsl:attribute-set name="region-body.odd">
        <xsl:attribute name="margin-top">45pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖偶数页边距设置 -->
    <xsl:attribute-set name="region-body.even">
        <xsl:attribute name="margin-top">45pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖前言奇数页边距设置 -->
    <xsl:attribute-set name="region-body__frontmatter.odd">
        <xsl:attribute name="margin-top">45pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖前言偶数页边距设置 -->
    <xsl:attribute-set name="region-body__frontmatter.even">
        <xsl:attribute name="margin-top">45pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖目录奇数页边距设置 -->
    <xsl:attribute-set name="region-body__toc.odd">
        <xsl:attribute name="margin-top">45pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖目录偶数页边距设置 -->
    <xsl:attribute-set name="region-body__toc.even">
        <xsl:attribute name="margin-top">45pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖索引奇数页边距设置 -->
    <xsl:attribute-set name="region-body__index.odd">
        <xsl:attribute name="margin-top">45pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
        <xsl:attribute name="column-count">2</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖索引偶数页边距设置 -->
    <xsl:attribute-set name="region-body__index.even">
        <xsl:attribute name="margin-top">45pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
        <xsl:attribute name="column-count">2</xsl:attribute>
    </xsl:attribute-set>
</xsl:stylesheet>