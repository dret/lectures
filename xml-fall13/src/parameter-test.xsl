<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:param name="number" select="0"/>
	<xsl:variable name="number-param">
		<xsl:if test="string(number($number)) = 'NaN'">
			<xsl:message terminate="yes">"number" must be a proper number!</xsl:message>
		</xsl:if>
		<xsl:value-of select="$number"/>
	</xsl:variable>
	<xsl:template match="/">
		<xsl:value-of select="10 * $number-param"/>
	</xsl:template>
</xsl:stylesheet>