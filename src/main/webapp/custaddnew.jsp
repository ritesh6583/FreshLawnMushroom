<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
</style>
<ul>
<li></li>
<li></li>

  <li><a href="#Add New">Add New</a></li>
 
</ul>
 <body>
  
  <form action="custsavedata.jsp">

<table>
<tr><th>Customer Gen ID:</th><th><input type="text" name="Customer_Gen_ID" value=""></th></tr>
<tr><th>Customer First Name:</th><th><input type="text" name="firstname" value=""></th></tr>
<tr><th>Customer Last Name:</th><th><input type="text" name="lastname" value=""></th></tr>



   <tr><th>Customer Contact Person:</th><th><input type="text" name="Customer_Contact_Person" value=""></th></tr>
   <tr><th>Customer Contact Person Mobile:</th><th><input type="text" name="Customer_Contact_Person_Mobile" value=""></th></tr>
   
   <tr><th>Created-Date(yyyy-mm-dd):</th><th><input type="text" name="Created_Date" value=""></th></tr> 
   <tr><th>Customer Contact Delivery Addreess:</th><th><input type="text" name="Customer_Contact_Delivery_Adreess" value=""></th></tr>
    <tr><td>Product
	    </td>
    
<td>Description:</td><td></td></tr>

 <tr>
 	<td class="product-data">
 		<select name="Product">
 		    <option value=""></option>
		    <option value="Mushroom">Mushroom</option>
		    <option value="Coccount Coil"></option>
		    <option value="Soil"></option>
    	</select>
    </td>    
	<td>
		<input type="text" name="product" class="product-desc" > <a class="add-product">+</a>
	</td>
</tr>
 

<tr><td> </td><th><input type="submit" value="submit"><input type="reset" value="reset" ></th></tr>
</table>
  <table class="child">
</table>
</form>>
</body>
<footer>Copyright &copy; freshlawnmushroom.com</footer>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.add-product').click(function() {
			var label = $('.product-data select option:selected').text();
			
			var productName = $('.product-data select').val();
			var productDesc = $('.product-desc').val();
			
			var rowData = '<tr>'+
							'<td>'+
								'<input type="hidden" name="productName" value="'+productName+'" />'+
								'<input type="hidden" name="productDesc" value="'+productDesc+'" />'+
							'</td>'+
							'<td>'+label+'</td>'+
							'<td>'+productDesc+'</td>'+
						'</tr>';
			$('.child').append(rowData);
		});
	});
</script>
</body>
</html>