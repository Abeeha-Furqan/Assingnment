<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="HN.Stationaries">

    <html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Document</title>
    </head>
    <body>
       <h1 bgcolor ="black" color="white">HN.STATIONARIES</h1>
        <table border= "2">
<tr bgcolor="skyblue">
    <th>Product ID</th>
    <th>Product Name</th>
    <th>Quantity</th>
    <th>Price per unit</th>
    <th>Price per Dozen</th>
    <th>In Stock</th>
</tr>

<xsl:for-each select="stationary">
    <xsl:if test=" In.stock ='Yes'">
    <tr bgcolor= "plum">
        <td><xsl:value-of select="product.id"></xsl:value-of></td>
        <td><xsl:value-of select="product.name"></xsl:value-of></td>
        <td><xsl:value-of select="quantity"></xsl:value-of></td>
        <td><xsl:value-of select="price.per.unit"></xsl:value-of></td>
        <td><xsl:value-of select="price.per.dozen"></xsl:value-of></td>
        <td><xsl:value-of select="In.stock"></xsl:value-of></td>
    </tr>
</xsl:if>
</xsl:for-each>
        </table>

    </body>
    </html>
</xsl:template>
</xsl:stylesheet>