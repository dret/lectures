<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xpath-default-namespace="http://www.w3.org/1999/xhtml">
	<xsl:variable name="date-picture" select="'[FNn], [MNn] [D1o], [Y]'"/>
	<xsl:template match="/">
		<xsl:result-document href="{resolve-uri('index.shtml', base-uri(/))}" method="xml" encoding="UTF-8" indent="yes">
			<xsl:message>
				<xsl:value-of select="'index.shtml'"/>
			</xsl:message>
			<html>
				<head>
					<title>
						<xsl:text>Assignments: </xsl:text>
						<xsl:value-of select="/assignments/course/node()"/>
					</title>
					<link rel="home" href=".." title="Internet of Things Spring 2015"/>
					<link rel="glossary" href="http://dret.net/glossary/" />
					<link rel="author" href="http://dret.net/netdret/" title="Erik Wilde"/>
					<link rel="stylesheet" type="text/css" href="{/assignments/assignment-css-uri/text()}"/>
					<link rel="icon" href="/favicon.ico" type="image/x-icon"/>
					<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
				</head>
				<body>
					<div class="header">
						<h1 class="center">
							<xsl:text>Assignments: </xsl:text>
							<a href="{/assignments/course/@link}">
								<xsl:value-of select="/assignments/course/node()"/>
							</a>
						</h1>
						<h4 class="center">
							<xsl:copy-of select="/assignments/html-author-block/node()"/>
						</h4>
					</div>
					<div style="margin : 5mm">
						<table rules="all" cellspacing="0" cellpadding="5" width="100%">
							<thead>
								<tr>
									<th>#</th>
									<th>Title</th>
									<th>Assigned</th>
									<th>Due</th>
									<th>Description</th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="/assignments/assignment">
									<tr>
										<td style="font-size : x-large ; ">
											<xsl:value-of select="position()"/>
										</td>
										<td valign="top">
											<a href="{position()}/">
												<xsl:copy-of select="title/node()"/>
											</a>
										</td>
										<td valign="top">
											<xsl:value-of select="format-date(dates/@assigned, $date-picture)"/>
										</td>
										<td valign="top">
											<xsl:value-of select="format-date(dates/@due, $date-picture)"/>
										</td>
										<td valign="top">
											<xsl:copy-of select="abstract/node()"/>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</div>
					<xsl:comment>#include virtual="foot.shtml" </xsl:comment>
				</body>
			</html>
		</xsl:result-document>
		<xsl:for-each select="/assignments/assignment">
			<xsl:result-document href="{resolve-uri(concat(position(), '/index.shtml'), base-uri(/))}" method="xhtml" encoding="UTF-8" indent="yes">
				<xsl:message>
					<xsl:value-of select="concat(position(), '/index.shtml')"/>
				</xsl:message>
				<html>
					<head>
						<title>
							<xsl:value-of select="title"/>
							<xsl:text> &#151;  Assignment </xsl:text>
							<xsl:value-of select="position()"/>
							<xsl:text> &#151; </xsl:text>
							<xsl:value-of select="/assignments/course/text()"/>
						</title>
						<link rel="home" href="../" title="Assignment Overview"/>
						<link rel="stylesheet" type="text/css" href="../{/assignments/assignment-css-uri/text()}"/>
						<link rel="icon" href="/favicon.ico" type="image/x-icon"/>
						<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
						<xsl:variable name="next" select="following-sibling::assignment[1]"/>
						<xsl:if test="exists($next)">
							<link rel="next" href="../{ position() + 1 }/" title="Assignment { position() + 1 }"/>
						</xsl:if>
						<xsl:variable name="last" select="following-sibling::assignment[last()]"/>
						<xsl:if test="exists($last)">
							<link rel="last" href="../{ last() }/" title="Assignment { last() }"/>
						</xsl:if>
						<xsl:variable name="prev" select="preceding-sibling::assignment[1]"/>
						<xsl:if test="exists($prev)">
							<link rel="prev" href="/{ position()  - 1 }/" title="Assignment { position() - 1 }"/>
						</xsl:if>
						<link rel="start" href="../1/" title="Assignment 1"/>
						<link rel="first" href="../1/" title="Assignment 1"/>
					</head>
					<body>
						<div class="header">
							<h1>
								<xsl:value-of select="title"/>
							</h1>
							<h2>
								<a href="../">Assignment</a>
								<xsl:text> </xsl:text>
								<xsl:value-of select="position()"/>
								<xsl:text> &#151; </xsl:text>
								<a href="../{/assignments/course/@link}">
									<xsl:value-of select="/assignments/course/text()"/>
								</a>
							</h2>
							<h3>
								<xsl:text>Assigned: </xsl:text>
								<xsl:value-of select="format-date(dates/@assigned, $date-picture)"/>
								<br/>
								<xsl:text>Due: </xsl:text>
								<xsl:value-of select="format-date(dates/@due, $date-picture)"/>
							</h3>
						</div>
						<table style="margin : 5mm" border="0" cellpadding="5mm">
							<tr>
								<th valign="top" align="right"><h3>Introduction:</h3></th>
								<td valign="top">
									<xsl:copy-of select="abstract/node()"/>
								</td>
							</tr>
							<xsl:if test="exists(resource)">
								<tr>
									<th valign="top" align="right">
										<h3><xsl:value-of select="concat('Resource', if ( count(resource) gt 1 ) then 's' else '', ':')"/></h3>
									</th>
									<td valign="top">
										<xsl:for-each select="resource">
											<a href="{@uri}">
												<xsl:choose>
													<xsl:when test="string(.) ne ''">
														<xsl:copy-of select="node()"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="@uri"/>
													</xsl:otherwise>
												</xsl:choose>
											</a>
											<xsl:if test="not(position() eq last())">
												<br/>
											</xsl:if>
										</xsl:for-each>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="exists(answers)">
								<tr>
									<th valign="top" align="right">
										<h3><xsl:value-of select="concat('Answer', if ( count(answers) gt 1 ) then 's' else '', ':')"/></h3>
									</th>
									<td valign="top">
										<xsl:for-each select="answers">
											<a href="{@uri}">
												<xsl:choose>
													<xsl:when test="string(.) ne ''">
														<xsl:copy-of select="node()"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="@uri"/>
													</xsl:otherwise>
												</xsl:choose>
											</a>
											<xsl:if test="not(position() eq last())">
												<br/>
											</xsl:if>
										</xsl:for-each>
									</td>
								</tr>
							</xsl:if>
							<tr>
								<th valign="top" align="right"><h3>Instructions:</h3></th>
								<td>
									<xsl:copy-of select="instructions/node()"/>
								</td>
							</tr>
							<xsl:if test="exists(extracredit)">
								<tr>
									<th valign="top" align="right"><h3>Extra&#160;Credit:</h3></th>
									<td>
										<xsl:copy-of select="extracredit/node()"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="exists(hints)">
								<tr>
									<th valign="top" align="right"><h3>Hints:</h3></th>
									<td>
										<xsl:copy-of select="hints/node()"/>
									</td>
								</tr>
							</xsl:if>
						</table>
						<xsl:copy-of select="/assignments/html-footer/node()"/>
					</body>
				</html>
			</xsl:result-document>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
