<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

	<xsl:output encoding="UTF-8" 
				indent="yes"
				method="xml" />

	<xsl:template match="/">	
		
		<laas>
		
			<xsl:copy-of select="document('themes.xml')" />
			
			<xsl:copy-of select="document('membres.xml')" />
			
		</laas>
		
	</xsl:template>


</xsl:stylesheet>
