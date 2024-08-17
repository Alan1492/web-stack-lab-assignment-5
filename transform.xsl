<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:br="http://www.bikerental.com"
  exclude-result-prefixes="br">

  <xsl:output method="html" indent="yes"/>

  <!-- Template to match the root element -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Bike Rentals</title>
      </head>
      <body>
        <h1>Current Bike Rentals</h1>
        <table border="1">
          <thead>
            <tr>
              <th>Bike ID</th>
              <th>Type</th>
              <th>Name</th>
              <th>Rental Date</th>
              <th>Return Date</th>
              <th>Rental Price</th>
              <th>Renter Name</th>
              <th>Location</th>
            </tr>
          </thead>
          <tbody>
            <!-- Use proper namespace prefix to select elements -->
            <xsl:for-each select="//br:bikeRental/br:bike">
              <tr>
                <td><xsl:value-of select="@id"/></td>
                <td><xsl:value-of select="@type"/></td>
                <td><xsl:value-of select="br:name"/></td>
                <td><xsl:value-of select="br:rentalDate"/></td>
                <td><xsl:value-of select="br:returnDate"/></td>
                <td><xsl:value-of select="br:rentalPrice"/></td>
                <td><xsl:value-of select="br:renterName"/></td>
                <td><xsl:value-of select="br:location"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

        <h1>Bike Rent Details</h1>
        <table border="1">
          <thead>
            <tr>
              <th>Bike ID</th>
              <th>Name</th>
              <th>Description</th>
              <th>Rent</th>
              <th>Stock</th>
            </tr>
          </thead>
          <tbody>
            <!-- Use default namespace to select elements -->
            <xsl:for-each select="//br:Rents/br:Bikes">
              <tr>
                <td><xsl:value-of select="br:id"/></td>
                <td><xsl:value-of select="br:name"/></td>
                <td><xsl:value-of select="br:description"/></td>
                <td><xsl:value-of select="br:rent"/></td>
                <td><xsl:value-of select="br:stock"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>