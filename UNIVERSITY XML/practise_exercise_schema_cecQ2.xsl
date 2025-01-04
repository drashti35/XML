<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr>
						<td bgcolor="red">Pname</td>
						<td bgcolor="red">Price</td>
					</tr>
					<xsl:for-each select="Products/Product">
						<tr>
							<td><xsl:value-of select="pname"/></td>
							<td><xsl:value-of select="price"/></td>
							<td>
								<xsl:choose>
									<xsl:when test="price&gt;500"><xsl:value-of select="price - ( price * 0.1 )"/></xsl:when>
								</xsl:choose>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>