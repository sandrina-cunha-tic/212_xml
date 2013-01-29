<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<title>Editorial</title>
				<link type="text/css" rel="stylesheet" href="style.css" />
			</head>
			<body id="body_edit">
				<div id="content">
					<header>
						<h1>
							<xsl:value-of select="page/entete/titre/@nom"/>
						</h1>
						<nav>

							<ul>
								<xsl:for-each select="page/entete/navigation/liste/lien" >
									<li>
										<a href="#">
											<xsl:value-of select="@nom"/>
										</a>
										<ul class="close">
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
										</ul>
									</li>
								</xsl:for-each>
							</ul>
						</nav>
					</header>
					<div id="bloc_header-down">
						<div id="text_header-down">
							<h2>
								<xsl:value-of select="page/corps/introduction/@nom"/>
							</h2>
							<p>
								<xsl:value-of select="page/corps/introduction/text"/>
							</p>
						</div>
						<a href="#">lien1</a>
						<a href="#">lien2</a>
						<a href="#">lien3</a>
					</div>
					<div id="bloc_post-footer_edit">
						<div id="text_post-footer1">
							<h3>
								<xsl:value-of select="page/corps/membres/membre1/@prenom"/>
								<span class="h3">
									<xsl:value-of select="page/corps/membres/membre1/@nom"/>
								</span>
							</h3>
							<p>
								<img src="images/mick.jpg" class="tof_edit" alt="Mickael" />
								<xsl:value-of select="page/corps/membres/membre1"/>
								<a href="mailto:mickael.mathieu@etu.unilim.fr" class="read">E-mail</a>
							</p>
						</div>
						<div id="text_post-footer2">
							<h3>
								<xsl:value-of select="page/corps/membres/membre2/@prenom"/>
								<span class="h3">
									<xsl:value-of select="page/corps/membres/membre2/@nom"/>
								</span>
							</h3>
							<p>
								<img src="images/elsa.png" class="tof_edit" alt="Elsa" />
								<xsl:value-of select="page/corps/membres/membre2"/>
								<a href="mailto:elsa.champey@etu.unilim.fr" class="read">E-mail</a>
							</p>
						</div>
						<div id="text_post-footer3">
							<h3>
								<xsl:value-of select="page/corps/membres/membre3/@prenom"/>
								<span class="h3">
									<xsl:value-of select="page/corps/membres/membre3/@nom"/>
								</span>
							</h3>
							<p>
								<img src="images/yael.png" class="tof_edit" alt="Yael" />
								<xsl:value-of select="page/corps/membres/membre3"/>
								<a href="mailto:yael.saghroun@etu.unilim.fr" class="read">E-mail</a>
							</p>
						</div>
						<div id="bloc_post-footer_edit2">
							<div id="text_post-footer4">
								<h3>
									<xsl:value-of select="page/corps/membres/membre4/@prenom"/>
									<span class="h3">
										<xsl:value-of select="page/corps/membres/membre4/@nom"/>
									</span>
								</h3>
								<p>
									<img src="images/sand.png" class="tof_edit" alt="Sandrina" />
									<xsl:value-of select="page/corps/membres/membre4"/>
									<a href="mailto:sandrina.cunha@etu.unilim.fr" class="read">E-mail</a>
								</p>
							</div>
							<div id="text_post-footer5">
								<h3>
									<xsl:value-of select="page/corps/membres/membre5/@prenom"/>
									<span class="h3">
										<xsl:value-of select="page/corps/membres/membre5/@nom"/>
									</span>
								</h3>
								<p>
									<img src="images/deb.png" class="tof_edit" alt="Deborah" />
									<xsl:value-of select="page/corps/membres/membre5"/>
									<a href="mailto:debrah.elefant@etu.unilim.fr" class="read">E-mail</a>
								</p>
							</div>
							<div id="text_post-footer6">
								<h3>
									<xsl:value-of select="page/corps/membres/membre6/@prenom"/>
									<span class="h3">
										<xsl:value-of select="page/corps/membres/membre6/@nom"/>
									</span>
								</h3>
								<p>
									<img src="images/sego.png" class="tof_edit" alt="Ségolène" />
									<xsl:value-of select="page/corps/membres/membre6"/>
									<a href="mailto:segolene.ganne@etu.unilim.fr" class="read">E-mail</a>
								</p>
							</div>
						</div>
						<footer id="footer_edit">
							<p>
								<xsl:value-of select="page/pied"/>
								<a href="editorial.xml">
									<xsl:value-of select="page/pied/lien/@nom"/>
								</a>
							</p>
						</footer>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
