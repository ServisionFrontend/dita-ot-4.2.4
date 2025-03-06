<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0">
    <!-- 导入基础设置 -->
    <xsl:import href="plugin:org.dita.pdf2:xsl/fo/commons.xsl"/>
    <!-- 我们不能在commonTopicProcessing模式中添加marker，因为它会在错误的位置添加marker -->
    <!-- 相反，我们需要重写处理章节的模板 -->
    <!-- 重写topic模板，在适当的位置添加章节编号标记 -->
    <xsl:template match="*[contains(@class, ' topic/topic ')]">
        <fo:block xsl:use-attribute-sets="topic">
            <!-- 在这里添加章节编号标记，确保它在fo:block内容之前 -->
            <xsl:if test="empty(ancestor::*[contains(@class, ' topic/topic ')])">
                <fo:marker marker-class-name="current-chapter-number">
                    <xsl:variable name="topicref" 
                        select="key('map-id', @id)[1]" 
                        as="element()?"/>
                    <xsl:for-each select="$topicref">
                        <!-- 获取章节编号 -->
                        <xsl:variable name="chapterNum">
                            <xsl:choose>
                                <!-- 如果是章节，使用章节编号 -->
                                <xsl:when test="contains(@class, ' bookmap/chapter ') or 
                                               ancestor::*[contains(@class, ' bookmap/chapter ')]">
                                    <xsl:number count="*[contains(@class, ' bookmap/chapter ')]" 
                                               level="any" format="1"/>
                                </xsl:when>
                                <!-- 如果是附录，使用附录编号 -->
                                <xsl:when test="contains(@class, ' bookmap/appendix ') or 
                                               ancestor::*[contains(@class, ' bookmap/appendix ')]">
                                    <xsl:number count="*[contains(@class, ' bookmap/appendix ')]" 
                                               level="any" format="A"/>
                                </xsl:when>
                                <!-- 其他情况使用序号 -->
                                <xsl:otherwise>
                                    <xsl:number count="*[contains(@class, ' map/topicref ')]" 
                                               level="multiple" format="1"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <xsl:value-of select="$chapterNum"/>
                    </xsl:for-each>
                </fo:marker>
            </xsl:if>
            <!-- 继续处理原始内容 -->
            <xsl:apply-templates select="." mode="commonTopicProcessing"/>
            <xsl:apply-templates select="*[contains(@class, ' topic/topic ')]"/>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>