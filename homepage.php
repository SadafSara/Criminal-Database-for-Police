<html lang="en">
  <head>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <meta name="description" content="About the site"/>
      <meta name="author" content="Author name"/>
      <title> CRIMINAL DATABASE FOR POLICE </title>

<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
  </head>

  <body>

	<section id="header">
		<div class="row">
			<div class="col-md-2" style="text-align: left;font-size:50px;color:navy;padding-top:15px"> XYZ Interpol </div>
			<div class="col-md-10" style="text-align:right">
				<a href="show_date1.php" style="  cursor: pointer; font-size: 20px"> Search records by date </a>
				<a href="add_column.php" style="margin-left: 20px; cursor: pointer;font-size: 20px"> Add column to user table </a>
			</div>
		</div>
	</section>
  <br>
  <section id = "section2">
<br><br><br><br><br><br><br><br>
<br><br><br><br>
	</section>
<section id="section3">
  <div class="title1">
    <form action="show_crime.php" class="form_design" method="post">
      Enter the type of crime for which you want to see the records: <input type="text" name="crtype" size="50" placeholder="Enter crime type"> <br/>
      <input type="submit" value="Search" >
    </form>
   </div>
</section>

  </body>
</html>
