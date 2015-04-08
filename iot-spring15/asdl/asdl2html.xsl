<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms ADSL service documents into HTML. It MD-derived HTML as input, and Sedola XML as intermediate processing step. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="xhtml" indent="yes" encoding="UTF-8"/>
    <xsl:include href="html2sedola.xsl"/>
    <xsl:template match="services">
        <xsl:variable name="asdl-set">
            <asdl-set>
                <xsl:apply-templates select="service"/>
            </asdl-set>
        </xsl:variable>
        <xsl:apply-templates select="$asdl-set"/>
    </xsl:template>
    <xsl:template match="asdl-set">
        <xsl:variable name="document" select="."/>
        <html>
            <h1>Index</h1>
            <xsl:for-each select="('Verbs','Object Types','Object Properties')">
                <h2>
                    <xsl:value-of select="."/>
                </h2>
                <p>
                    <xsl:variable name="current-position" select="position()"/>
                    <xsl:for-each select="$document//*[local-name() eq ('as-verb','as-object-type','as-object-property')[$current-position]]">
                        <a href="">
                            <xsl:value-of select="@def"/>
                            <xsl:if test="position() ne last()">
                                <xsl:text>&#160;· </xsl:text>
                            </xsl:if>
                        </a>
                    </xsl:for-each>
                </p>
            </xsl:for-each>
        </html>
    </xsl:template>
</xsl:stylesheet>