<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
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
        <fo:block xsl:use-attribute-sets="image__block" 
                  text-align="center">
            <fo:external-graphic src="url({key('jobFile', @href, $job)/@src})"
                content-width="scale-to-fit"
                content-height="scale-to-fit"
                width="auto"
                max-width="100%"
                scaling="uniform">
                <xsl:if test="@scale">
                    <xsl:attribute name="content-width">
                        <xsl:value-of select="concat(@scale, '%')"/>
                    </xsl:attribute>
                </xsl:if>
            </fo:external-graphic>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>