<?php
$host=getenv('CDOWN_MYSQL_HOST');
$username=getenv('CDOWN_MYSQL_USER');
$password=getenv('CDOWN_MYSQL_PASS');
$database=getenv('CDOWN_MYSQL_DB');

$episode=htmlspecialchars($_GET["e"]);
echo $episode;

// Create connection
$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT json FROM episodes WHERE id=5048";
$result = $conn->query($sql);

$json = array();
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $json = $row["json"];
    }
} else {
    echo "0 results";
}
$conn->close();

echo $json;

die();
?>
