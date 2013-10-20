<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:variable name="name" select="'value'"/>
	<xsl:template match="/">
		<xsl:variable name="result">
			<xsl:choose>
				<xsl:when test="$name = 'value'">
					<xsl:value-of select="'ok'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="'problem'"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:value-of select="$result"/>
	</xsl:template>
</xsl:stylesheet>