<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
    
  body{
   background-color: lightblue;
   }
div.container {
    width: 100%;
    border: 5px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}


.centre {
    margin: auto;
    width: 65%;
    border: 5px solid #73AD22;
    text-align: left;
}

.right {
    margin: auto;
    width: 35%;
    border: 5px solid #73AD22;
}

.left {
    margin: auto;
    width: 35%;
    border: 5px solid #73AD22;
}

h1 {
    color: yellow;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</body>
<table>
<center><h1>FRESH LAWN MUSHROOM PVT.LTD</h1></center>
</table>			
		</body>	
	

<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding:10px 60px 12px 60px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0,2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
    z-index:999;
}
* {
    box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}

/* Style the top navigation bar */
.topnav {
    overflow: hidden;
    background-color: #333;
}

/* Style the topnav links */
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

/* Create three unequal columns that floats next to each other */
.column {
    float: left;
    padding: 10px;
}

/* Left and right column */
.column.side {
    width: 25%;
}

/* Middle column */
.column.middle {
    width: 50%;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .column.side, .column.middle {
        width: 100%;
    }
}
</style>
<ul>
<li></li>
<li></li>

    <li><a href="temp.jsp">Home</a></li>

  <li><a href="Aboutus.jsp">About us</a></li>
  


  <li><a href="Whatwedo.jsp">What WE Do</a></li>



  <li><a href="Carrier.jsp">Carrier</a></li>
   
 
  <li><a href="contactus.jsp">Contact us</a></li>
   
 
</ul>
<body>
<div class="row">
  <div class="column side">
    <h2>Composting</h2>
    <p>Button Mushrooms(Agaricus bisporus)like all fungi, are heterotrophic organisms, which means, that for their nutrition and metabolism they depend on carbon sources formed earlier (during photosynthesis) by green plants, which are present in straw and in animal manure containing residues of vegetable matter used as animal feed. Therefore,Special compost is used as the substrate for the production of mushrooms.

The Mushroom Contains 92% of water which is drawn in the largest quantity from the compost itself and very less from casing soil .As carbohydrates such as sugar and starch are not found in mushrooms and cellulose ,hemi-cellulose and lignin are needed to built up the fruit body which is also derived from the compost .

The nitrogenous substances like proteins,amino acids and nucleic acids are also derived from nitrogen rich lignin humus complex.Vitamins and minerals are also derived from the same substrate used for growing mushrooms – called as compost which is completed in two phases.

Phase I is the heating in the pile which is generally carried out in the open air or under a cover. During this phase the manure and straw are mixed, moistened and placed in stacks which are turned every few days. Phase II is the conditioning, which takes place in layers (beds or trays) in a growing room or in bulk chamber / tunnels.

Composting is always described as a genuine aerobic process, in which oxygen plays an important role, however, anaerobic processes also keeps on playing its role not clearly understood so far.
The important feature of compost is its selectivity based partly on microbiological and partly on chemical aspect.</p>
  </div>
  <div class="column middle">
    <h2>RAW MATERIALS USED FOR COMPOST</h2>
    <p>The main raw material for compost preparation are straw and water. Straw being the main source of carbon and forms the texture of the heap allowing aeration within, apart from holding water for a very long time.

The broiler chicken manure is also used to supplement compost with nitrogen and other organic matter which is fairly dry and easy to spread, which is important for getting distributed uniformly in the compost .By far the most important substance which is to be added to produce a compost of consistent quality is agricultural gypsum which is the industrial waste product.

The main facility needed for compost preparation is concrete floor which allows to collect the percolated water running out of compost heap for recirculation. A large no of machines are needed in modern compost enterprise, however in developing countries manual operations are also widely used .During composting large part of the cellulose and hemicelluloses is broken down and the lignin is modified to incorporate nitrogen into it.

The ratio between the dry matter, water and air is an important factor in composting. A fresh compost has optimum moisture content between 74 – 69%.

Wheat straw/ Paddy straw/Sugar cane bagasse.	Chicken manure
De-Oil Cakes	Additive like gypsum, Urea etc.
 The ingredients has to go through following steps leading to compost:</p>
    <p>1. PREWETTING <br>All the ingredients i.e., wheat straw and chicken manure are wetted thoughroly till it starts leeching and its being re circulated .

All the materials have to undergo this phase which gets completed in 7 days. Wheat straw , chicken manure and water are mixed and recirculation of water is maintained from goody pits with repeated turning of substrate with machine to form a stack.

Water which is collected in goody pits and has leeched out from these materials is used first before more water is added. Final percentage of water i.e. moisture content should be 65-68% at the time of stacking.

This is an important phase, as mushrooms draw their water requirement mostly from this compost during cropping. Turning machine is used which mixes ingredients better for microorganisms to react and has the capacity to turn 70 M tones of compost in one hour. Some of the farms go for manual turnings, facilitated by workers in which case the process does not yield good results.</p>
<p>2. STACKING<br>
Stacking operation is piling of pre-wet materials about 7 feet high with base of 6 feet depending on type of compost and outside temperature conditions. If we take stacking day as 0 day then this process takes 7 days as under.

Stack is made using compost turning machine at platform having under stack aeration tubes. Core temperature should reach to 72 c. within 6 hours of stacking.

First turning is made with compost turner and right quantity of chicken manure is added. Second turning done as before, gypsum is added at this stage.

The substrate is getting ready for filling in bunkers which is done the next day. It remains here for 72 hours. Later it is taken into bulk chamber. It should have about 70% moisture and 1.8% nitrogen at the completion of filling.

</br>3. PASTEURIZATION</br>
Bulk chamber building is duly insulated, having a perforated floor. Blowers and ducting are provided for air management. The ready compost is cooled down to 50 0C gradually and maintained there till ammonia level falls to 10 ppm. This process converts ammonia into proteins and growth substances acceptable to mushrooms. It is further cooled to 25 0C for spawning to take place.

</br>4. SPAWNING</br>
Spawn is introduced into compost and filled into plastic bags with capacity of 20 kg. These bags are sealed and are ready for transferring to mushroom growing houses. Most of the operations are done by machines to maintain required standards of hygiene and easy handling of bulk materials.</p>  </div>
  <div class="column side">
    <h2>SPENT COMPOST AND ORGANIC FARMING</h2>
    <p>Compost is consider as spent when any extension of crop become non-remunerative more recently called as post–mushroom-substrate because it is ready to be used by new set of organism.Post-mushroom-substrate called as SMS(spent mushroom substrate) normally contains reasonably good proportions of N_P_K.N and P do not leech out and therefore is more prominently found compare to potassium which is leech able.SMS has many positive attributes which has been found to be good for general agriculture , horticulture and organic farming .SMS has the ability to absorb many organic and inorganic agents and contains diverse category of microbes .The addition of SMS in the nutrient poor soil, leads to the improvement in the soil health by improving the texture and water holding capacity.In Horticulture SMS makes the soil suitable for raising vegetables ,fruits ,sapling, ornamental shrubs and other horticulture plants of other economic importance such as green house and nursery crops by partial substitution of growing media..</p>
  </div>
</div>

<footer>Copyright &copy; freshlawnmushroom.com</footer>

</body>
</html>