<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="message" select="'plain'"/>
    <!-- messaging style: 'silent', 'plain', or 'prefixed' -->
    <xsl:template name="message">
        <xsl:param name="level" select="'fatal'"/>
        <!-- message level: 'warning', 'error', or 'fatal' -->
        <xsl:param name="text" select="'no text given'"/>
        <xsl:choose>
            <xsl:when test="$message = 'silent'"/>
            <xsl:when test="$level = 'warning'">
                <xsl:call-template name="print_message">
                    <xsl:with-param name="level" select="'warning'"/>
                    <xsl:with-param name="terminate" select="'no'"/>
                    <xsl:with-param name="text" select="$text"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$level = 'error'">
                <xsl:call-template name="print_message">
                    <xsl:with-param name="level" select="'error'"/>
                    <xsl:with-param name="terminate" select="'no'"/>
                    <xsl:with-param name="text" select="$text"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$level = 'fatal'">
                <xsl:call-template name="print_message">
                    <xsl:with-param name="level" select="'fatal'"/>
                    <xsl:with-param name="terminate" select="'yes'"/>
                    <xsl:with-param name="text" select="$text"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="print_message">
                    <xsl:with-param name="level" select="'fatal'"/>
                    <xsl:with-param name="terminate" select="'no'"/>
                    <xsl:with-param name="text" select="concat('fatal:unknown level for message [', $text, ']')"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="print_message">
        <!-- this template should never be called from outside; for printing messages, call the "message" template. -->
        <xsl:param name="level"/>
        <xsl:param name="terminate"/>
        <xsl:param name="text"/>
        <xsl:choose>
            <xsl:when test="$message = 'plain'">
                <xsl:message terminate="{$terminate}">
                    <xsl:value-of select="$text"/>
                </xsl:message>
            </xsl:when>
            <xsl:otherwise>
                <xsl:message terminate="{$terminate}">
                    <xsl:value-of select="concat($level, ':', $text)"/>
                </xsl:message>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>