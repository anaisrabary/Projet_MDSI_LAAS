<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

	<xsl:output encoding="iso-8859-1" 
				indent="yes"
				method="html" />
				
	<xsl:template match="/*/*">	
			
		<div class="row">
			<xsl:for-each select="*">			
				<div class="col-xs-12 col-sm-6 col-md-6">				
					<div class="evenement">						
					
						<xsl:variable name="nom" select="nom" />
						<xsl:variable name="debut" select="date_debut" />
						<xsl:variable name="fin" select="date_fin" />
						
						<h4><xsl:value-of select="$nom" /></h4>
						<p>Date de début : <kbd><xsl:value-of select="$debut" /></kbd></p>
						<p>Date de fin : <kbd><xsl:value-of select="$fin" /></kbd></p>
						
						<!--
					
						<p>Responsable : <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-equipe-evenement"><b>FBI</b> : Fausses Blondes Infiltrées</button>	
				
							<div class="data">
								<span class="acronyme">FBI</span>
								<span class="theme_id">HOPES</span><span class="theme">HOPES</span>
								<span class="nom_resp">Balmaské</span><span class="prenom_resp">Alonzo</span><span class="grade_resp">Doctorant</span><span class="email_resp">alonzo.balmaske@laas.fr</span>
							</div>					
						</p>
					-->
					</div>	<!-- /.theme -->				
				</div> <!-- /.col -->	
		
			</xsl:for-each>
		
		</div>
	
	</xsl:template>


</xsl:stylesheet>
