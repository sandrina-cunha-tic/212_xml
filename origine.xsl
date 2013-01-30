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
					<article>
						<p>
						<xsl:value-of select="page/corps/article"/></p>
					</article>
					<footer id="footer_index">
						<p>
							<xsl:value-of select="page/pied"/>
							<a href="editorial.xml">
								<xsl:value-of select="page/pied/lien_footer/@nom"/>
							</a>
						</p>
					</footer>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
