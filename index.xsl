<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<title>site xml</title>
				<link type="text/css" rel="stylesheet" href="style.css" />
			</head>
			<body>
				<div id="content">
					<header>
						<p>
							<xsl:value-of select="page/entete/titre/@nom"/>
						</p>
						<nav>
							<ul>
								
								<li id="item_index">
									<a href="index.xml" id="a_index">
										<xsl:value-of select="page/entete/navigation/liste/lien_acc/@nom"/>
									</a>
								</li>
								<xsl:for-each select="page/entete/navigation/liste/lien">
								<li>
									<a href="origine.xml">
										<xsl:value-of select="@nom"/>
									</a>
									<ul class="list_down">
										
										<li>
											<a href="#">
												<xsl:value-of select="sousliste/souslien/@nom"/>
											</a>
										</li>
										<li>
											<a href="#">
												<xsl:value-of select="sousliste/souslien/@nom_1"/>
											</a>
										</li>
										<li>
											<a href="#">
												<xsl:value-of select="sousliste/souslien/@nom_2"/>
											</a>
										</li>
										<li>
											<a href="#">
												<xsl:value-of select="sousliste/souslien/@nom_3"/>
											</a>
										</li>
									</ul>
								</li>
								</xsl:for-each>
								
								<li id="final_item">
									<a href="conclusion.xml" id="a_final">
										<xsl:value-of select="page/entete/navigation/liste/lien_acc/@nom"/>
									</a>
								</li>
							</ul>
						</nav>
					</header>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
