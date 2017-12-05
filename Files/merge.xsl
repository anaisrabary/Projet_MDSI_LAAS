<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

	<xsl:output encoding="UTF-8" 
				indent="yes"
				method="xml" />

	<xsl:template match="/">	
		
		<laas>
		
			<xsl:copy-of select="document('themes.xml')" />
			
			<xsl:copy-of select="document('membres.xml')" />
			
			<xsl:copy-of select="document('equipes_de_recherche.xml')" />
			
			<xsl:copy-of select="document('auteurs_externes.xml')" />
			
			<xsl:copy-of select="document('evenements.xml')" />
			
			<xsl:copy-of select="document('partenaires_participants.xml')" />
			
			<xsl:copy-of select="document('productions_scientifiques.xml')" />
			
			<xsl:copy-of select="document('projets_de_recherche.xml')" />
			
			<xsl:copy-of select="document('theses_doctorats.xml')" />
			
		</laas>
		
	</xsl:template>


</xsl:stylesheet>
