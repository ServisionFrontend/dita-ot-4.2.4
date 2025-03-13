<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    <!-- 重写页脚模板 -->
    <xsl:template name="insertBodyOddFooter">
        <fo:static-content flow-name="odd-body-footer">
            <fo:block margin-left="41.25pt" margin-right="41.25pt" margin-bottom="20pt">
                <!-- 添加下划线 -->
                <fo:block>
                    <fo:leader leader-pattern="rule" 
                              leader-length="100%" 
                              rule-thickness="1pt" 
                              color="black"/>
                </fo:block>
            </fo:block>
        </fo:static-content>
    </xsl:template>
    <!-- 重写偶数页页脚模板 -->
    <xsl:template name="insertBodyEvenFooter">
        <fo:static-content flow-name="even-body-footer">
            <fo:block margin-left="41.25pt" margin-right="41.25pt" margin-bottom="20pt">
                <!-- 添加下划线 -->
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