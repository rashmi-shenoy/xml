<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/emp">
<html>
<head>
<style>
body
	{
		background-color: white;
		color: black;
		font-size: 20px;
		padding: 35px;
		font-family: Cambria;
	}
	th
	{
		background-color: white;
		color: blue;
		font-size: 20px;
	}
	td
	{
		background-color: white;
		color: green;
		font-size: 20px;
	}
	p
	{
		text-align: center;
		background-color: white;
	}
	span
	{
		color: red;
		font-size: 20px;
		font-weight: bold;
	}
</style>
</head>
<body>
<h1 align="center">Employees' Details</h1>
<p>1. Display all employees' details.</p>
<table border="1" align="center">
<tr>
	<th>Eno</th>
	<th>Name</th>
	<th>Father Name</th>
	<th>DOB</th>
	<th>City</th>
	<th>State</th>
	<th>Qualification</th>
	<th>Salary</th>
</tr>
	<xsl:for-each select="s">
<tr>
	<td><xsl:value-of select="eno"/></td>
	<td><xsl:value-of select="name"/></td>
	<td><xsl:value-of select="fathername"/></td>
	<td><xsl:value-of select="DOB"/></td>
	<td><xsl:value-of select="city"/></td>
	<td><xsl:value-of select="state"/></td>
	<td><xsl:value-of select="qualification"/></td>
	<td><xsl:value-of select="salary"/></td>
</tr>
	</xsl:for-each>
</table>
<p>2. Display employees' Last name by ascending Order.</p>
<table border="1" align="center" >
<tr>
	<th>Eno</th>
	<th>Name</th>
	<th>Father Name</th>
	<th>DOB</th>
	<th>City</th>
	<th>State</th>
	<th>Qualification</th>
	<th>Salary</th>
</tr>
	<xsl:for-each select="s">
	<xsl:sort select="name/lname"/>
<tr>
	<td><xsl:value-of select="eno"/></td>
	<td><xsl:value-of select="name"/></td>
	<td><xsl:value-of select="fathername"/></td>
	<td><xsl:value-of select="DOB"/></td>
	<td><xsl:value-of select="city"/></td>
	<td><xsl:value-of select="state"/></td>
	<td><xsl:value-of select="qualification"/></td>
	<td><xsl:value-of select="salary"/></td>
</tr>
	</xsl:for-each>
</table>
<p>3. Display employees' salary by descending order</p>
<table border="1" align="center">
<tr>
	<th>Eno</th>
	<th>Name</th>
	<th>Father Name</th>
	<th>DOB</th>
	<th>City</th>
	<th>State</th>
	<th>Qualification</th>
	<th>Salary</th>
</tr>
	<xsl:for-each select="s">
	<xsl:sort select="salary" order="descending"/>
<tr>
	<td><xsl:value-of select="eno"/></td>
	<td><xsl:value-of select="name"/></td>
	<td><xsl:value-of select="fathername"/></td>
	<td><xsl:value-of select="DOB"/></td>
	<td><xsl:value-of select="city"/></td>
	<td><xsl:value-of select="state"/></td>
	<td><xsl:value-of select="qualification"/></td>
	<td><xsl:value-of select="salary"/></td>
</tr>
	</xsl:for-each>
</table>
<p>4. Display employees' details whose salary > 50000.</p>
<table border="1" align="center">
<tr>
	<th>Eno</th>
	<th>Name</th>
	<th>Father Name</th>
	<th>DOB</th>
	<th>City</th>
	<th>State</th>
	<th>Qualification</th>
	<th>Salary</th>
</tr>
	<xsl:for-each select="s">
	<xsl:if test="salary > 50000"> 
<tr>
	<td><xsl:value-of select="eno"/></td>
	<td><xsl:value-of select="name"/></td>
	<td><xsl:value-of select="fathername"/></td>
	<td><xsl:value-of select="DOB"/></td>
	<td><xsl:value-of select="city"/></td>
	<td><xsl:value-of select="state"/></td>
	<td><xsl:value-of select="qualification"/></td>
	<td><xsl:value-of select="salary"/></td>
</tr>
	</xsl:if>   
	</xsl:for-each>
</table>
<p>5. It checks key as DOB to be present and then prints the employee's details, otherwise displays an error message.</p>
<table border="1" align="center">
<tr>
	<th>Eno</th>
	<th>Name</th>
	<th>Father Name</th>
	<th>DOB</th>
	<th>City</th>
	<th>State</th>
	<th>Qualification</th>
	<th>Salary</th>
</tr>
	<xsl:for-each select = "s"> 
	<xsl:if test="DOB != ' '">
<tr>
	<td><xsl:value-of select="eno"/></td>
	<td><xsl:value-of select="name"/></td>
	<td><xsl:value-of select="fathername"/></td>
	<td><xsl:value-of select="DOB"/></td>
	<td><xsl:value-of select="city"/></td>
	<td><xsl:value-of select="state"/></td>
	<td><xsl:value-of select="qualification"/></td>
	<td><xsl:value-of select="salary"/></td>
</tr>
	</xsl:if>
	<xsl:if test="DOB = ' '">
		<p>Error: DOB not Found for <span><xsl:value-of select="eno"/></span></p>
	 </xsl:if>
	</xsl:for-each>
</table>

<p>6. Calculate employees' salary.</p>
<table border="1" align="center">
<tr>
	<th>Eno</th>
	<th>Name</th>
	<th>Father Name</th>
	<th>DOB</th>
	<th>City</th>
	<th>State</th>
	<th>Qualification</th>
	<th>Salary</th>
	<th>Grade</th>   
</tr>
        <xsl:for-each select="s">   
<tr>
	<td><xsl:value-of select="eno"/></td>
	<td><xsl:value-of select="name"/></td>
	<td><xsl:value-of select="fathername"/></td>
	<td><xsl:value-of select="DOB"/></td>
	<td><xsl:value-of select="city"/></td>
	<td><xsl:value-of select="state"/></td>
	<td><xsl:value-of select="qualification"/></td>
	<td><xsl:value-of select="salary"/></td>
	<td>   
            <xsl:choose>   
             <xsl:when test="salary &gt; 100000">   
              High   
             </xsl:when>   
             <xsl:when test="salary &gt; 50000 and salary &lt; 100000">   
              Medium   
             </xsl:when>   
             <xsl:when test="salary &lt; 50000">   
              Low   
             </xsl:when>   
            </xsl:choose>   
         </td>   
</tr>
	</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>