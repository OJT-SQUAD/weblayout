<?php
if (!isset($_GET['loadpage'])){
	$url = "index.php?loadpage=home";
		echo '<META HTTP-EQUIV=REFRESH CONTENT=".1;'.$url.'">';
}
$page = (isset($_GET['loadpage']) && $_GET['loadpage'] != '') ? $_GET['loadpage'] : '';
?>
<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Mukta|PT+Sans|Roboto&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="myStyle.css">
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="logo"><img src="" width="170" height="100"></div>
			<div id="navigation">
				<ul>
				  	<li><a href="index.php?loadpage=home">Home</a></li>
				  	<li><a href="index.php?loadpage=about">About Us</a></li>
				
				
				  	<li><a href="index.php?loadpage=contact">Contact Us</a></li>
				</ul>	
			</div>
		</div>
			<div id="content">
			<?php
					switch($page){
						case 'home': 
							require_once 'home.php';
							break;
						;
						case 'about': 
							require_once 'about.php';
							break;
						;
						case 'product': 
							require_once 'product.php';
							break;
						;
						case 'menu': 
							require_once 'menu.php';
							break;
						;
						case 'contact': 
							require_once 'contact.php';
							break;
						;
				}
			?>
			</div>
			<div id="footer">
				<div id="closer">
					<h2>
					<p>Bacolod City, Philippines</p>
					</h2>
				</div>
			</div>
	</div>
</body>
</html>