<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>   
	<xsl:template match="/country">
		<html>
			<head>
				<!-- Standard Meta -->
				<meta charset="utf-8" />
				<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

				<!-- Site Properties -->
				<title>Semestral work | BI-XML</title>
				<link rel="stylesheet" type="text/css" href="../stylesheet/semantic.min.css"/>
				<script
					src="https://code.jquery.com/jquery-3.1.1.min.js"
					integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
					crossorigin="anonymous"></script>
					<script src="../stylesheet/semantic.min.js"></script>


					<link rel="stylesheet" type="text/css" href="../stylesheet/components/reset.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/site.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/container.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/grid.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/header.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/image.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/menu.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/divider.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/list.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/segment.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/dropdown.css"/>
					<link rel="stylesheet" type="text/css" href="../stylesheet/components/icon.css"/>


					<script type="text/javascript">
						function show() { 
						if(document.getElementById('toggle').style.display=='none') { 
						document.getElementById('toggle').style.display='block'; 
						} 
						return false;
						} 
						function hide() { 
						if(document.getElementById('toggle').style.display=='block') { 
						document.getElementById('toggle').style.display='none'; 
						} 
						return false;
						}   
					</script>

					<style type="text/css">
						body {
						background-color: #FFFFFF;
						}
						.ui.menu .item img.logo {
						margin-right: 1.5em;
						}
						.main.container {
						margin-top: 7em;
						}
						.wireframe {
						margin-top: 2em;
						}
						.ui.footer.segment {
						margin: 5em 0em 0em;
						padding: 5em 0em;
						}
					</style>

				</head>
				<body>

					<div class="ui fixed inverted menu">
						<div class="ui container segments">
							<a href="./index.html" class="header item">
								Semestral work | BI-XML
							</a>

							<div  class="ui simple dropdown item">
								Countries <i class="dropdown icon"></i>
								<div class="menu">
								
									<a class="item" href="./uzbekistan.html">Uzbekistan</a>
									<a class="item" href="./somalia.html">Somalia</a>
									<a class="item" href="./south_africa.html">South Africa</a>
										<a class="item" href="./north_korea.html">North Korea</a>
								</div>
							</div>

							<div class="ui simple dropdown item">
								Country <i class="dropdown icon"></i>
								<div class="menu">
									<a class="item" href="#introduction">Introduction</a>
									<a class="item" href="#communication">Communication</a>
									<a class="item" href="#economy">Economy</a>
									<a class="item" href="#energy">Energy</a>
									<a class="item" href="#geography">Geography</a>
									<a class="item" href="#government">Government</a>
									<a class="item" href="#military">Military and Security</a>
									<a class="item" href="#people">People and Society</a>
									<a class="item" href="#issues">Transnational issues</a>
									<a class="item" href="#transport">Transportation</a>
								</div>

							</div>

						</div>
					</div>
					<div class="ui main text container" id="introduction">

						<xsl:apply-templates select="introduction"/>
						<xsl:apply-templates select="pictures"/>
						<xsl:apply-templates select="section" />
					</div>
					<div class="ui inverted vertical footer segment">
						<div class="ui center aligned container">
							<div class="ui stackable inverted divided grid">
								<div class="three wide column">
									<h4 class="ui inverted header">Semestral work | BI-XML</h4>

								</div>
								<div class="ui horizontal inverted small divided link list">
									© Jan Peřina

								</div>
							</div>
						</div>
					</div>
				</body>

			</html>
		</xsl:template>

		<xsl:template match="introduction">

			<xsl:apply-templates select="name"/>
			<xsl:apply-templates select="background"/>
		</xsl:template>

		<xsl:template match="pictures">
			<center>
				<div class="ui three column grid">
					<xsl:apply-templates select="picture">
					</xsl:apply-templates>
				</div>
				<xsl:apply-templates select="photos">
				</xsl:apply-templates>
			</center>
			<br></br>
		</xsl:template>

		<xsl:template match="section">
			<div class="ui container" >
				<xsl:attribute name="id">
					<xsl:value-of select="@id"/>
				</xsl:attribute>
				<h2 class="ui large header">				
					<xsl:value-of select="@name"/>
				</h2>
				<xsl:apply-templates select="detail">
				</xsl:apply-templates>
				<xsl:apply-templates select="nested-detail">
				</xsl:apply-templates>
				<xsl:apply-templates select="list-detail">
				</xsl:apply-templates>
				<xsl:apply-templates select="histogram">
				</xsl:apply-templates>
			</div>
			<br></br>
		</xsl:template >

		<xsl:template match="name">
			<h1 class="ui huge header">
				<xsl:value-of select="."/>

			</h1>
		</xsl:template>

		<xsl:template match="background">
			<xsl:for-each select="paragraph">
				<p class="ui">
					<xsl:value-of select="."/>

				</p>
			</xsl:for-each>
		</xsl:template>

		<xsl:template match="picture">

			<div class="column">
				<div class="ui fluid image">
					<div class="ui orange ribbon label">
						<xsl:value-of select="@description"/>
					</div>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="."/>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="@description"/>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</xsl:template>

		<xsl:template match="photos">
			<br></br>
			<button class="ui black button" name="answer" id="galery" onclick="show('toggle')">Show photos</button>
			<div class="ui segment" style="display:none;" id="toggle">
				<xsl:apply-templates select="photo">
				</xsl:apply-templates>
				<a href="#galery"><button class="ui black button" name="answer2" onclick="hide('toggle')" >Hide photos</button></a>

			</div>
		</xsl:template>

		<xsl:template match="detail">
			<div class="ui black segment">
				<div class="left aligned"> 
					<strong>
						<xsl:value-of select="@name"/>
					</strong>
				</div>

				<div  class="right aligned">
					<xsl:value-of select="."/>
				</div>
			</div>
		</xsl:template>

		<xsl:template match="photo">

			<div class="ui inverted segment">
				<p>
					<xsl:value-of select="@description"/>
				</p>
			</div>

			<img class="ui centered medium image rounded">
				<xsl:attribute name="src">
					<xsl:value-of select="."/>
				</xsl:attribute>

			</img>
			<br></br>
		</xsl:template>

		<xsl:template  match="nested-detail">
			<h3 class="ui medium header">
				<xsl:value-of select="@name"/>
			</h3>
			<xsl:apply-templates select="detail|list-detail"/>

			
		</xsl:template>

		<xsl:template match="list-detail">
			<div class="ui horizontal black segment" style="width:100%">

				<div class="ui header black ">
					<xsl:value-of select="@name"/>
				</div>
				<div class="ui relaxed divided list">

					<xsl:apply-templates select="list-item">
					</xsl:apply-templates>


				</div>
			</div>
		</xsl:template>


		<xsl:template match="histogram">
			<div class="ui horizontal black segment" style="width:100%">



				<div class="ui header black "><xsl:value-of select="@name"/>
				<xsl:if test="(@description)">
					<div class="ui basic black label tiny left aligned" >
						<small>
							<xsl:value-of select="@description"/>
						</small>
					</div>
				</xsl:if>

			</div>
			<div class="ui relaxed black divided list">



				<div class="ui  segments">
					<xsl:apply-templates select="entry"/>
				</div>
			</div>

		</div>
	</xsl:template>


	<xsl:template match="list-item">
		<div class="ui item" >
			<xsl:value-of select="."/> 
		</div>
	</xsl:template>


	<xsl:template match="entry">
		<div class="ui  segment">
			<div >
				<div>
					<xsl:choose>
						<xsl:when test="not(@from-age) and not(@to-age)">
							<strong>Overall</strong>:
						</xsl:when>
						<xsl:when test="(@from-age = '0') and (@to-age = '0')">
							<strong>At birth</strong>:
						</xsl:when>
						<xsl:when test="not(@to-age)">
							<strong>
								Over
								<xsl:value-of select="@from-age"/>
							</strong>
							:
						</xsl:when>
						<xsl:otherwise>
							<strong>
								From age
								<xsl:value-of select="@from-age"/>
								to age
								<xsl:value-of select="@to-age"/>
							</strong>
							:
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div >
					<xsl:value-of select="."/>
					<xsl:value-of select="../@unit"/>
				</div>
			</div>
		</div>
	</xsl:template>



</xsl:stylesheet>
