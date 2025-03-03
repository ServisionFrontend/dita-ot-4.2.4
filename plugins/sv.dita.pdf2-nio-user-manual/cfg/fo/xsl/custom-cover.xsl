<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    <!-- 覆盖默认的封面模板 -->
    <xsl:template name="createFrontMatter">
        <fo:page-sequence master-reference="front-matter" format="i" force-page-count="no-force">
            <fo:flow flow-name="xsl-region-body">
                <!-- 创建一个居中的容器 -->
                <fo:block text-align="center"                          
                         height="297mm"
                         margin="0mm"
                         position="relative">
                    <!-- 添加封面图片 -->
                    <fo:block>
                        <fo:external-graphic src="url(file:///{concat($artwork.dir, '/cover.jpg')})"
                               content-width="scale-to-fit"
                               content-height="scale-to-fit"
                               width="260mm"
                               height="217mm"
                               scaling="uniform"/>
                    </fo:block>
                    <!-- 添加标题文字 - 使用绝对定位 -->
                    <fo:block-container absolute-position="absolute"
                                      top="80mm"
                                      left="0"
                                      width="100%"
                                      z-index="2">
                        <fo:block font-size="24pt" 
                                 font-family="Arial"
                                 color="#000000">Avatr series</fo:block>
                    </fo:block-container>
                </fo:block>
            </fo:flow>
        </fo:page-sequence>
    </xsl:template>
</xsl:stylesheet>