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
    <!-- 重写页眉规则模板 -->
    <xsl:template name="insertBodyOddHeader">
        <!-- 添加调试信息 -->
        <xsl:message>
            <xsl:text>Debug - plugin.dir: </xsl:text>
            <xsl:value-of select="concat($artwork.dir, '/logo.svg')"/>
            <xsl:text> ***END**** </xsl:text>
        </xsl:message>
        <fo:static-content flow-name="odd-body-header">
            <fo:block>
                <fo:table width="100%" border-collapse="separate">
                    <fo:table-column column-width="50%"/>
                    <fo:table-column column-width="50%"/>
                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block>
                                    <fo:retrieve-marker retrieve-class-name="current-header"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right">
                                <fo:block>
                                    <fo:external-graphic 
                                        src="file:///{$artwork.dir}/logo.svg"
                                        content-height="24px"
                                        content-width="24px"
                                        scaling="uniform"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </fo:block>
        </fo:static-content>
    </xsl:template>
    <!-- 重用相同的模板用于偶数页 -->
    <xsl:template name="insertBodyEvenHeader">
        <fo:static-content flow-name="even-body-header">
            <xsl:call-template name="insertBodyOddHeader"/>
        </fo:static-content>
    </xsl:template>
</xsl:stylesheet>