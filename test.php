<?php
$servername = "localhost";
$username = "root";
$password = "SamDb@121!";
$conn = new mysqli($servername, $username, $password ,'samakalika_live');
if($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
	exit;
}

$query = $conn->query("SELECT content_id , title FROM article WHERE tags LIKE '%india%'");
while ($result = $query->fetch_assoc()){
	echo $result['title'];
	echo '<br>';
}
?>