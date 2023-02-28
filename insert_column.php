
<?php
require_once('DBconnection.php');
	if(isset($_POST['colid']) && isset($_POST['dty']) ){
		$columnName = $_POST['colid'];
		$colum = $_POST['dty'];
		$tableName = 'USER';
    $sql = "ALTER TABLE  `$tableName` ADD  `$columnName` $colum ";
		$result = mysqli_query($conn, $sql);
		header("Location:add_column.php");
	}
?>
