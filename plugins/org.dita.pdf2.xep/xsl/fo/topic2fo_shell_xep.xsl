<?xml version="1.0" encoding="UTF-8"?><!--
This file is part of the DITA Open Toolkit project.

Copyright 2011 Jarno Elovirta

See the accompanying LICENSE file for applicable license.
--><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  
  <xsl:import href="plugin:org.dita.pdf2:xsl/fo/topic2fo.xsl"/>

  <xsl:import href="plugin:org.dita.pdf2.xep:cfg/fo/attrs/commons-attr_xep.xsl"/>
  <xsl:import href="plugin:org.dita.pdf2.xep:cfg/fo/attrs/layout-masters-attr_xep.xsl"/>
  <xsl:import href="plugin:org.dita.pdf2.xep:xsl/fo/root-processing_xep.xsl"/>
  <xsl:import href="plugin:org.dita.pdf2.xep:cfg/fo/attrs/index-attr_xep.xsl"/>
  <xsl:import href="plugin:org.dita.pdf2.xep:xsl/fo/index_xep.xsl"/>
  <xsl:import href="plugin:org.dita.pdf2.xep:xsl/fo/topic_xep.xsl"/>

  <xsl:import xmlns:dita="http://dita-ot.sourceforge.net" href="plugin:org.lwdita:xsl/linebreak2fo.xsl"/><xsl:import href="plugin:sv.dita.pdf2-avatr-service-manual:cfg/fo/attrs/toc-attr.xsl"/><xsl:import href="plugin:sv.dita.pdf2-avatr-service-manual:cfg/fo/attrs/base-attr.xsl"/><xsl:import href="plugin:sv.dita.pdf2-avatr-service-manual:cfg/fo/xsl/page-image.xsl"/><xsl:import href="plugin:sv.dita.pdf2-avatr-service-manual:cfg/fo/xsl/page-cover.xsl"/><xsl:import href="plugin:sv.dita.pdf2-avatr-service-manual:cfg/fo/xsl/page-toc.xsl"/><xsl:import href="plugin:sv.dita.pdf2-avatr-service-manual:cfg/fo/xsl/page-setting.xsl"/><xsl:import href="plugin:sv.dita.pdf2-avatr-service-manual:cfg/fo/xsl/page-header.xsl"/><xsl:import href="plugin:sv.dita.pdf2-avatr-service-manual:cfg/fo/xsl/page-footer.xsl"/>

  <xsl:import href="cfg:fo/attrs/custom.xsl"/>
  <xsl:import href="cfg:fo/xsl/custom.xsl"/>
  
</xsl:stylesheet>