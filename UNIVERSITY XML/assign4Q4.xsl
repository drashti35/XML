
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="emp_info/employee">
		<html>
			<body>
				<h1>Employees's Name</h1>
				<h4>Emp_name:<xsl:value-of select="emp_name"/></h4>
				<h4 style="font-size:10px;">Emp_num:<xsl:value-of select="emp_name/@emp_ID"/></h4>
				<h4>Firstname:<xsl:value-of select="firstname"/></h4>
				<h4>Lastname:<xsl:value-of select="llastname"/></h4>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>