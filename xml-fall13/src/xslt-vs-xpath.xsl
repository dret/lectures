<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	
		<xsl:for-each select=".//a">
			<xsl:if test="not(@title)">
				<xsl:text>This link has no title!</xsl:text>
			</xsl:if>
		</xsl:for-each>

		<xsl:for-each select=".//a[not(@title)]">
			<xsl:text>This link has no title!</xsl:text>
		</xsl:for-each>
	
	</xsl:template>
</xsl:stylesheet>