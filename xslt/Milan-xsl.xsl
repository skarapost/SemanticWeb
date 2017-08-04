<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>A.C. Milan</title>
			</head>
			<body bgcolor="#e0e2e6">
				<xsl:apply-templates select="team/clubInformation"/>
				<h2 align="center">Staff</h2>
				<p align="center">Here there are some information about the staff of Milan</p>
				<br/>
				<xsl:apply-templates select="team/staff"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="clubInformation">
		<h1 align="center">A.C. Milan</h1>
		<br/>
		<p align="center">A.C. Milan is one of the greatest teams in the world. Milan is well-known for some of the best defenders that ever existed. Some of them are Paolo Maldini, Allessandro Nesta and Costacurta. The latest years Milan has a descending route, but it is a matter of time to rise again.</p>
		<h3>Stadium</h3>
		<p align="left">The club is accomodated in <em>
				<xsl:value-of select="stadium[1]"/>
			</em> which is also the house of the main rival <xsl:value-of select="rival[1]"/>. San Siro's capacity is aproximately <em>
				<xsl:value-of select="capacity"/>
			</em>.</p>
		<br/>
		<h3>Rivals</h3>
		<p align="left">
			<ol>
				<li><xsl:value-of select="rival[position() = 2]"/></li>
				<li><xsl:value-of select="rival[position() = 3]"/></li>
				<li><xsl:value-of select="rival[4]"/></li>
				<li><xsl:value-of select="rival[last()]"/></li>
			</ol>
		</p>
		<br/>
	</xsl:template>
	<xsl:template match="staff">
		<h3>Manager</h3>
		<xsl:apply-templates select="person/manager"/>
		<h3>Coaches</h3>
		<xsl:apply-templates select="person/coach">
			<xsl:sort select="@discipline" order="descending"/>
			<xsl:sort select="@determination" order="descending"/>
			<xsl:sort select="@motivation" order="descending"/>
		</xsl:apply-templates>
		<br/>
		<p>Milan is also famous about its medical and scouting department. Some of the best physiotherapists and scouters in the world are members of Milan.</p><br/>
		<h3>World Class Physiotherapists</h3>
		<xsl:for-each select="person/physiotherapist[(@motivation=20)and(@physiotherapy=20)]">
			<h5>
				<xsl:value-of select="."/>
			</h5>
			<table border="2">
				<tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				<tr><td>Personality:</td><td><xsl:value-of select="@personality"/></td></tr>
				<tr><td>Motivation:</td><td><xsl:value-of select="@motivation"/></td></tr>
				<tr><td>Physiotherapy:</td><td><xsl:value-of select="@physiotherapy"/></td></tr>
			</table>
		</xsl:for-each>
		<h3>World Class Scouters</h3>
		<xsl:for-each select="person/scouter[@nowStateScouting &gt; 18]">
			<h5><xsl:value-of select="."/></h5>
			<table border="2">
				<tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				<tr><td>Personality:</td><td><xsl:value-of select="@personality"/></td></tr>
				<tr><td>BestKnowledge:</td><td><xsl:value-of select="@bestKnowledge"/></td></tr>
				<tr><td>Potential State Scouting:</td><td><xsl:value-of select="@potentialStateScouting"/></td></tr>
				<tr><td>Now State Scouting:</td><td><xsl:value-of select="@nowStateScouting"/></td></tr>
			</table>
		</xsl:for-each>
	</xsl:template>	
	<xsl:template match="manager">
		<h5><xsl:value-of select="."/></h5>
		<table border="2">
			<tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
			<tr><td>Personality:</td><td><xsl:value-of select="@personality"/></td></tr>
			<tr><td>Man Management:</td><td><xsl:value-of select="@manManagement"/></td></tr>
			<tr><td>Tactics Knowledge:</td><td><xsl:value-of select="@tacticsKnowledge"/></td></tr>
			<tr><td>Favourite Tactics Formation:</td><td><xsl:value-of select="@favouriteTacticsFormation"/></td></tr>
			<tr><td>Favourite Players of Team:</td><td><xsl:value-of select="@favouritePlayersOfTeam"/></td></tr>
            <tr><td>Previous Teams:</td><td><xsl:value-of select="@previousTeams"/></td></tr>
		</table>
	</xsl:template>
	<xsl:template match="coach">
		<h5><xsl:value-of select="."/></h5>
		<table border="2">
			<tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
			<tr><td>Strong Domain:</td><td><xsl:value-of select="@strongDomain"/></td></tr>
			<tr><td>Personality:</td><td><xsl:value-of select="@personality"/></td></tr>
			<tr><td>Determination:</td><td><xsl:value-of select="@determination"/></td></tr>
			<tr><td>Motivation:</td><td><xsl:value-of select="@motivation"/></td></tr>
			<tr><td>Discipline:</td><td><xsl:value-of select="@discipline"/></td></tr>
		</table>
	</xsl:template>
</xsl:stylesheet>