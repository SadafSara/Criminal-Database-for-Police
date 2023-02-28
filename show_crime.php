
<html lang="en">
  <head>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <meta name="description" content="About the site"/>
      <meta name="author" content="Author name"/>
      <title> CRIMINAL DATABASE FOR POLICE </title>

<link rel="stylesheet" type="text/css" href="css/stylesheet.css">

<link href="css/bootstrap.min.css" rel="stylesheet"/>

<br>
  </head>

  <body>
	<section id="header">
		<div class="row">
			<div class="col-md-2" style="font-size:28px;color:navy;text-align:left;font:Helvetica;"> XYZ Interpol </div>
			<div class="col-md-10" style="text-align: right">
				<a href="homepage.php" style="  cursor: pointer;font-size: 25px;color:navy"> Home </a>
			</div>
		</div>
	</section>

		<div class="title" style="padding:10px; font-size:30px"> Records according to the entered crime type </div>
		<div style="margin-left:10%; margin-right:10%; margin-top:50px; margin-bottom:50px;text-align:center ">
      <section id="section4">
			<div class="row" style="margin:5px;">
				<div class="col-md-2"style="font-family:Helvetica;color: navy;font-size:20px; font-weight: bolder;text-align:center;text-decoration:underline"> CRIME TYPE </div>
				<div class="col-md-2"style="font-family:Helvetica; color: navy; font-size:20px;font-weight:bolder;text-align:center;text-decoration:underline"> DATE</div>
				<div class="col-md-2"style="font-family:Helvetica; color: navy;font-size:20px;font-weight: bolder;text-align:center;text-decoration:underline"> CRIMINAL ID</div>
        <div class="col-md-2"style="font-family:Helvetica; color: navy;font-size:20px;font-weight: bolder; text-align:center;text-decoration:underline"> CRIMINAL NAME</div>
				<div class="col-md-2"style="font-family:Helvetica; color: navy;font-size:20px;font-weight: bolder;text-align:center;text-decoration:underline">  AGE</div>
        <div class="col-md-2"style="font-family:Helvetica;color: navy; font-size:20px;font-weight: bolder;text-align:center;text-decoration:underline"> GENDER</div>
			</div>
    </section>
      <?php
      require_once('DBconnection.php');
      if(isset($_POST['crtype'])){
      	$u = $_POST['crtype'];
      $sql = " SELECT CRIME.type,DONE_BY.date,DONE_BY.criminal_id,CRIMINAL.name,CRIMINAL.age,CRIMINAL.gender FROM CRIME INNER JOIN DONE_BY ON CRIME.id=DONE_BY.crime_id INNER JOIN CRIMINAL ON DONE_BY.criminal_id=CRIMINAL.id where type = '$u' ";

        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result) >0){
          while($row = mysqli_fetch_array($result)){
        ?>
        <section id="section4">
        <div class="row" style="padding:5px;">
          <div class="col-md-2" style="font-family:Helvetica;font-weight: bolder;text-align:center; ;color: navy;font-size:18px">  <?php echo $row["type"]; ?> </div>
          <div class="col-md-2" style="font-family:Helvetica;font-weight: bolder;font-size:18px;color: navy;text-align:center;">  <?php echo $row["date"]; ?> </div>
                <div class="col-md-2" style="font-family:Helvetica;font-weight: bolder;font-size:18px;color: navy;text-align:center">  <?php echo $row["criminal_id"]; ?> </div>
                <div class="col-md-2" style="font-family:Helvetica;font-weight: bolder;font-size:18px;color: navy;text-align:center">  <?php echo $row["name"]; ?> </div>
                <div class="col-md-2" style="font-family:Helvetica;font-weight: bolder;font-size:18px;color: navy;text-align:center">  <?php echo $row["age"]; ?> </div>
                <div class="col-md-2" style="font-family:Helvetica;font-weight: bolder;font-size:18px;color: navy;text-align:center">  <?php echo $row["gender"]; ?> </div>
        </div>
</section>
        <?php
          }
        }
      }
      ?>
</div>


  </body>
</html>
