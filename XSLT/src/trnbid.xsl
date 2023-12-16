<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Item bets</h2>
  <table border="1">
    <tr bgcolor="#000066">
        <th style="text-align:left">Seller Name</th>
        <th style="text-align:left">Seller Rating</th> 
        <th style="text-align:left">Payment Type</th>
        <th style="text-align:left">Shipping Info</th>
        <th style="text-align:left">Buyer Pro. Ser.</th>
        <th style="text-align:left">Current bid</th>
        <th style="text-align:left">Time left</th>
        <th style="text-align:left">H. bidder n.</th>
        <th style="text-align:left">H. bidder r.</th>
        <th style="text-align:left">Num items</th>
        <th style="text-align:left">Num bids</th>
        <th style="text-align:left">Started</th>
        <th style="text-align:left">Bid increments</th>
        <th style="text-align:left">Location</th>
        <th style="text-align:left">Opened</th>
        <th style="text-align:left">Closed</th>
        <th style="text-align:left">Id num</th>
        <th style="text-align:left">Notes</th>
        <th style="text-align:left">H. bid ammount</th>
        <th style="text-align:left">Quantity</th>
        <th style="text-align:left">Memory</th>
        <th style="text-align:left">Hard drive</th>
        <th style="text-align:left">CPU</th>
        <th style="text-align:left">Brand</th>
        <th style="text-align:left">Description</th>
    </tr>
    <xsl:for-each select="root/listing">
    <tr>
        <xsl:attribute name="style">
            <xsl:choose>
                <xsl:when test="position() mod 2 = 1">background-color: #8080ff;</xsl:when>
                <xsl:otherwise>background-color: #0000ff;</xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
        <td><xsl:value-of select="seller_info/seller_name"/></td>
        <td><xsl:value-of select="seller_info/seller_rating"/></td>
        <td><xsl:value-of select="payment_type"/></td>
        <td><xsl:value-of select="shipping_info"/></td>
        <td><xsl:value-of select="buyer_protection_info"/></td>
        <td><xsl:value-of select="auction_info/current_bid"/></td>
        <td><xsl:value-of select="auction_info/time_left"/></td>
        <td><xsl:value-of select="auction_info/high_bidder/bidder_name"/></td>
        <td><xsl:value-of select="auction_info/high_bidder/bidder_rating"/></td>
        <td><xsl:value-of select="auction_info/num_items"/></td>
        <td><xsl:value-of select="auction_info/num_bids"/></td>
        <td><xsl:value-of select="auction_info/started_at"/></td>
        <td><xsl:value-of select="auction_info/bid_increment"/></td>
        <td><xsl:value-of select="auction_info/location"/></td>
        <td><xsl:value-of select="auction_info/opened"/></td>
        <td><xsl:value-of select="auction_info/closed"/></td>
        <td><xsl:value-of select="auction_info/id_num"/></td>
        <td><xsl:value-of select="auction_info/notes"/></td>
        <td><xsl:value-of select="bid_history/highest_bid_amount"/></td>
        <td><xsl:value-of select="bid_history/quantity"/></td>
        <td><xsl:value-of select="item_info/memory"/></td>
        <td><xsl:value-of select="item_info/hard_drive"/></td>
        <td><xsl:value-of select="item_info/cpu"/></td>
        <td><xsl:value-of select="item_info/brand"/></td>
        <td><xsl:value-of select="item_info/description"/></td>
    </tr>
    </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>