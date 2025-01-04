<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<body>
				<table border="2">
					<tr>
						<td>orderNumber</td>
						<td>orderate</td>
						<td>orderAmount</td>
						<td>itemPrice</td>
						<td>itemName</td>
						<td>quantity</td>
					</tr>
					<xsl:for-each select="Orders/OrderDetail">
						<tr>
							<td><xsl:value-of select="OrderNumber"/></td>
							<td><xsl:value-of select="Orderate"/></td>
							<td><xsl:value-of select="OrderAmount"/></td>
							<td><xsl:value-of select="ItemPrice"/></td>
							<td><xsl:value-of select="ItemName"/></td>
							<td><xsl:value-of select="Quantity"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>