<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0">
    <!-- 导入基础设置 -->
    <xsl:import href="plugin:org.dita.pdf2:xsl/fo/static-content.xsl"/>
    <xsl:import href="plugin:org.dita.pdf2:cfg/fo/attrs/static-content-attr.xsl"/>
    <!-- 声明参数 -->
    <xsl:param name="plugin.dir.pdf2-nio-user-manual"/>
    <xsl:param name="artwork.dir"/>
    <!-- 处理章节的模板 -->
    <xsl:template match="*[contains(@class, ' topic/topic ')]">
        <!-- 在每个主题开始时设置章节编号标记 -->
        <fo:block>
            <!-- 设置章节编号标记 -->
            <fo:marker marker-class-name="current-chapter-number">
                <xsl:choose>
                    <xsl:when test="@outputclass">
                        <xsl:value-of select="@outputclass"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:number count="*[contains(@class, ' topic/topic ') and not(ancestor::*[contains(@class, ' topic/topic ')])]" format="1" level="any"/>
                    </xsl:otherwise>
                </xsl:choose>
            </fo:marker>
            <!-- 设置标题标记 -->
            <fo:marker marker-class-name="current-header">
                <xsl:value-of select="*[contains(@class, ' topic/title ')][1]"/>
            </fo:marker>
            <!-- 处理内容 -->
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    <!-- 重写页眉规则模板 -->
    <xsl:template name="insertBodyOddHeader">
        <fo:static-content flow-name="odd-body-header">
            <!-- 设置页眉高度为50px，并使用与页面相同的边距 -->
            <fo:block height="50px" 
                     display-align="after"
                     margin-left="41.25pt" 
                     margin-right="41.25pt">
                <fo:table width="100%" border-collapse="separate" display-align="after">
                    <fo:table-column column-width="80%"/>
                    <fo:table-column column-width="20%"/>
                    <fo:table-body>
                        <fo:table-row height="45px" display-align="after">
                            <!-- 左侧：一级目录标题，垂直居下 -->
                            <fo:table-cell>
                                <fo:block text-align="left" font-weight="bold"  start-indent="0pt" text-indent="0pt">
                                    <fo:retrieve-marker retrieve-class-name="current-header"/>
                                </fo:block>
                            </fo:table-cell>
                            <!-- 右侧：页码格式 "章节-页码"，垂直居下 -->
                            <fo:table-cell>
                                <fo:block text-align="right" font-weight="bold"  end-indent="0pt" text-indent="0pt">
                                    <fo:inline>
                                        <fo:page-number/>
                                    </fo:inline>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
                <!-- 添加1像素的线条 -->
                <fo:block>
                    <fo:leader leader-pattern="rule" 
                              leader-length="100%" 
                              rule-thickness="1pt" 
                              color="black"/>
                </fo:block>
            </fo:block>
            <!-- 添加水印 -->
            <fo:block-container absolute-position="absolute" top="0cm" left="0cm" width="25cm" height="29.7cm" background-image="{concat('file:/',$artwork.dir, '/watermark.png')}"  z-index="999" >
                <fo:block/>
            </fo:block-container>
        </fo:static-content>
    </xsl:template>
    <!-- 重用相同的模板用于偶数页 -->
    <xsl:template name="insertBodyEvenHeader">
        <fo:static-content flow-name="even-body-header">
            <!-- 设置页眉高度为50px，并使用与页面相同的边距 -->
            <fo:block height="50px" 
                     display-align="after"
                     margin-left="{$page-margin-outside}" 
                     margin-right="{$page-margin-inside}">
                <fo:table width="100%" border-collapse="separate" display-align="after">
                    <fo:table-column column-width="50%"/>
                    <fo:table-column column-width="50%"/>
                    <fo:table-body>
                        <fo:table-row height="45px" display-align="after">
                            <!-- 左侧：一级目录标题，垂直居下 -->
                            <fo:table-cell display-align="after" border="1pt solid black" padding="5pt">
                                <fo:block text-align="left" font-weight="bold" start-indent="0pt" text-indent="0pt">
                                    <fo:retrieve-marker retrieve-class-name="current-header"/>
                                </fo:block>
                            </fo:table-cell>
                            <!-- 右侧：页码格式 "章节-页码"，垂直居下 -->
                            <fo:table-cell text-align="right" display-align="after">
                                <fo:block>
                                    <fo:inline>
                                        <fo:retrieve-marker retrieve-class-name="current-chapter-number"/>
                                        <xsl:text>-</xsl:text>
                                        <fo:page-number/>
                                    </fo:inline>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
                <!-- 添加1像素的线条 -->
                <fo:block>
                    <fo:leader leader-pattern="rule" 
                              leader-length="100%" 
                              rule-thickness="1pt" 
                              color="black"/>
                </fo:block>
            </fo:block>
        </fo:static-content>
    </xsl:template>
</xsl:stylesheet>