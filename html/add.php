<?php
   	include("connect.php");
   	
   	$link=Connection();

	$temp1=$_POST["temp1"];
	$hum1=$_POST["hum1"];
	$lum1=$_POST["lum1"];

	$query = "INSERT INTO `tempLog` (`temperature`, `humidity`, `luminosity`) 
		VALUES ('".$temp1."','".$hum1."','".$lum1."')"; 
   	
   	mysql_query($query,$link);
	
	$countrows = mysql_query("SELECT * FROM tempLog");
	if (mysql_num_rows($countrows) > 20){
		
		$deletequery = "DELETE FROM tempLog WHERE ID ORDER BY timeStamp ASC LIMIT 1";
		mysql_query($deletequery,$link);
	}

	mysql_close($link);

	
   	header("Location: index.php");
?>
