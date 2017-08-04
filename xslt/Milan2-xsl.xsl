<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>A.C. Milan</title>
			</head>
			<body bgcolor="#e0e2e6">
				<h2 align="center" style="top:100px;">Star Players</h2>
				<p align="center" style="top:120px;">Here are some information about the star players of Milan</p>
				<br/>
				<xsl:apply-templates select="team/players"/>
				<h2 align="center" style="position:absolute; top:1700px; left:50px;">Statistics</h2>
				<p align="center" style="position:absolute; top:1750px; left:50px;" >Here you can see some statistics about our team</p>
				<xsl:apply-templates select="team/statistics"/>
				<h2 align="center" style="position:absolute; top:2100px; left:50px;">Youngsters</h2>
				<p align="center" style="position:absolute; top:2150px; left:50px;">Here we mention the players from the first team that can play for Milan U21 also.</p>
                 <table border="2" style="position:absolute; top:2200px; left:50px;">
                    <xsl:for-each select="//person[@age &lt; 21]">
                        <tr><td><xsl:value-of select="."/></td></tr>
                    </xsl:for-each>
                </table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="players">
		<xsl:apply-templates select="person/goalkeeper"/>
		<xsl:apply-templates select="person/player"/>
	</xsl:template>
	<xsl:template match="goalkeeper">
		<xsl:if test="@nickName='Scuffet'">
            <h3 style="position:absolute; top100px; left:50px">Goalkeepers</h3>
			<table border="2" style="position:absolute; top: 200px; left:50px">
				<tr><td>Name:</td><td><xsl:value-of select="@nickName"/></td></tr>
				<tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				<tr><td>Number:</td><td><xsl:value-of select="@number"/></td></tr>
				<tr><td>Aerial:</td><td><xsl:value-of select="@aerial"/></td></tr>
				<tr><td>Shot-Stopping:</td><td><xsl:value-of select="@shot-stopping"/></td></tr>
				<tr><td>Communication:</td><td><xsl:value-of select="@communication"/></td></tr>
				<tr><td>Physical:</td><td><xsl:value-of select="@physical"/></td></tr>
				<tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				<tr>
				    <td>Number of Appearances:</td><td>
						<xsl:variable name="first" select="@numberOfAppearances"/>
						<xsl:if test="//firstAppearances[@appearances=$first]">
							<em>
								<xsl:value-of select="@numberOfAppearances"/>
							</em>
						</xsl:if>
						<xsl:if test="//firstAppearances[@appearances!=$first]">
							<xsl:value-of select="@numberOfAppearances"/>
						</xsl:if>
					</td>
				</tr>
			</table>
			<br/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="player">
		<xsl:if test="@nickName='Calderon'">
			<h3 style="position:absolute; top:500px; left:50px">Defenders</h3>
		</xsl:if>
		<xsl:if test="@nickName='No'">
			<h3 style="position:absolute; top:900px; left:50px">Midfielders</h3>
		</xsl:if>
		<xsl:if test="@nickName='Falcone'">
			<h3 style="position:absolute; top:1320px; left:50px">Forwards</h3>
		</xsl:if>
		<xsl:if test="(@nickName='Calderon')or(@nickName='Borelli')or(@nickName='Shkabara')">
			<xsl:choose>
			    <xsl:when test="@nickName='Calderon'">
			        <table border="2" style="position:absolute; top: 600px; left: 50px">			
				        <tr><td>Name:</td><td><xsl:value-of select="@nickName"/></td></tr>
				        <tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				        <tr><td>Number:</td><td><xsl:value-of select="@number"/></td></tr>
				        <tr><td>Position:</td><td><xsl:value-of select="@position"/></td></tr>
				        <tr><td>Defending:</td><td><xsl:value-of select="@defending"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr><td>Physical:</td><td><xsl:value-of select="@physical"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr>
				            <td>Number of Appearances:</td>
				                <td>
						        <xsl:variable name="first" select="@numberOfAppearances"/>
						        <xsl:if test="//firstAppearances[@appearances=$first]">
							        <em>
								        <xsl:value-of select="@numberOfAppearances"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAppearances[@appearances!=$first]">
							        <xsl:value-of select="@numberOfAppearances"/>
						        </xsl:if>
					        </td>
				        </tr>
			        </table>
			    </xsl:when>
			    <xsl:when test="@nickName='Borelli'">
			        <table border="2" style="position:absolute; top: 600px; left: 400px">			
				        <tr><td>Name:</td><td><xsl:value-of select="@nickName"/></td></tr>
				        <tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				        <tr><td>Number:</td><td><xsl:value-of select="@number"/></td></tr>
				        <tr><td>Position:</td><td><xsl:value-of select="@position"/></td></tr>
				        <tr><td>Defending:</td><td><xsl:value-of select="@defending"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr><td>Physical:</td><td><xsl:value-of select="@physical"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr>
				            <td>Number of Appearances:</td>
				                <td>
						        <xsl:variable name="first" select="@numberOfAppearances"/>
						        <xsl:if test="//firstAppearances[@appearances=$first]">
							        <em>
								        <xsl:value-of select="@numberOfAppearances"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAppearances[@appearances!=$first]">
							        <xsl:value-of select="@numberOfAppearances"/>
						        </xsl:if>
					        </td>
				        </tr>
			        </table>
			    </xsl:when>
			    <xsl:when test="@nickName='Shkabara'">
			        <table border="2" style="position:absolute; top: 600px; left: 750px">			
				        <tr><td>Name:</td><td><xsl:value-of select="@nickName"/></td></tr>
				        <tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				        <tr><td>Number:</td><td><xsl:value-of select="@number"/></td></tr>
				        <tr><td>Position:</td><td><xsl:value-of select="@position"/></td></tr>
				        <tr><td>Defending:</td><td><xsl:value-of select="@defending"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr><td>Physical:</td><td><xsl:value-of select="@physical"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr>
				            <td>Number of Appearances:</td>
				                <td>
						        <xsl:variable name="first" select="@numberOfAppearances"/>
						        <xsl:if test="//firstAppearances[@appearances=$first]">
							        <em>
								        <xsl:value-of select="@numberOfAppearances"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAppearances[@appearances!=$first]">
							        <xsl:value-of select="@numberOfAppearances"/>
						        </xsl:if>
					        </td>
				        </tr>
			        </table>
			    </xsl:when>
			</xsl:choose>
			<br/>
		</xsl:if>
		<xsl:if test="(@nickName='No')or(@nickName='Cubas')or(@nickName='Kloestra')">
		    <xsl:choose>
		        <xsl:when test="@nickName='No'">
			        <table border="2" style="position:absolute; top:1000px; left:50px">
				        <tr><td>Name:</td><td><xsl:value-of select="@nickName"/></td></tr>
				        <tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				        <tr><td>Number:</td><td><xsl:value-of select="@number"/></td></tr>
				        <tr><td>Position:</td><td><xsl:value-of select="@position"/></td></tr>
				        <tr><td>Technical:</td><td><xsl:value-of select="@technical"/></td></tr>
				        <tr><td>Defending:</td><td><xsl:value-of select="@defending"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr><td>Attacking:</td><td><xsl:value-of select="@attacking"/></td></tr>
				        <tr>
				            <td>Number of Assists:</td><td>
						        <xsl:variable name="counter" select="@numberOfAssists"/>
						        <xsl:if test="//firstAssistant[@assists=$counter]">
							        <em>
								        <xsl:value-of select="@numberOfAssists"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAssistant[@assists!=$counter]">
							        <xsl:value-of select="@numberOfAssists"/>
						        </xsl:if>
					        </td>
				        </tr>
				        <tr>
					        <td>Number of Appearances:</td>
					        <td>
						        <xsl:variable name="first" select="@numberOfAppearances"/>
						        <xsl:if test="//firstAppearances[@appearances=$first]">
							        <em>
								        <xsl:value-of select="@numberOfAppearances"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAppearances[@appearances!=$first]">
							        <xsl:value-of select="@numberOfAppearances"/>
						        </xsl:if>
					        </td>
				        </tr>
			        </table>
			        <br/>
			    </xsl:when>
			    <xsl:when test="@nickName='Cubas'">
			        <table border="2" style="position:absolute; top:1000px; left:400px">
				        <tr><td>Name:</td><td><xsl:value-of select="@nickName"/></td></tr>
				        <tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				        <tr><td>Number:</td><td><xsl:value-of select="@number"/></td></tr>
				        <tr><td>Position:</td><td><xsl:value-of select="@position"/></td></tr>
				        <tr><td>Technical:</td><td><xsl:value-of select="@technical"/></td></tr>
				        <tr><td>Defending:</td><td><xsl:value-of select="@defending"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr><td>Attacking:</td><td><xsl:value-of select="@attacking"/></td></tr>
				        <tr>
				            <td>Number of Assists:</td><td>
						        <xsl:variable name="counter" select="@numberOfAssists"/>
						        <xsl:if test="//firstAssistant[@assists=$counter]">
							        <em>
								        <xsl:value-of select="@numberOfAssists"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAssistant[@assists!=$counter]">
							        <xsl:value-of select="@numberOfAssists"/>
						        </xsl:if>
					        </td>
				        </tr>
				        <tr>
					        <td>Number of Appearances:</td>
					        <td>
						        <xsl:variable name="first" select="@numberOfAppearances"/>
						        <xsl:if test="//firstAppearances[@appearances=$first]">
							        <em>
								        <xsl:value-of select="@numberOfAppearances"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAppearances[@appearances!=$first]">
							        <xsl:value-of select="@numberOfAppearances"/>
						        </xsl:if>
					        </td>
				        </tr>
			        </table>
			        <br/>
			    </xsl:when>
			    <xsl:when test="@nickName='Kloestra'">
			        <table border="2" style="position:absolute; top:1000px; left:750px">
				        <tr><td>Name:</td><td><xsl:value-of select="@nickName"/></td></tr>
				        <tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				        <tr><td>Number:</td><td><xsl:value-of select="@number"/></td></tr>
				        <tr><td>Position:</td><td><xsl:value-of select="@position"/></td></tr>
				        <tr><td>Technical:</td><td><xsl:value-of select="@technical"/></td></tr>
				        <tr><td>Defending:</td><td><xsl:value-of select="@defending"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr><td>Attacking:</td><td><xsl:value-of select="@attacking"/></td></tr>
				        <tr>
				            <td>Number of Assists:</td><td>
						        <xsl:variable name="counter" select="@numberOfAssists"/>
						        <xsl:if test="//firstAssistant[@assists=$counter]">
							        <em>
								        <xsl:value-of select="@numberOfAssists"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAssistant[@assists!=$counter]">
							        <xsl:value-of select="@numberOfAssists"/>
						        </xsl:if>
					        </td>
				        </tr>
				        <tr>
					        <td>Number of Appearances:</td>
					        <td>
						        <xsl:variable name="first" select="@numberOfAppearances"/>
						        <xsl:if test="//firstAppearances[@appearances=$first]">
							        <em>
								        <xsl:value-of select="@numberOfAppearances"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAppearances[@appearances!=$first]">
							        <xsl:value-of select="@numberOfAppearances"/>
						        </xsl:if>
					        </td>
				        </tr>
			        </table>
			        <br/>
			    </xsl:when>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="(@nickName='Falcone')or(@nickName='Kane')">
		    <xsl:choose>
		        <xsl:when test="@nickName='Falcone'">
			        <table border="2" style="position:absolute; top:1400px; left:50px">
				        <tr><td>Name:</td><td><xsl:value-of select="@nickName"/></td></tr>
				        <tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				        <tr><td>Number:</td><td><xsl:value-of select="@number"/></td></tr>
				        <tr><td>Position:</td><td><xsl:value-of select="@position"/></td></tr>
				        <tr><td>Technical:</td><td><xsl:value-of select="@technical"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr><td>Attacking:</td><td><xsl:value-of select="@attacking"/></td></tr>
				        <tr><td>Number of Goals:</td>
					        <td>
						        <xsl:variable name="first" select="@numberOfGoals"/>
						        <xsl:if test="//firstScorrer[@goals=$first]">
							        <em>
								        <xsl:value-of select="@numberOfGoals"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstScorrer[@goals!=$first]">
							        <xsl:value-of select="@numberOfGoals"/>
						        </xsl:if>
					        </td>
				        </tr>
				        <tr><td>Number of Appearances:</td>
					        <td>
						        <xsl:variable name="first" select="@numberOfAppearances"/>
						        <xsl:if test="//firstAppearances[@appearances=$first]">
							        <em>
								        <xsl:value-of select="@numberOfAppearances"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAppearances[@appearances!=$first]">
							        <xsl:value-of select="@numberOfAppearances"/>
						        </xsl:if>
					        </td>
				        </tr>
			        </table>
			        <br/>
			        </xsl:when>
			        <xsl:when test="@nickName='Kane'">
			        <table border="2" style="position:absolute; top:1400px; left:350px">
				        <tr><td>Name:</td><td><xsl:value-of select="@nickName"/></td></tr>
				        <tr><td>Age:</td><td><xsl:value-of select="../@age"/></td></tr>
				        <tr><td>Number:</td><td><xsl:value-of select="@number"/></td></tr>
				        <tr><td>Position:</td><td><xsl:value-of select="@position"/></td></tr>
				        <tr><td>Technical:</td><td><xsl:value-of select="@technical"/></td></tr>
				        <tr><td>Mental:</td><td><xsl:value-of select="@mental"/></td></tr>
				        <tr><td>Attacking:</td><td><xsl:value-of select="@attacking"/></td></tr>
				        <tr><td>Number of Goals:</td>
					        <td>
						        <xsl:variable name="first" select="@numberOfGoals"/>
						        <xsl:if test="//firstScorrer[@goals=$first]">
							        <em>
								        <xsl:value-of select="@numberOfGoals"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstScorrer[@goals!=$first]">
							        <xsl:value-of select="@numberOfGoals"/>
						        </xsl:if>
					        </td>
				        </tr>
				        <tr><td>Number of Appearances:</td>
					        <td>
						        <xsl:variable name="first" select="@numberOfAppearances"/>
						        <xsl:if test="//firstAppearances[@appearances=$first]">
							        <em>
								        <xsl:value-of select="@numberOfAppearances"/>
							        </em>
						        </xsl:if>
						        <xsl:if test="//firstAppearances[@appearances!=$first]">
							        <xsl:value-of select="@numberOfAppearances"/>
						        </xsl:if>
					        </td>
				        </tr>
			        </table>
			        <br/>
			        </xsl:when>
			    </xsl:choose>
		</xsl:if>
	</xsl:template>
	<xsl:template match="statistics">
		<xsl:apply-templates select="firstScorer"/>
		<xsl:apply-templates select="firstAssistant"/>
		<xsl:apply-templates select="firstAppearances"/>
		<xsl:apply-templates select="firstSales"/>
	</xsl:template>
	<xsl:template match="firstScorer">
	    <h3 style="position:absolute; top:1850px; left:50px">First Scorrer</h3>
		<table border="2" style="position:absolute; top:1900px; left:50px">
			<tr><td>Name:</td><td><xsl:value-of select="."/></td></tr>
			<tr><td>Goals:</td><td><xsl:value-of select="@goals"/></td></tr>
		</table>
	</xsl:template>
	<xsl:template match="firstAssistant">
	    <h3 style="position:absolute; top:1850px; left:250px">First Assistant</h3>
		<table border="2" style="position:absolute; top:1900px; left:250px">
			<tr><td>Name:</td><td><xsl:value-of select="."/></td></tr>
			<tr><td>Assists:</td><td><xsl:value-of select="@assists"/></td></tr>
		</table>
	</xsl:template>
	<xsl:template match="firstAppearances">
	    <h3 style="position:absolute; top:1850px; left:450px" >Most Appearances</h3>
		<table border="2" style="position:absolute; top:1900px; left:450px">
			<tr><td>Name:</td><td><xsl:value-of select="."/></td></tr>
			<tr><td>Appearances:</td><td><xsl:value-of select="@appearances"/></td></tr>
		</table>
	</xsl:template>
	<xsl:template match="firstSales">
	    <h3 style="position:absolute; top:1850px; left:700px">Most Sales</h3>
		<table border="2" style="position:absolute; top:1900px; left:700px">
			<tr><td>Name:</td><td><xsl:value-of select="."/></td></tr>
			<tr><td>Number of Sales:</td><td><xsl:value-of select="@numberOfSales"/></td></tr>
			<tr><td>Shirt Name:</td><td><xsl:value-of select="@name"/></td></tr>
		</table>
	</xsl:template>
</xsl:stylesheet>