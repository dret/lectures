<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:key name="givenNameKey" match="name" use="given"/>
	<xsl:key name="affiliationKey" match="affiliation" use="."/>
	<xsl:key name="countryKey" match="entry | affiliation" use="@country"/>
	<xsl:template match="/">
		<!-- iterate over all unique countries (not having an identical preceding value). -->
		<xsl:for-each select="//@country[not(. = ../preceding::*/@country)]">
			<!-- sort lexically by country. -->
			<xsl:sort select="."/>
			<xsl:value-of select="concat(., ':&#xa;')"/>
			<!-- iterate over all nodes using this country value. -->
			<xsl:for-each select="key('countryKey', .)">
				<!-- print the normalized string value of the current node (entry or affiliation). -->
				<xsl:value-of select="concat(normalize-space(.), '&#xa;')"/>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>