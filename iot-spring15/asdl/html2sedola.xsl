<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms https://github.com/dret/sedola XMLs into github-friendly markdown. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="service">
        <asdl>
            <!-- Test if the ADSL is starting with an <h1>. -->
            <xsl:if test="local-name(*[1]) eq 'h1'">
                <!-- If there is an initial <h1>, create a <title> element (borrowed from Sedola). -->
                <title>
                    <xsl:value-of select="*[1]/text()"/>
                </title>
                <!-- Test if the ADSL title is followed by anything other that <h2>. -->
                <xsl:if test="local-name(*[2]) ne 'h2'">
                    <!-- If there is something between the initial <h1> and the first <h2>, <documentation> is required. -->
                    <documentation>
                        <!-- Test if the ADSL title is followed by an <h4> (a link). -->
                        <xsl:if test="local-name(*[2]) eq 'h4'">
                            <xsl:attribute name="href" select="*[2]/text()"/>
                        </xsl:if>
                        <!-- Process everything between the initial <h1>/<h4>, and the first <h2>. -->
                        <xsl:apply-templates select="*[count(preceding-sibling::h2) = 0][not(local-name() = ('h1','h2','h3','h4'))]"/>
                    </documentation>
                </xsl:if>
            </xsl:if>
            <!-- Group the ADSL document by groups starting with <h2> (the basic ADSL concepts). -->
            <xsl:for-each-group select="*" group-starting-with="h2">
                <xsl:variable name="index" select="index-of(('verbs','object types','object properties'), normalize-space(lower-case(self::h2/text())))"/>
                <xsl:if test="$index gt 0">
                    <xsl:for-each-group select="current-group()[position() gt 1]" group-starting-with="h3">
                        <xsl:element name="{('as-verb','as-object-type','as-object-property')[$index]}">
                            <xsl:attribute name="def" select="self::h3/text()"/>
                            <documentation>
                                <xsl:if test="self::*[2]/local-name() eq 'h4'">
                                    <xsl:attribute name="href" select="self::*[2]/text()"/>
                                </xsl:if>
                                <xsl:apply-templates select="current-group()[position() gt 2]"/>
                            </documentation>
                        </xsl:element>
                    </xsl:for-each-group>
                </xsl:if>
            </xsl:for-each-group>
        </asdl>
    </xsl:template>
    <!-- Markdown wraps paragraph-level code segments (contained in ''') in <p><code>, which does not render well in browsers. This template maps them to <pre>. -->
    <xsl:template match="p[count(*) eq 1 and local-name(*) eq 'code']">
        <pre>
            <xsl:apply-templates select="code/node()"/>
        </pre>
    </xsl:template>
    <!-- The identity transform for all nodes not explicitly matches above. -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>