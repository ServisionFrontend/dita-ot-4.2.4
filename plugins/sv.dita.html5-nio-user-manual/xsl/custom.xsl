<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    <!-- 处理图片，添加容器并保持原有路径 -->
    <xsl:template match="*[contains(@class, ' topic/image ')]">
        <div class="image-container">
            <img>
                <xsl:copy-of select="@*[not(name()='href')]"/>
                <xsl:attribute name="src">
                    <xsl:value-of select="@href"/>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
</xsl:stylesheet>