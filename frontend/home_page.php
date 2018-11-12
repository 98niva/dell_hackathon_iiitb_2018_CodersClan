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
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title img="src">DELL INDIA OUTLET</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style>
		
		
		</style>
	</head>
<body>
<div class="wait overlay">
	<div class="loader"></div>
</div>

	<div class="navbar navbar-default navbar-fixed-top">

	
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="index.php" class="navbar-brand"><img src="product_images\dell_2016_logo.jpg" ></a>  
			
		

			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
	
				<li><a href="special_sale_products.php"><b style="color:#006666"> PRODUCTS FOR SALE WITH OBSOLESCENCE RISK</b></a></li>
				<li><a href="aged_products.php"><b style="color:#006666">PREDICTED 3PL LOCATIONS FOR AGED PRODUCTS </b></a></li>
				
			</ul>
			
			<form class="navbar-form navbar-left">
		          
		     </form>

			
			<ul class="nav navbar-nav navbar-right">
			<form class="navbar-form navbar-right">
			<div class="form-group">
			    <input type="text" class="form-control" placeholder="Search for Products" id="search">
		        </div>
				
			<button type="submit" class="btn btn-primary" id="search_btn"><span class="glyphicon glyphicon-search"></span></button>
			
			</form>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart" style="color:#006666"></span><b style="color:#006666"> CART</b><span class="badge" >0</span></a>
					<div class="dropdown-menu" style="width:400px;">
					
					
							
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in ₹.</div>
								</div>
							</div>
							<div class="panel-body">
								<div id="cart_product">
								
								</div>
							</div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				
		
			</ul>
		</div>
	</div>
</div>	
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-xs-12">
				<div id="get_category">
				</div>
				

				
			</div>
			<div class="col-md-8 col-xs-12">
				<div class="row">
					<div class="col-md-12 col-xs-12" id="product_msg">
					</div>
				</div>
				<div class="panel panel-info">
					<div class="panel-heading">Products</div>
					<div class="panel-body">
						<div id="get_product">
							
						</div>
						
					</div>
			
					
				<footer>
			<div class="container container-fluid">
				<div class="row">
					<div class="col-lg-4 col-md-4" >
						<b style="color:#006666"> <u>CONTACT US </u></b>
						<br>
						<p style="color:#510505">  124,India Connaught Ln, Janpath Connaught Place, New Delhi, Delhi - 110001 </p>
						<p style="color:#510505">  078387 79366 </p>
						<p style="color:#510505">  <a>www.dell.com</a></p>
					</div>
					
					<div class="col-lg-4 col-md-4" >
						<b style="color:#006666"> <u>STAY CONNECTED</u></b>
					
						<div>
						<input type="email" placeholder="Subscribe for Updates">
,						 
						<button class="btn btn-primary">Subscribe </button>
						</div>
						
					
					<br>
						
						</input>
						
							
					</div>
				</div>
			</div>
			
			</footer>
			
		
		
		
		
	
					
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
</body>
</html>
















































