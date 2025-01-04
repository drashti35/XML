<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr>
						<td bgcolor="blue">Title</td>
						<td bgcolor="blue">Price</td>
					</tr>
					<xsl:for-each select="Library/Book">
						<xsl:sort select="price" order="descending"/>
						<tr>
							<td><xsl:value-of select="title"/></td>
							<td><xsl:value-of select="price"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>