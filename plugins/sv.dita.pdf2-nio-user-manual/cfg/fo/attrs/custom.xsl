<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    <!-- 修改所有正文文本为红色 -->
    <xsl:attribute-set name="common.block">
        <xsl:attribute name="color">#FF0000</xsl:attribute>
    </xsl:attribute-set>
    <!-- 修改标题文本为红色 -->
    <xsl:attribute-set name="common.title">
        <xsl:attribute name="color">#FF0000</xsl:attribute>
    </xsl:attribute-set>
    <!-- 修改链接文本为红色 -->
    <xsl:attribute-set name="common.link">
        <xsl:attribute name="color">#FF0000</xsl:attribute>
    </xsl:attribute-set>
    <!-- 导入基础属性文件 -->
    <xsl:import href="plugin:org.dita.pdf2:cfg/fo/attrs/basic-settings.xsl"/>
    <!-- 定义自定义变量 -->
    <xsl:param name="custom.artwork.dir"/>
</xsl:stylesheet>