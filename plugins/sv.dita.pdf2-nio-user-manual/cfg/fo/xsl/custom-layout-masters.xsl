<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    <!-- 覆盖region-body属性集，设置页面边距 -->
    <!-- 60px ≈ 45pt, 55px ≈ 41.25pt -->
    <!-- 覆盖奇数页边距设置 -->
    <xsl:attribute-set name="region-body.odd">
        <xsl:attribute name="margin-top">65pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖偶数页边距设置 -->
    <xsl:attribute-set name="region-body.even">
        <xsl:attribute name="margin-top">65pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖前言奇数页边距设置 -->
    <xsl:attribute-set name="region-body__frontmatter.odd">
        <xsl:attribute name="margin-top">25pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖前言偶数页边距设置 -->
    <xsl:attribute-set name="region-body__frontmatter.even">
        <xsl:attribute name="margin-top">25pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖目录奇数页边距设置 -->
    <xsl:attribute-set name="region-body__toc.odd">
        <xsl:attribute name="margin-top">25pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖目录偶数页边距设置 -->
    <xsl:attribute-set name="region-body__toc.even">
        <xsl:attribute name="margin-top">25pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖索引奇数页边距设置 -->
    <xsl:attribute-set name="region-body__index.odd">
        <xsl:attribute name="margin-top">25pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
        <xsl:attribute name="column-count">2</xsl:attribute>
    </xsl:attribute-set>
    <!-- 覆盖索引偶数页边距设置 -->
    <xsl:attribute-set name="region-body__index.even">
        <xsl:attribute name="margin-top">25pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">45pt</xsl:attribute>
        <xsl:attribute name="margin-left">41.25pt</xsl:attribute>
        <xsl:attribute name="margin-right">41.25pt</xsl:attribute>
        <xsl:attribute name="column-count">2</xsl:attribute>
    </xsl:attribute-set>
    <!-- 表格样式设置 -->
    <!-- 基础表格样式 -->
    <xsl:attribute-set name="__table">
        <xsl:attribute name="border-collapse">collapse</xsl:attribute>
        <xsl:attribute name="width">100%</xsl:attribute>
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
        <xsl:attribute name="table-layout">fixed</xsl:attribute>
    </xsl:attribute-set>
    <!-- 表格边框样式 -->
    <xsl:attribute-set name="table.tgroup">
        <xsl:attribute name="border-style">solid</xsl:attribute>
        <xsl:attribute name="border-width">1pt</xsl:attribute>
        <xsl:attribute name="border-color">black</xsl:attribute>
    </xsl:attribute-set>
    <!-- 表格单元格样式 -->
    <xsl:attribute-set name="tbody.row.entry">
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
        <xsl:attribute name="padding">5pt</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
        <xsl:attribute name="hyphenate">false</xsl:attribute>
        <xsl:attribute name="white-space">normal</xsl:attribute>
        <xsl:attribute name="line-height">1.2</xsl:attribute>
    </xsl:attribute-set>
    <!-- 表头单元格样式 -->
    <xsl:attribute-set name="thead.row.entry">
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
        <xsl:attribute name="padding">5pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="background-color">#f0f0f0</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
        <xsl:attribute name="hyphenate">false</xsl:attribute>
        <xsl:attribute name="white-space">normal</xsl:attribute>
        <xsl:attribute name="line-height">1.2</xsl:attribute>
    </xsl:attribute-set>
    <!-- CALS表格单元格样式 -->
    <xsl:attribute-set name="entry">
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
        <xsl:attribute name="padding">5pt</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
        <xsl:attribute name="hyphenate">false</xsl:attribute>
        <xsl:attribute name="white-space">normal</xsl:attribute>
        <xsl:attribute name="line-height">1.2</xsl:attribute>
    </xsl:attribute-set>
    <!-- 表格框架样式 -->
    <xsl:attribute-set name="table__tableframe">
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
    </xsl:attribute-set>
    <!-- 处理表格标题 -->
    <xsl:template match="*[contains(@class, ' topic/table ')]/*[contains(@class, ' topic/title ')]">
        <xsl:if test="normalize-space(.) != 'Table.title'">
            <fo:block xsl:use-attribute-sets="table.title">
                <xsl:apply-templates/>
            </fo:block>
        </xsl:if>
    </xsl:template>
    <!-- 表格标题样式 -->
    <xsl:attribute-set name="table.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="padding-top">5pt</xsl:attribute>
        <xsl:attribute name="padding-bottom">5pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>
    <!-- 增加页眉区域高度设置 -->
    <xsl:attribute-set name="region-before">
        <xsl:attribute name="extent">85pt</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>
    <!-- 添加列宽控制 -->
    <xsl:template match="*[contains(@class, ' topic/colspec ')]">
        <fo:table-column>
            <xsl:choose>
                <xsl:when test="@colwidth">
                    <xsl:attribute name="column-width">
                        <xsl:choose>
                            <xsl:when test="contains(@colwidth, '*')">
                                <xsl:value-of select="concat('proportional-column-width(', substring-before(@colwidth, '*'), ')')"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="@colwidth"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="column-width">proportional-column-width(1)</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
        </fo:table-column>
    </xsl:template>
    <!-- 处理表格单元格内容，在逗号和下划线后添加换行机会 -->
    <xsl:template match="*[contains(@class, ' topic/entry ')]//text()">
        <!-- 首先处理逗号分隔 -->
        <xsl:variable name="after-comma">
            <xsl:analyze-string select="." regex="([^,]+),">
                <xsl:matching-substring>
                    <xsl:value-of select="regex-group(1)"/>
                    <xsl:text>,</xsl:text>
                    <xsl:text>&#x200B;</xsl:text>
                </xsl:matching-substring>
                <xsl:non-matching-substring>
                    <xsl:value-of select="."/>
                </xsl:non-matching-substring>
            </xsl:analyze-string>
        </xsl:variable>
        <!-- 然后处理下划线分隔 -->
        <xsl:analyze-string select="$after-comma" regex="([^_]+)_">
            <xsl:matching-substring>
                <xsl:value-of select="regex-group(1)"/>
                <xsl:text>_</xsl:text>
                <xsl:text>&#x200B;</xsl:text>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <xsl:value-of select="."/>
            </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
</xsl:stylesheet>