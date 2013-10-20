<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Address List</title>
			</head>
			<body>
				<ul>
					<xsl:for-each select="/people/entry">
						<li>
							<xsl:value-of select="concat(name/given[1], ' ', name/sur, ': ')"/>
							<xsl:apply-templates select="*[local-name() != 'name']"/>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="email">
		<a href="mailto:{.}" title="{.}">✉</a>
		<xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="phone">
		<a href="tel:{.}" title="{@location}/{@type}:{.}">☎</a>
		<xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="affiliation"/>
</xsl:stylesheet>