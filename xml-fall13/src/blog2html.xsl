<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<table border="1" cellpadding="20">
					<xsl:for-each select="//post">
						<tr>
							<td><a href="../img/{image/@src}.jpg"><img src="../img/{image/@src}-small.jpg"/></a></td>
							<td>
								<h2><xsl:value-of select="format-date(@date, '[F] [MNn] [D], [Y]')"/>: <xsl:value-of select="title"/></h2>
								<p><xsl:value-of select="text"/></p>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>