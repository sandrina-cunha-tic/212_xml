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
			<body id="body_index">
				<div id="content">
					<header>
						<h1>
							<xsl:value-of select="page/entete/titre/@nom"/>
						</h1>
						<nav>

							<ul>
								<xsl:for-each select="page/entete/navigation/liste/lien" >
									<li>
										<a>
											<xsl:attribute name="href">
												<xsl:value-of select="@lien"/>
											</xsl:attribute>
											<xsl:value-of select="@nom"/>
										</a>
										<ul class="close">
											<li>
												<a>
													<xsl:attribute name="href">
														<xsl:value-of select="sousliste/souslien/@lien"/>
													</xsl:attribute>
													<xsl:value-of select="sousliste/souslien/@nom"/>
												</a>
											</li>
											<li>
												<a>
													<xsl:attribute name="href">
														<xsl:value-of select="sousliste/souslien2/@lien1"/>
													</xsl:attribute>
													<xsl:value-of select="sousliste/souslien2/@nom_1"/>
												</a>
											</li>
											<li>
												<a>
													<xsl:attribute name="href">
														<xsl:value-of select="sousliste/souslien3/@lien2"/>
													</xsl:attribute>
													<xsl:value-of select="sousliste/souslien3/@nom_2"/>
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
					<div id="bloc_post-footer">
						<div id="text_post-footer1">
							<h3>
								<xsl:value-of select="page/corps/articles/article1/@nom"/>
								<span class="h3">
									<xsl:value-of select="page/corps/articles/article1/@nom2"/>
								</span>
							</h3>
							<p>
								<xsl:value-of select="page/corps/articles/article1/text"/>
								<a href="web.xml">
									<img src="images/read.png" alt="bouton" class="read" />
								</a>
							</p>
						</div>
						<div id="text_post-footer2">
							<h3>
								<xsl:value-of select="page/corps/articles/article2/@nom"/>
								<span class="h3">
									<xsl:value-of select="page/corps/articles/article2/@nom2"/>
								</span>
							</h3>
							<p>
								<xsl:value-of select="page/corps/articles/article2/text"/>
								<a href="evol.xml">
									<img src="images/read.png" alt="bouton" class="read" />
								</a>
							</p>
						</div>
						<div id="text_post-footer3">
							<h3>
								<xsl:value-of select="page/corps/articles/article3/@nom"/>
								<span class="h3">
									<xsl:value-of select="page/corps/articles/article3/@nom2"/>
								</span>
							</h3>
							<p>
								<xsl:value-of select="page/corps/articles/article3/text"/>
								<a href="siecle.xml">
									<img src="images/read.png" alt="bouton" class="read" />
								</a>
							</p>
						</div>
						<footer id="footer_index">
							<p>
								<xsl:value-of select="page/pied"/>
								<a href="editorial.xml">
									<xsl:value-of select="page/pied/lien_footer/@nom"/>
								</a>
							</p>
						</footer>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
