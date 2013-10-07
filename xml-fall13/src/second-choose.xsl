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
							<td>
								<xsl:if test="email">
									<td><a href="mailto:{email}"><xsl:value-of select="email"/></a></td>
								</xsl:if>
							</td>
							<td>
								<xsl:for-each select="phone">
									<xsl:text>☎ (</xsl:text>
									<xsl:choose>
										<xsl:when test="@location = 'office'">Office</xsl:when>
										<xsl:when test="@location = 'home'">Home</xsl:when>
									</xsl:choose>
									<xsl:text> </xsl:text>
									<xsl:choose>
										<xsl:when test="@type = 'voice'">phone</xsl:when>
										<xsl:when test="@type = 'fax'">fax</xsl:when>
									</xsl:choose>
									<xsl:text>): </xsl:text>
									<xsl:value-of select="."/>
									<xsl:if test="position() ne last()">
										<br/>
									</xsl:if>
								</xsl:for-each>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>