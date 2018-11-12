<?php

include("db.php");

$sql="SELECT product_id,product_title,available,discontinued FROM products";

$records = mysqli_query($con,$sql);

?>

<?php
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title img="src">DELL INDIA OUTLET</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style></style>
	</head>
<body>

<h2 align="center" style="color:#006666"><b><u>PREDICTION ANALYSIS OF PRODUCTS</u></b></h2>

 <div class="panel panel-body">
	 
	 
	 
	     <table class="table table-striped">
		 
		 <tr>
		 
		    <th><u> PRODUCT ID</u></th>
			
			<th><u>PRODUCT TITLE</u></th>
			
			<th><u>PROBABILITY OF AVAILABLE PRODUCTS</u></th>
			
			<th><u>PROBABILITY OF DISCONTINUED PRODUCTS</u></th>
			
			
			
		</tr>
		<?php
		
		while($rec = mysqli_fetch_assoc($records))
		{
			
			echo "<tr>";
			
			echo "<td>".$rec['product_id']."</td>";
			
			echo "<td>".$rec['product_title']."</td>";
			
			echo "<td>".$rec['available']."</td>";
			
			echo "<td>".$rec['discontinued']."</td>";
			
			
            
            echo "</tr>";			
			
	    }		
		
		
		
		?>


</body>
</html>
















































