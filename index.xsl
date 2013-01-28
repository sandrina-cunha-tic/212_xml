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
						<h1><xsl:value-of select="page/entete/titre/@nom"/></h1>
						<nav>
							<ul>
								<li>
									<a href="#"><xsl:value-of select="page/entete/navigation/liste/lien_acc/@nom"/></a>
								</li>
								<xsl:for-each select="page/entete/navigation/liste/lien" >
								<li>
									<a href="#"><xsl:value-of select="@nom"/></a>
									<ul class="close">
										<li>
											<a href="#"><xsl:value-of select="sousliste/souslien/@nom"/></a>
										</li>
										<li>
											<a href="#"><xsl:value-of select="sousliste/souslien/@nom_1"/></a>
										</li>
										<li>
											<a href="#"><xsl:value-of select="sousliste/souslien/@nom_2"/></a>
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
										<xsl:value-of select="page/entete/navigation/liste/lien_conc/@nom"/>
									</a>
								</li>
							</ul>
						</nav>
					</header>
					<div id="bloc_header-down">
						<div id="text_header-down">
							<h2><xsl:value-of select="page/corps/introduction/@nom"/></h2>
							<p><xsl:value-of select="page/corps/introduction/text"/></p>
						</div>
						<a href="#">lien1</a>
						<a href="#">lien2</a>
						<a href="#">lien3</a>
					</div>
					<div id="bloc_post-footer">
						<div id="text_post-footer1">
							<h3>
								<xsl:value-of select="page/corps/articles/article1/@nom"/>
								<span class="h3"><xsl:value-of select="page/corps/articles/article1/@nom2"/></span>
							</h3>
							<p><xsl:value-of select="page/corps/articles/article1/text"/></p>
						</div>
						<div id="text_post-footer2">
							<h3>
								<xsl:value-of select="page/corps/articles/article2/@nom"/>
								<span class="h3"><xsl:value-of select="page/corps/articles/article2/@nom2"/></span>
							</h3>
							<p><xsl:value-of select="page/corps/articles/article2/text"/></p>
						</div>
						<div id="text_post-footer3">
							<h3>
								<xsl:value-of select="page/corps/articles/article3/@nom"/>
								<span class="h3"><xsl:value-of select="page/corps/articles/article3/@nom2"/></span>
							</h3>
							<p><xsl:value-of select="page/corps/articles/article3/text"/></p>
						</div>
						<footer>
							<p><xsl:value-of select="page/pied"/></p>
						</footer>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
