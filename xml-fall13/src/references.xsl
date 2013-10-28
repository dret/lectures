<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:myns="not:important">
	<xsl:template match="/">
		<xsl:for-each select="//reference">
			<xsl:result-document method="xhtml" href="reference/{@name}.html">
				<html>
					<head>
						<title><xsl:value-of select="title"/></title>
						<link rel="stylesheet" type="text/css" href="../reference.css"/>
					</head>
					<body>
						<div class="navigation">
							<a href="{ if ( position() ne 1 ) then preceding-sibling::reference[1]/@name else following-sibling::reference[last()]/@name }.html">Previous</a> |
							<a href="../reference-list.html">Index</a> |
							<a href="{ if ( position() ne last() ) then following-sibling::reference[1]/@name else preceding-sibling::reference[last()]/@name }.html">Next</a>
						</div>
						<h2><xsl:value-of select="title"/></h2>
						<xsl:apply-templates select="names[@type='author']/*"/>
						<h4><a href="../reference-list.html#year{substring(date/@value, 1, 4)}"><xsl:value-of select="myns:format-date(date/@value)"/></a></h4>
						<xsl:if test="abstract">
							<div class="abstract"><xsl:copy-of select="abstract/richtext/*"/></div>
						</xsl:if>
					</body>
				</html>
			</xsl:result-document>
		</xsl:for-each>
		<xsl:result-document method="xhtml" href="reference-list.html">
			<html>
				<head>
					<title>Reference List</title>
					<link rel="stylesheet" type="text/css" href="reference.css"/>
				</head>
				<body>
					<h2>Reference List</h2>
					<xsl:for-each-group select="//reference" group-by="substring(date/@value, 1, 4)">
						<xsl:sort select="current-grouping-key()"/>
						<h5 id="year{current-grouping-key()}"><xsl:value-of select="current-grouping-key()"/></h5>
						<ul>
							<xsl:for-each select="current-group()">
								<li><a href="reference/{@name}.html"><xsl:value-of select="title"/></a></li>
							</xsl:for-each>
						</ul>
					</xsl:for-each-group>
				</body>
			</html>
		</xsl:result-document>
	</xsl:template>
	<xsl:template match="person">
		<h3><xsl:value-of select="givenname | surname"/></h3>
	</xsl:template>
	<xsl:template match="name">
		<h3><xsl:value-of select="."/></h3>
	</xsl:template>
	<xsl:function name="myns:format-date">
		<xsl:param name="date"/>
		<xsl:value-of select="if ( $date castable as xs:date ) then format-date(xs:date($date), '[MNn] [D], [Y]') else if ( $date castable as xs:gYearMonth ) then format-date(xs:date(concat($date, '-01')), '[MNn] [Y]') else $date"/>
	</xsl:function>
</xsl:stylesheet>