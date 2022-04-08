<?xml version="1.0" encoding="UTF-8"?>
<!-- 
	Progetto finale esame Codifica di testi 2020-21
	Martina Lazzari, Martina Lombardo, Annalisa Nicotera
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:variable name="space"><![CDATA[&#32;]]></xsl:variable>

	<xsl:template match="/">
		<html>
			<head>
				<title>
					<xsl:value-of select="//tei:titleStmt/tei:title"/>
				</title>
				<xsl:element name="meta">
					<xsl:attribute name="name">author</xsl:attribute>
					<xsl:attribute name="content">
						<xsl:value-of select="//tei:titleStmt/tei:respStmt[1]/tei:name[1]"/>
						<p>, </p>
            			<xsl:value-of select="//tei:titleStmt/tei:respStmt[1]/tei:name[2]"/>
						<p>e </p>
						<xsl:value-of select="//tei:titleStmt/tei:respStmt[1]/tei:name[3]"/>
					</xsl:attribute>
				</xsl:element>
				<link rel = "stylesheet" href="cssCod.css"/>
				<script src="codiceJS.js"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			</head>
			<body onload="caricamentoId()">
				<div id="headerSito">
					<h1>Corrispondenze d'amore</h1>
					<h3> Codifica di cartoline romantiche </h3>
					<p id="intro">Vi proponiamo la versione digitale codificata di alcune cartoline d'amore destinate ad Oliva Turtura. <br/> Autore: Giovanni Coliola</p>
					<div id="legenda">
						<p> Per interagire con il testo: </p>
						<ul>
							<li>Cliccare sul testo sottolineato per far comparire/sparire le informazioni metatestuali</li>
							<li>Cliccare sui numeri di riga per visualizzare la zona corrispondente sull'immagine cartolina</li>
							<li>Cliccare su gli elementi [...] e [] per visualizzare le parti mancanti</li>
						</ul>
					</div>
					<ul class="navigatore">
						<li><a href="#c81"> Napoli - presso la Vicaria<br/>7-01-1918</a></li>
						<li><a href="#c94"> L'Architettura <br/>7-06-1917</a></li>
					</ul>
				</div>
				<div id="infoGenerali">
				</div>
				<!--cartolina n. 81  -->
				<div id="c81" class="cartGenerale">
				<!--informazioni iniziali c81-->
					<div class="fronte">
						<!--immagine fronte-->
						<div id="f81"> 
							<xsl:element name="img" >
								<xsl:attribute name="src">
									<xsl:value-of select="tei:teiCorpus/tei:TEI[1]/tei:facsimile/tei:surface[@xml:id='fronte081']/tei:graphic/@url"/>
								</xsl:attribute>
							</xsl:element>
						</div>
						<!--infogenerali-->
						<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
						<p>Descrizione:</p>
						<p><xsl:value-of select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[@type='fronte']/tei:figure/tei:figDesc"/></p>
					</div>
					<div class="retro">
						<!--immagine retro-->
						<div id="r81" class="mappatura">
							<xsl:element name="img">
								<xsl:attribute name="src">
									<xsl:value-of select="tei:teiCorpus/tei:TEI[1]/tei:facsimile/tei:surface[@xml:id='retro081']/tei:graphic/@url"/>
								</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r811" class="mappatura" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-081R1.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r812" class="mappatura" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-081R2.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r813" class="mappatura" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-081R3.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r814" class="mappatura" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-081R4.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r815" class="mappatura" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-081R5.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r816" class="mappatura" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-081R6.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r817" class="mappatura" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-081R7.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<!--indirizzi-->
						<div id="indirizzi81" class="indirizzi">
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[@type='destination']/tei:div"/>
						</div>
						<span>
							Elemento tipografico riportato sul retro della cartolina:
							<xsl:value-of select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[@type='destination']/tei:div/tei:p[2]"/>
						</span>
						<!--testo-->
						<div id="t81">
							<p>Trascrizione testo</p>
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[@type='message']/tei:div[@type='textmessage']"/>
						</div>
						<!--timbri e francobolli-->
						<div id="timbriFrancobolli81">
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[@type='destination']/tei:p[1]"/>
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[@type='destination']/tei:p[2]"/>
						</div>
						<!--titoli cartolina riportati in stampa, lingue diverse-->
						<div id="cartTrad">
							<p>
								Elementi tipografici riportati sul retro della cartolina:
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[@type='message']/tei:p"/>
							</p>
						</div>
					</div>
					<ul class="navigatore">
						<li><a href="#headerSito"> Introduzione </a></li>
            			<li><a href="#c94"> L'Architettura <br/>7-06-1917</a></li>
					</ul>
				</div>
				<div id="c94" class="cartGenerale">
				<!--informazioni iniziali c94-->
					<div class="fronte">
						<!--immagine fronte-->
						<div id="f94">
							<xsl:element name="img">
								<xsl:attribute name="src">
									<xsl:value-of select="tei:teiCorpus/tei:TEI[2]/tei:facsimile/tei:surface[@xml:id='fronte094']/tei:graphic/@url"/>
								</xsl:attribute>
							</xsl:element>
						</div>
						<!--infogenerali-->
						<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
						<p>Descrizione</p>
						<p><xsl:value-of select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[@type='fronte']/tei:figure/tei:figDesc"/></p>
					</div>
					<div class="retro">
						<!--immagine retro-->
						<div id="r94" class="mappatura1">
							<xsl:element name="img">
								<xsl:attribute name="src">
									<xsl:value-of select="tei:teiCorpus/tei:TEI[2]/tei:facsimile/tei:surface[@xml:id='retro094']/tei:graphic/@url"/>
								</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r941" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R1.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r942" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R2.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r943" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R3.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r944" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R4.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r945" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R5.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r946" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R6.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r947" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R7.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r948" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R8.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r949" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R9.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r9410" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R10.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<div id="r9411" class="mappatura1" >
							<xsl:element name="img">
								<xsl:attribute name="src">cartoline/7694-094R11.jpg</xsl:attribute>
							</xsl:element>
						</div>
						<!--indirizzi-->
						<div id="indirizzi94" class="indirizzi">
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[@type='destination']/tei:div"/>
						</div>
						<!--testo-->
						<div id="t94">
							<p>Trascrizione testo</p>
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[@type='message']/tei:div[@type='textmessage']"/>
						</div>
						<!--timbri e francobolli-->
						<div id="timbriFrancobolli94">
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[@type='destination']/tei:p[1]"/>
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[@type='destination']/tei:p[2]"/>
						</div>
						<!--note metadati-->
						<div class="classNoteTf">
						</div>
						<!--titolo opera cartolina riportata sul retro e dicitura-->
						<div id="diciture">
							<p>
								Elementi tipografici riportati sul retro della cartolina:
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[@type='message']/tei:p"/>
							</p>
						</div>
					</div>
					<ul class="navigatore">
						<li><a href="#c81"> Napoli - Presso la Vicaria </a> </li>
						<li><a href="#headerSito"> Introduzione </a></li>
					</ul>
				</div>
				<footer>
					<div id="credits">
						<xsl:apply-templates select="tei:teiCorpus/tei:teiHeader/tei:fileDesc"/>
					</div>
				</footer>
			</body>	
		</html>
	</xsl:template>



	<!--TEMPLATE ELEMENTI CARTOLINA-->
	<!--TEMPLATE GENERICI ELEMENTI XML-->
	<!--template lb-->
	<xsl:template match="//tei:lb">
		<br/>
		<span class="indici" onmouseover="evidenzia(this.id)" onmouseout="nascondi(this.id)">
			<xsl:value-of select="@n"/><xsl:text>&#x9;</xsl:text>
		</span>
	</xsl:template>

	<!--template unclear-->
	<xsl:template match="tei:unclear">
		<i>
			<a class="popup" onclick="myFunction(this)">
				<xsl:value-of select="."/>
				<xsl:choose>
					<xsl:when test="@reason='faded'">
						<xsl:element name="span">
							<xsl:attribute name="class">popuptext</xsl:attribute>
							<xsl:text>Poco chiaro, inchiostro sbiadito</xsl:text>
						</xsl:element>
					</xsl:when>
					<xsl:when test="@reason='background_noise'">
						<xsl:element name="span">
							<xsl:attribute name="class">popuptext</xsl:attribute>
							<xsl:text>Poco chiaro, timbri o caratteri sovrapposti</xsl:text>
						</xsl:element>
					</xsl:when>
					<xsl:otherwise>
						<xsl:element name="span">
							<xsl:attribute name="class">popuptext</xsl:attribute>
							<xsl:text>Testo illeggibile</xsl:text>
						</xsl:element>
					</xsl:otherwise>
				</xsl:choose>
			</a>
		</i>
	</xsl:template>

	<!--template informazioni tipografiche-->
	<xsl:template match="tei:title">
		<i><a class="popup" onclick="myFunction(this)">
			<xsl:value-of select="."/>
			<xsl:choose>
				<xsl:when test="@xml:lang='it'">
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<xsl:text>Lingua Italiana</xsl:text>
					</xsl:element>
				</xsl:when>
				<xsl:when test="@xml:lang='fr'">
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<xsl:text>Traduzione in lingua francese</xsl:text>
					</xsl:element>
				</xsl:when>
				<xsl:when test="@xml:lang='en'">
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<xsl:text>Traduzione in lingua Inglese</xsl:text>
					</xsl:element>
				</xsl:when>
				<xsl:otherwise>
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<xsl:text>Opera di artista sconosciuto</xsl:text>
					</xsl:element>
				</xsl:otherwise>
			</xsl:choose>
		</a></i>
	</xsl:template>

	<!--template persName-->
	<xsl:template match="tei:persName">
		<a class="popup" onclick="myFunction(this)">
			<xsl:value-of select="."/>
			<xsl:choose>
				<xsl:when test="@ref='#OT'">
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<xsl:text>Oliva Turtura, destinatario</xsl:text>
					</xsl:element>
				</xsl:when>
				<xsl:when test="@xml:id='VM'">
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<xsl:text>Vincenzo Migliaro, pittore</xsl:text>
					</xsl:element>
				</xsl:when>
				<xsl:otherwise>
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<xsl:text>Giannetta, probabile conoscente di Coliola</xsl:text>
					</xsl:element>
				</xsl:otherwise>
			</xsl:choose>
		</a>
	</xsl:template>

	<!--templace signed-->
	<xsl:template match="tei:signed/tei:persName">
		<i><a class="popup" onclick="myFunction(this)">
			<xsl:value-of select="."/>
			<xsl:if test="@ref='#GC'">
				<xsl:element name="span">
					<xsl:attribute name="class">popuptext</xsl:attribute>
					<xsl:text>Giovanni Coliola, firma mittente</xsl:text>
				</xsl:element>
			</xsl:if>
		</a></i>
	</xsl:template>

	<!--template supplied-->
	<xsl:template match="tei:supplied">
		<a class="popup" onclick="myFunction(this)">
			<xsl:choose>
				<xsl:when test="@reason='faded-ink'">
					<xsl:text>[...]</xsl:text>
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<i><xsl:value-of select="."/></i><br/><xsl:text>(testo illeggibile, inchiostro fortemente scolorito)</xsl:text>
					</xsl:element>
				</xsl:when>
				<xsl:when test="@reason='overwriting'">
					<xsl:text>[...]</xsl:text>
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<i><xsl:value-of select="."/></i><br/><xsl:text>(testo illeggibile, a causa di testo o timbro sovrapposto)</xsl:text>
					</xsl:element>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>[...]</xsl:text>
					<xsl:element name="span">
						<xsl:attribute name="class">popuptext</xsl:attribute>
						<i><xsl:value-of select="."/></i><br/><xsl:text> (testo illeggibile, causa danno)</xsl:text>
					</xsl:element>
				</xsl:otherwise>
			</xsl:choose>
		</a>
	</xsl:template>

	<!--templace gap-->
	<xsl:template match="tei:gap">
		<a class="popup" onclick="myFunction(this)">
			<xsl:text>[]</xsl:text>
			<xsl:element name="span">
				<xsl:attribute name="class">popuptext</xsl:attribute>
				<xsl:text>Interno del timbro illeggibile</xsl:text>
			</xsl:element>
		</a>
	</xsl:template>

	<!--templace abbr-->
	<xsl:template match="tei:abbr">
		<a class="popup" onclick="myFunction(this)">
			<xsl:value-of select="."/><xsl:text>&#160;</xsl:text>
			<xsl:element name="span">
				<xsl:attribute name="class">popuptext</xsl:attribute>
				<xsl:for-each select="..">
					<xsl:text>Estensione:</xsl:text><br/><xsl:value-of select="tei:expan"/>
				</xsl:for-each>
			</xsl:element>
		</a>
	</xsl:template>

	<!--template placeName-->
	<xsl:template match="tei:placeName">
		<a class="popup" onclick="myFunction(this)">
			<xsl:value-of select="node() except supplied"/>
			<xsl:if test="@ref='#MO'">
				<xsl:element name="span">
					<xsl:attribute name="class">popuptext</xsl:attribute>
					<xsl:text>Modena (MO), Emilia Romagna</xsl:text>
				</xsl:element>
			</xsl:if>
			<xsl:if test="@ref='#RV'">
				<xsl:element name="span">
					<xsl:attribute name="class">popuptext</xsl:attribute>
					<xsl:text>Ravenna (RA), Emilia Romagna</xsl:text>
				</xsl:element>
			</xsl:if>
		</a>
	</xsl:template>

	<!--template c per il glifo della doppia s-->
	<xsl:template match="tei:c">
		<a class="popup" onclick="myFunction(this)">
			<i><xsl:value-of select="."/></i>
			<xsl:element name="span">
				<xsl:attribute name="class">popuptext</xsl:attribute>
				<xsl:text>Rappresentazione carattere tipografico:</xsl:text><br/><xsl:value-of select="@corresp"/>
			</xsl:element>
		</a>
	</xsl:template>

	<!--template w-->
	<xsl:template match="tei:w">
		<xsl:value-of select="node() except supplied"/>
	</xsl:template>

	<!--template per teiHeader-->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc">
		<!--cartolina-->
		<xsl:choose>
			<xsl:when test="tei:msDesc/tei:msIdentifier/tei:idno = '7694_081_001/002'">
				<h2>Cartolina 81</h2>
			</xsl:when>
			<xsl:otherwise>
				<h2>Cartolina 94</h2>
			</xsl:otherwise>
		</xsl:choose>
		<!--titolo opera fronte della cartolina-->
		<h3>
			<xsl:value-of select="tei:bibl/tei:title"/>
		</h3>
		<h3>
			<b>Opera di </b><i><xsl:value-of select="tei:bibl/tei:author"/></i>
		</h3>
		<p>
			<b>Stampato a </b><i><xsl:value-of select="tei:bibl/tei:pubPlace"/></i> nel <i><xsl:value-of select="tei:bibl/tei:date"/></i>
		</p>
		<p>
			<b>Luogo di conservazione: </b><i><xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:repository"/></i>, <i><xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:settlement"/></i>, <i><xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:country"/></i>
		</p>
		<p>
			<b>Codice identificativo: </b><i><xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:idno"/></i>
		</p>	
		<h4><b>Descrizione fisica del medium</b></h4>
		<ul>
			<li>
				<b>Medium: </b> <xsl:value-of select="tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:objectType"/>
			</li>
			<li>
				<b>Materiale: </b> <xsl:value-of select="tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:material"/>
			</li>
			<li>
				<b>Dimensione: </b>  <xsl:value-of select="tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:height"/>x<xsl:value-of select="tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:width"/><xsl:value-of select="tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/@unit"/>
			</li>
			<li>
				<b>Stato di conservazione: </b> <xsl:value-of select="tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/>
			</li>
		</ul>
	</xsl:template>

	<!--codice catalogazione e riferimenti recapito-->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[@type='retro']/tei:div[@type='destination']/tei:div">
		<p>
			Codice di catalogazione: <xsl:value-of select="tei:p/tei:span" />
		</p>
		<p>Riferimenti recapito:</p>
		<xsl:for-each select="tei:p[1]/tei:address/tei:addrLine[1]/tei:choice">
			<xsl:apply-templates select="tei:abbr"/>
		</xsl:for-each> 
		<xsl:for-each select="tei:p[1]/tei:address/tei:addrLine[position()>1]">
			<br/><xsl:apply-templates/>
		</xsl:for-each>
	</xsl:template>

	<!--timbri postali-->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[2]/tei:div[@type='destination']/tei:p[1]">
		<xsl:if test="@xml:id='timbri81'">
			<xsl:element name="img">
				<xsl:attribute name="src">cartoline/timbro81.jpeg</xsl:attribute>
			</xsl:element>
			<ol>Timbri:
			<!--timbri cartolina 81-->
				<xsl:for-each select="tei:stamp">
					<xsl:if test="@facs='#timbroSxB81'"> 
						<li>
							<xsl:apply-templates select="tei:placeName"/><xsl:apply-templates select="tei:placeName/tei:supplied"/> - <xsl:apply-templates select="tei:w"/><xsl:apply-templates select="tei:w/tei:supplied"/> - <xsl:apply-templates select="tei:gap"/>
						</li>
					</xsl:if>
					<xsl:if test="@facs='#timbroDxA81'">
						<li>
							<xsl:apply-templates select="tei:placeName/tei:unclear"/> - <xsl:apply-templates select="tei:w"/><xsl:apply-templates select="tei:w/tei:supplied"/> - <xsl:apply-templates select="tei:gap[1]"/>
						</li>
					</xsl:if>
				</xsl:for-each>
			</ol>
		</xsl:if>
		<!--timbri cartolina 94-->
		<xsl:if test="@xml:id='timbri94'">
			<xsl:element name="img">
				<xsl:attribute name="src">cartoline/timbro94.jpeg</xsl:attribute>
			</xsl:element>
			<ol>Timbri:
				<xsl:for-each select="tei:stamp">
					<xsl:if test="@facs='#timbroMoSx94'"> 
						<li>
							<xsl:apply-templates select="tei:placeName/tei:unclear"/> - <xsl:apply-templates select="tei:supplied"/> - <xsl:apply-templates select="tei:gap"/>
						</li>
					</xsl:if>
					<xsl:if test="@facs='#timbroMoC94'">
						<li>
							<xsl:apply-templates select="tei:placeName"/> - <xsl:apply-templates select="tei:gap[1]"/> - <xsl:apply-templates select="tei:gap[2]"/>
						</li>
					</xsl:if>
					<xsl:if test="@facs='#timbroMoDx94'"> 
						<li>
							<xsl:apply-templates select="tei:placeName"/><xsl:apply-templates select="tei:placeName/tei:damage/tei:supplied"/> - <xsl:apply-templates select="tei:gap[1]"/> - <xsl:apply-templates select="tei:gap[2]"/>
						</li>
					</xsl:if>
					<xsl:if test="@facs='#timbroRvC94'"> 
						<li>
							<xsl:apply-templates select="tei:placeName"/><xsl:apply-templates select="tei:placeName/tei:supplied"/> - <xsl:value-of select="tei:num"/> - <xsl:apply-templates select="tei:gap[1]"/>
						</li>
					</xsl:if>
					<xsl:if test="@facs='#timbroNDx94'"> 
						<li>
							<xsl:value-of select="tei:num"/>
						</li>
					</xsl:if>
					<xsl:if test="@facs='#timbroNC94'"> 
						<li>
							<xsl:apply-templates select="tei:gap[1]"/>
						</li>
					</xsl:if>
				</xsl:for-each>
			</ol>
		</xsl:if>
	</xsl:template>

	<!--francobolli postali-->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[2]/tei:div[@type='destination']/tei:p[2]">
		<!--francobollo cartolin 81-->
		<xsl:if test="@xml:id='francobolli81'">
            <ol>Francobolli:
                <li>
                    <xsl:apply-templates select="tei:stamp" />
                </li>
            </ol>
            <xsl:element name="img">
                <xsl:attribute name="src">cartoline/francobollo81.jpeg</xsl:attribute>
            </xsl:element>
        </xsl:if>
		<!--francobolli cartolin 94-->
		<xsl:if test="@xml:id='francobolli94'">
            <ol>Francobolli:    
                <xsl:for-each select="tei:stamp">
                    <xsl:if test="@facs='#francobolloDx94'">
                        <li>
                            <xsl:apply-templates/>
                        </li>
                    </xsl:if>
                    <xsl:if test="@facs='#francobolloSx94'">
                        <li>
                            <xsl:apply-templates/>
                        </li>
                    </xsl:if>
                </xsl:for-each>
            </ol>
            <xsl:element name="img">
                <xsl:attribute name="src">cartoline/francobollo94.jpeg</xsl:attribute>
            </xsl:element>
        </xsl:if>
	</xsl:template>

	<!--footer-->
	<xsl:template match="tei:teiCorpus/tei:teiHeader/tei:fileDesc">
		<p>Crediti</p>
		<div class="crediti1">
			<!--trascrittori-->
			<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:resp"/>
			<ul>
				<li>
					<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name[1]"/>,
				</li>
				<li>
					<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name[2]"/>,
				</li>
				<li>
					<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name[3]"/>
				</li>
			</ul><br/>
			<!--ente di appartenenza-->
			<xsl:value-of select="tei:titleStmt/tei:respStmt[2]/tei:resp"/>
			<ul>
				<li>
					<xsl:value-of select="tei:titleStmt/tei:respStmt[2]/tei:name"/>
				</li>
			</ul><br/>
			<!--edizione-->
			<xsl:value-of select="tei:editionStmt/tei:edition"/>
			<xsl:value-of select="tei:editionStmt/tei:date"/>
			<!--codificatori-->
			<xsl:value-of select="tei:editionStmt/tei:respStmt[1]/tei:resp"/>
			<ul>
				<li>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[1]/tei:name[1]"/>
				</li>
				<li>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[1]/tei:name[2]"/>
				</li>
				<li>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[1]/tei:name[3]"/>
				</li>
			</ul><br/>
		</div>
		<div class="crediti2">
			<!--compilatore-->
			<xsl:value-of select="tei:editionStmt/tei:respStmt[2]/tei:resp"/>
			<ul>
				<li>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[2]/tei:name"/>
				</li>
			</ul><br/>
			<!--responsabile  scientifico-->
			<xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:resp"/>
			<ul>
				<li>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:name[1]"/>
				</li>
				<li>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:name[2]"/>
				</li>
			</ul><br/>
			<!--responsabile funzionario-->
			<xsl:value-of select="tei:editionStmt/tei:respStmt[4]/tei:resp"/>
			<ul>
				<li>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[4]/tei:name"/>
				</li>
			</ul><br/>
			<!--pubblicazione-->
			<p>Pubblicato da: <xsl:value-of select="tei:publicationStmt/tei:publisher"/></p> 
			<xsl:value-of select="tei:publicationStmt/tei:pubPlace"/><br/>
			<xsl:value-of select="tei:publicationStmt/tei:availability/tei:p"/><br/>
			<xsl:value-of select="tei:publicationStmt/tei:date"/><br/>
			<xsl:value-of select="tei:publicationStmt/tei:distributor"/><br/>
			<xsl:value-of select="tei:publicationStmt/tei:address/tei:addrLine[1]"/>,
			<xsl:value-of select="tei:publicationStmt/tei:address/tei:addrLine[2]"/>
		</div>
	</xsl:template>
</xsl:stylesheet>