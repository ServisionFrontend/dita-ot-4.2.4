<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fox="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    <!-- 导入基础模板 -->
    <xsl:import href="plugin:org.dita.pdf2:xsl/fo/topic.xsl"/>
    <!-- 声明变量 -->
    <xsl:param name="artworkPrefix"/>
    <xsl:param name="input.dir.url"/>
    <xsl:param name="WORKDIR"/>
    <xsl:param name="OUTPUTDIR"/>
    <xsl:param name="BASEDIR"/>
    <xsl:param name="TEMPDIR"/>
    <xsl:param name="artwork.dir"/>
    <!-- 添加key定义 -->
    <xsl:key name="jobFile" match="file" use="@uri"/>
    <!-- 重写图片处理模板 -->
    <xsl:template match="*[contains(@class,' topic/image ')]">
        <xsl:variable name="image-path" select="substring-after(@href, '../')"/>
        <xsl:variable name="image-url" select="key('jobFile', @href, $job)/@src"/>
        <fo:block xsl:use-attribute-sets="image__block" margin-left="0" padding-left="0" start-indent="0pt" text-align="center">
            <xsl:message>
                ===== Image Information =====
                Image URL:
                <xsl:value-of select="$image-url"/>
                Intrinsic Size:
                width:
                <xsl:value-of select="document($image-url)/*/@width"/>
                height:
                <xsl:value-of select="document($image-url)/*/@height"/>
                viewBox:
                <xsl:value-of select="document($image-url)/*/@viewBox"/>
                ===========================
            </xsl:message>
            <fo:external-graphic src="url({$image-url})"
                content-width="scale-to-fit"
                content-height="scale-to-fit"
                scaling="uniform"
                fox:alt-text=""
                width="auto"
                height="auto"
                max-height="22cm">
                <xsl:if test="@scale">
                    <xsl:attribute name="content-width">
                        <xsl:value-of select="concat(@scale, '%')"/>
                    </xsl:attribute>
                </xsl:if>
            </fo:external-graphic>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>