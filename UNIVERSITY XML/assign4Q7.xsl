
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr>
						<td>roll_no</td>
						<td>name</td>
						<td>marks</td>
						<td>rank</td>
					</tr>
					<xsl:for-each select="Email/Student">
						<tr>
							<td><xsl:value-of select="Roll_no"/></td>
							<td><xsl:value-of select="Name"/></td>
							<td><xsl:value-of select="Marks"/></td>
							<td><xsl:value-of select="Rank"/></td>
							<td>
								<xsl:choose>
									<xsl:when test="Rank &lt;=5">top students</xsl:when>
									<xsl:when test="Rank &gt;5 and Rank &lt;=10">Top 10 students</xsl:when>
									<xsl:otherwise>Average students</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>