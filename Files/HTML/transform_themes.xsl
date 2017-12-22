<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

	<xsl:output encoding="iso-8859-1" 
				indent="yes"
				method="html" />
				
	<xsl:template match="/">	
			
		<div class="row">
			<xsl:for-each select="//theme">			
				<div class="col-xs-12 col-sm-6 col-md-6">				
					<div class="theme">						
					
						<xsl:variable name="resp" select="responsable" />
						<xsl:variable name="nom" select="document('membres.xml')//membre[@id = $resp]/nom" />
						<xsl:variable name="prenom" select="document('membres.xml')//membre[@id = $resp]/prenom" />
						<xsl:variable name="grade" select="document('membres.xml')//membre[@id = $resp]/grade" />
						<xsl:variable name="email" select="document('membres.xml')//membre[@id = $resp]/email" />		
					
						<p><kbd><xsl:value-of select="@acronyme" /></kbd>&#160;<xsl:value-of select="description" /></p>
					
						<p>Responsable : <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-membre-responsable-theme"><xsl:value-of select="$nom" />&#160;<xsl:value-of select="$prenom" /></button>
						
							<div class="data">
								<span class="nom"><xsl:value-of select="$nom" /></span>
								<span class="prenom"><xsl:value-of select="$prenom" /></span>
								<span class="grade"><xsl:value-of select="$grade" /></span>
								<span class="email"><xsl:value-of select="$email" /></span>
							</div>							
						</p>
					
					</div>	<!-- /.theme -->				
				</div> <!-- /.col -->		
			</xsl:for-each>
		
		</div>
	
	</xsl:template>


</xsl:stylesheet>
