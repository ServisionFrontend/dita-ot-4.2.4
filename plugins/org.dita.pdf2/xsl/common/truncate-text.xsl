<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
    version="3.0">
    <!-- 截断文本的函数，添加省略号 -->
    <xsl:function name="dita-ot:truncate-string" as="xs:string">
        <xsl:param name="input-string" as="xs:string"/>
        <xsl:param name="max-length" as="xs:integer"/>
        <xsl:choose>
            <xsl:when test="string-length($input-string) &gt; $max-length">
                <xsl:value-of select="concat(substring($input-string, 1, $max-length), '...')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$input-string"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>
</xsl:stylesheet>