<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:param name="start" select="1"/>
	<xsl:param name="count" select="10"/>
	<xsl:template match="/">
		<xsl:call-template name="loop">
			<xsl:with-param name="counter" select="0"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="loop">
		<xsl:param name="counter"/>
		<xsl:message>
			<xsl:value-of select="$start + $counter"/>
		</xsl:message>
		<xsl:if test="$counter &lt; $count - 1">
			<xsl:call-template name="loop">
				<xsl:with-param name="counter" select="$counter + 1"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>