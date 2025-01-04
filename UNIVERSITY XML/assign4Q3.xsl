
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr>
						<td>Name</td>
						<td>address</td>
						<td>birthdate</td>
						<td>gender</td>
						<td>mobileno</td>
						<td>result</td>
					</tr>
					<xsl:for-each select="details/Student">
						<xsl:sort select="Student_Name"/>
						<tr>
							<td><xsl:value-of select="Student_Name"/></td>
							<td><xsl:value-of select="Personal_info/Address"/></td>
							<td><xsl:value-of select="Personal_info/Birthdate"/></td>
							<td><xsl:value-of select="Personal_info/Gender"/></td>
							<td><xsl:value-of select="Personal_info/Mobileno"/></td>
							<td><xsl:value-of select="Result"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>