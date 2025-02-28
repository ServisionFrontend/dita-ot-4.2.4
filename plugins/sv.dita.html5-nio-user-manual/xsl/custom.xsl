<!-- <?xml version="1.0" encoding="UTF-8"?> -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:ditamsg="http://dita-ot.sourceforge.net/ns/200704/ditamsg"
                version="2.0"
                exclude-result-prefixes="xs dita-ot ditamsg">
    <!-- 导入HTML5基础模板 -->
    <!-- <xsl:import href="plugin:org.dita.html5:xsl/dita2html5.xsl"/> -->
    <!-- 自定义标题处理 -->
    <xsl:template match="*[contains(@class,' topic/title ')]">
        <xsl:variable name="depth" select="count(ancestor::*[contains(@class,' topic/topic ')])"/>
        <xsl:element name="h{$depth}">
            <xsl:attribute name="class">custom-title depth-
                <xsl:value-of select="$depth"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <!-- 自定义注释处理 -->
    <xsl:template match="*[contains(@class,' topic/note ')]">
        <div>
            <xsl:attribute name="class">
                <xsl:text>note </xsl:text>
                <xsl:value-of select="@type"/>
            </xsl:attribute>
            <xsl:if test="@type='warning'">
                <span class="warning-icon">⚠</span>
            </xsl:if>
            <xsl:if test="@type='note'">
                <span class="note-icon">ℹ</span>
            </xsl:if>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <!-- 自定义代码块处理 -->
    <xsl:template match="*[contains(@class,' pr-d/codeblock ')]">
        <pre class="codeblock">
            <code>
                <xsl:if test="@outputclass">
                    <xsl:attribute name="class">
                        <xsl:value-of select="@outputclass"/>
                    </xsl:attribute>
                </xsl:if>
                <xsl:apply-templates/>
            </code>
        </pre>
    </xsl:template>
    <!-- 自定义表格处理 -->
    <xsl:template match="*[contains(@class,' topic/table ')]">
        <div class="table-container">
            <table>
                <xsl:if test="@outputclass">
                    <xsl:attribute name="class">
                        <xsl:value-of select="@outputclass"/>
                    </xsl:attribute>
                </xsl:if>
                <xsl:apply-templates/>
            </table>
        </div>
    </xsl:template>
    <!-- 自定义图片处理 -->
    <xsl:template match="*[contains(@class,' topic/image ')]">
        <figure class="image-container">
            <img>
                <xsl:copy-of select="@src|@alt|@height|@width"/>
                <xsl:if test="@scale">
                    <xsl:attribute name="style">
                        <xsl:value-of select="concat('width:', @scale, '%')"/>
                    </xsl:attribute>
                </xsl:if>
            </img>
            <xsl:if test="*[contains(@class,' topic/title ')]">
                <figcaption>
                    <xsl:apply-templates select="*[contains(@class,' topic/title ')]"/>
                </figcaption>
            </xsl:if>
        </figure>
    </xsl:template>
</xsl:stylesheet>