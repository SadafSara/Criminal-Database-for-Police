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
    <div class="col-md-2" style="text-align: left;font-size: 40px;color:navy;padding-top:20px;padding-bottom:5px">XYZ Interpol </div>
    <div class="col-md-10" style="text-align: right">
      <a href="homepage.php" style="margin-left: 20px;font-size: 25px;cursor: pointer;"> Home </a>
    </div>
  </div>
</section>
<br>
  <section id="section0">
  </section>

<section id="section1">
<div class="title"> Add a new column to USER datatable </div>
<br><br><br>

<form action="insert_column.php" class="form_design" method="post">
  Column name: <input type="text" name="colid" size="50" placeholder="Enter column name"> <br/>
  Data type: <input type="text" name="dty" size="50" placeholder="Enter data type of the column to be added"> <br/>
  <br/>
  <input type="submit" value="Add to Database" >
</form>
</section>
<section id="footer">

</section>
</section>


</body>
</html>
