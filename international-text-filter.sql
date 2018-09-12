SELECT
  custid, smsdir, from_num, to_num, count(*)
FROM
  `mdr_rating.mdr_mdr_*`
WHERE
  status = 'delivered' and (rectype = 0
and( ((from_num not like '+1%') or (to_num not like '+1%'))/*Querying for International #'s not starting in +1*/
  /*Querying for International #'s that start in +1...*/
  /*CANADA Start*/
  OR((from_num LIKE ('+1204%'))
  OR (from_num LIKE ('+1226%'))
  OR (from_num LIKE ('+1236%'))
  OR (from_num LIKE ('+1249%'))
  OR (from_num LIKE ('+1250%'))
  OR (from_num LIKE ('+1289%'))
  OR (from_num LIKE ('+1306%'))
  OR (from_num LIKE ('+1343%'))
  OR (from_num LIKE ('+1365%'))
  OR (from_num LIKE ('+1403%'))
  OR (from_num LIKE ('+1416%'))
  OR (from_num LIKE ('+1418%'))
  OR (from_num LIKE ('+1431%'))
  OR (from_num LIKE ('+1437%'))
  OR (from_num LIKE ('+1438%'))
  OR (from_num LIKE ('+1450%'))
  OR (from_num LIKE ('+1506%'))
  OR (from_num LIKE ('+1514%'))
  OR (from_num LIKE ('+1519%'))
  OR (from_num LIKE ('+1548%'))
  OR (from_num LIKE ('+1579%'))
  OR (from_num LIKE ('+1581%'))
  OR (from_num LIKE ('+1587%'))
  OR (from_num LIKE ('+1604%'))
  OR (from_num LIKE ('+1613%'))
  OR (from_num LIKE ('+1639%'))
  OR (from_num LIKE ('+1647%'))
  OR (from_num LIKE ('+1705%'))
  OR (from_num LIKE ('+1709%'))
  OR (from_num LIKE ('+1778%'))
  OR (from_num LIKE ('+1780%'))
  OR (from_num LIKE ('+1782%'))
  OR (from_num LIKE ('+1807%'))
  OR (from_num LIKE ('+1819%'))
  OR (from_num LIKE ('+1825%'))
  OR (from_num LIKE ('+1867%'))
  OR (from_num LIKE ('+1873%'))
  OR (from_num LIKE ('+1902%'))
  OR (from_num LIKE ('+1905%'))
  OR (to_num LIKE ('+1204%'))
  OR (to_num LIKE ('+1226%'))
  OR (to_num LIKE ('+1236%'))
  OR (to_num LIKE ('+1249%'))
  OR (to_num LIKE ('+1250%'))
  OR (to_num LIKE ('+1289%'))
  OR (to_num LIKE ('+1306%'))
  OR (to_num LIKE ('+1343%'))
  OR (to_num LIKE ('+1365%'))
  OR (to_num LIKE ('+1403%'))
  OR (to_num LIKE ('+1416%'))
  OR (to_num LIKE ('+1418%'))
  OR (to_num LIKE ('+1431%'))
  OR (to_num LIKE ('+1437%'))
  OR (to_num LIKE ('+1438%'))
  OR (to_num LIKE ('+1450%'))
  OR (to_num LIKE ('+1506%'))
  OR (to_num LIKE ('+1514%'))
  OR (to_num LIKE ('+1519%'))
  OR (to_num LIKE ('+1548%'))
  OR (to_num LIKE ('+1579%'))
  OR (to_num LIKE ('+1581%'))
  OR (to_num LIKE ('+1587%'))
  OR (to_num LIKE ('+1604%'))
  OR (to_num LIKE ('+1613%'))
  OR (to_num LIKE ('+1639%'))
  OR (to_num LIKE ('+1647%'))
  OR (to_num LIKE ('+1705%'))
  OR (to_num LIKE ('+1709%'))
  OR (to_num LIKE ('+1778%'))
  OR (to_num LIKE ('+1780%'))
  OR (to_num LIKE ('+1782%'))
  OR (to_num LIKE ('+1807%'))
  OR (to_num LIKE ('+1819%'))
  OR (to_num LIKE ('+1825%'))
  OR (to_num LIKE ('+1867%'))
  OR (to_num LIKE ('+1873%'))
  OR (to_num LIKE ('+1902%'))
  OR (to_num LIKE ('+1905%'))) /*Canada End*/ 
  /*American Samoa Start */
  OR ((from_num LIKE ('+1684%'))
  OR (to_num LIKE ('+1684%')))/*Finish*/ 
  /*Anduilla Start*/
  OR ((from_num LIKE ('+1264%'))
  OR (to_num LIKE ('+1264%')))/*Finish*/ 
  /*Antigua and Barbuda Start*/
  OR ((to_num LIKE ('+1268%'))
  OR (from_num LIKE ('+1268%')))/*Finish*/ 
  /*Bahamas Start*/
  OR ((to_num LIKE ('+1242%'))
  OR (from_num LIKE ('+1242%')))/*Finish*/ 
  /*Barbados Start*/
  OR ((to_num LIKE ('+1246%'))
  OR (from_num LIKE ('+1246%')))/*Finish*/ 
  /*Bermuda Start*/
  OR ((to_num LIKE ('+1441%'))
  OR (from_num LIKE ('+1441%')))/*Finish*/ 
  /*British Virgin Islands Start*/
  OR ((to_num LIKE ('+1284%'))
  OR (from_num LIKE ('+1284%')))/*BVI Finish*/ 
  /*Cayman Island Start*/
  OR ((to_num LIKE ('+1345%'))
  OR (from_num LIKE ('+1345%')))/*Finish*/ 
  /*Dominica Start*/
  OR ((to_num LIKE ('+1767%'))
  OR (from_num LIKE ('+1767%')))/*Finish */ 
  /*D.Republic Start*/
  OR ((to_num LIKE ('+1809%'))
  OR (from_num LIKE ('+1809%'))
  OR (to_num LIKE ('+1829%'))
  OR (from_num LIKE ('+1829%'))
  OR (to_num LIKE ('+1849%'))
  OR (from_num LIKE ('+1849%')))/*Finish*/ 
  /*Grenada Start*/
  OR ((to_num LIKE ('+1473%'))
  OR (from_num LIKE ('+1473%')))/*Finish*/ 
  /*Guam Start*/
  OR (to_num LIKE (('+1671%'))
  OR (from_num LIKE ('+1671%')))/*Finish*/ 
  /*Jamaica Start*/
  OR ((to_num LIKE ('+1876%'))
  OR (from_num LIKE ('+1876%')))/*Finish*/ 
  /*Monserrat Start*/
  OR ((to_num LIKE ('+1664%'))
  OR (from_num LIKE ('+1664%')))/*Finish*/ 
  /*Northern Mariana Islands Start*/
  OR ((to_num LIKE ('+1670%'))
  OR (from_num LIKE ('+1670%')))/*Finish*/ 
 /*Puerto Rico Start*/
  OR ((to_num LIKE ('+1787%'))
  OR (from_num LIKE ('+1787%'))
  OR (to_num LIKE ('+1939%'))
  OR (from_num LIKE ('+1939%')))/*Finish*/ 
  /*ST. Kitts and Nevis Start*/
  OR ((to_num LIKE ('+1869%'))
  OR (from_num LIKE ('+1869%')))/*Finish*/ 
  /*ST.Lucia Start*/
  OR ((to_num LIKE ('+1758%'))
  OR (from_num LIKE ('+1758%')))/*Finish*/ 
  /*ST. Vincent and the Grenadines Start*/
  OR ((to_num LIKE ('+1784%'))
  OR (from_num LIKE ('+1784%')))/*Finish*/ 
  /*Sint Maarten Start*/
  OR ((to_num LIKE ('+1721%'))
  OR (from_num LIKE ('+1721%')))/*Finish*/ 
  /*Trinidad & Tobago Start*/
  OR ((to_num LIKE ('+1868%'))
  OR (from_num LIKE ('+1868%')))/*Finish*/ 
  /*Turks and Caicos Islands Start*/
  OR ((to_num LIKE ('+1649%'))
  OR (from_num LIKE ('+1649%')))/*Finish*/ 
  /*US Virgin Islands Start*/
  OR ((to_num LIKE ('+1340%'))
  OR (from_num LIKE ('+1340%')))))/*Finish*/
Group BY 
 custid, smsdir, from_num, to_num;