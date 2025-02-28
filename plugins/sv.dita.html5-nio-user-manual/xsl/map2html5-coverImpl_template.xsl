<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                version="3.0">
    <!-- Import the standard HTML5 cover processing -->
    <xsl:import href="plugin:org.dita.html5:xsl/map2html5-cover.xsl"/>
    <!-- Import our custom cover processing -->
    <xsl:import href="cover.xsl"/>
    <!-- Use all default processing from the imported stylesheets -->
    <xsl:template match="/">
        <xsl:apply-imports/>
    </xsl:template>
</xsl:stylesheet>