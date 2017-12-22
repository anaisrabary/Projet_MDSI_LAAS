<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

	<xsl:output encoding="iso-8859-1" 
				indent="yes"
				method="html" />
				
	<xsl:template match="/">	
		
		<div class="row">
			
			<xsl:for-each select="//membre[grade = 'MCF']">
			
				<div class="col-xs-6 col-sm-4 col-md-3">
				
					<div class="membre">
					
						<p><xsl:value-of select="nom" /> - <xsl:value-of select="prenom" /> (<xsl:value-of select="grade" />)</p>
						<p><xsl:value-of select="email" /></p>
						
					</div>
					
				</div>
				
			</xsl:for-each>
			
		</div>
		<hr />
		<div class="row">
			
			<xsl:for-each select="//membre[grade = 'PR']">
			
				<div class="col-xs-6 col-sm-4 col-md-3">
				
					<div class="membre">
					
						<p><xsl:value-of select="nom" /> - <xsl:value-of select="prenom" /> (<xsl:value-of select="grade" />)</p>
						<p><xsl:value-of select="email" /></p>
						
					</div>
					
				</div>
				
			</xsl:for-each>
			
		</div>
		<hr />
		<div class="row">
			
			<xsl:for-each select="//membre[grade = 'Doctorant']">
			
				<div class="col-xs-6 col-sm-4 col-md-3">
				
					<div class="membre">
					
						<p><xsl:value-of select="nom" /> - <xsl:value-of select="prenom" /> (<xsl:value-of select="grade" />)</p>
						<p><xsl:value-of select="email" /></p>
						
					</div>
					
				</div>
				
			</xsl:for-each>
			
		</div>
		
		
	</xsl:template>


</xsl:stylesheet>
