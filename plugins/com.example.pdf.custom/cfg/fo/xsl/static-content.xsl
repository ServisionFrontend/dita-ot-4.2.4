<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0">
    <!-- 导入 a.xsl -->
    <xsl:import href="../attrs/custom.xsl"/>
    <!-- 重写页眉规则模板 -->
    <xsl:template name="insertBodyOddHeader">
        <fo:static-content flow-name="odd-body-header">
            <!-- 添加调试信息 -->
            <xsl:message>
                <xsl:text>Debug - Current XSLT file: </xsl:text>
                <xsl:value-of select="$current-uri"/>
            </xsl:message>
            <fo:block>
                <fo:table width="100%">
                    <fo:table-column column-width="50%"/>
                    <fo:table-column column-width="50%"/>
                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block font-size="10pt" font-weight="bold">
                                    <xsl:value-of 
                                        select="string-join(
                                                $map//*[contains(@class,' topic/title ')][1]//text(), 
                                                '')"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block text-align="right">
                                    <fo:external-graphic width="20px" height="20px" src="url('file:///{$artwork.dir}/cfg/fo/artwork/b.png')" content-height="20pt"  scaling="uniform" content-width="scale-to-fit"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
                <fo:block>
                    <fo:leader leader-pattern="rule"
                               leader-length="100%"
                               rule-thickness="0.5pt"
                               rule-style="solid"
                               color="#000000"/>
                </fo:block>
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