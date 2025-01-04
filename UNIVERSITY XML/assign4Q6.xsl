<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="details/Student">
		<html>
			<body>
				<h3>Name:<xsl:value-of select="Name"/></h3>
				<h3>fname:<xsl:value-of select="Name/@fname"/></h3>
				<h3>lname:<xsl:value-of select="Name/@lname"/></h3>
				<h3>ID:<xsl:value-of select="ID"/></h3>
				<h3>Courses:<xsl:value-of select="Plan/courses"/></h3>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>