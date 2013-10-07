<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Address List</title>
			</head>
			<body>
				<table>
					<xsl:for-each select="/people/entry">
						<tr>
							<td><xsl:value-of select="name/given[1]"/></td>
							<td><xsl:value-of select="name/sur"/></td>
							<td><a href="mailto:{email}"><xsl:value-of select="email"/></a></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>