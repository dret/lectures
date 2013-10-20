<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:variable name="name" select="'value'"/>
	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="$name = 'value'">
				<xsl:variable name="result" select="'ok'"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="result" select="'problem'"/>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:value-of select="$result"/>
	</xsl:template>
</xsl:stylesheet>