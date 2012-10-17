<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Class Record</title>
	
	<link rel="shortcut icon" type="image/ico" href="images/c.png" />
	
	<link rel='stylesheet' href='css/black-tie/jquery-ui-1.8.24.custom.css' />	
    <link href="tabs.css" rel="stylesheet" type="text/css" />
	<link href="css/styles.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="css/style5.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="css/demo.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="css/studentprofile.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="facebox/facebox.css" media="screen" rel="stylesheet" type="text/css" />

</head>

<script src="lib/jquery.js" type="text/javascript"></script>
<script src="facebox/facebox.js" type="text/javascript"></script>
 
	
  <script type="text/javascript">
    jQuery(document).ready(function($) {
      $('a[rel*=facebox]').facebox({
        loadingImage : 'facebox/loading.gif',
        closeImage   : 'facebox/closelabel.png'
      })
    })
  </script>
  <style type="text/css" title="currentStyle">
		
			@import "css/demo_table_jui.css";
			@import "js/smoothness/jquery-ui-1.8.4.custom.css";
		</style>
		
				<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				oTable = $('#example').dataTable({
					"bJQueryUI": true,
					"sPaginationType": "full_numbers"
				});
			} );
		</script>


<style type="text/css">

a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover font{
	color: #3333FF;
}
a:hover img {
	color: #3333FF;
	}
a:active {
	text-decoration: none;
}

</style>
<body background="images/blue.png">
<?php include('config1.php'); ?>
<br><br>
   <div class="header">
     <a href="teacher-index.php"><strong><font color="#fff" face="Lucida Console">Logout &nbsp;&nbsp;</font></strong></a>
		
          <div class="clr"></div>
		  </div>	
			
		  <br><br>
		  
                <div id="tabs1" class="leftwing">
                     <ul>                  
					<!-- CSS Tabs -->
					<li id="current"><a href="classrecord.php"><span><b>Class Record</b></span></a></li>
					<li><a href="answerkey.php"><span><b>Exam Answer Key</b></span></a></li>
					<li><a href="studentanswer.php"><span><b>Student Answer</b></span></a></li>
                     </ul>
		        </div>
				
				

				<div class="leftwing">
				<div class="content2	">
				<center>
				<div class="content1">
				<br><p align="left">
				<a rel="facebox" href=subjects.php?id=' . $row["id"] . '>
				<button style="width:140px; height:30px;"><b><font color="#003366">Add Subject/Section</font></b></button></a></p>
	

				
				<br>
				<div id="dt_example">
				<div id="container">
				<div class="demo_jui">
	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">

	<thead>
		<tr>
			<th><font color="black"  size="2"> IDNo.</th>
			<th><font color="black"  size="2">	Name </th>
			<th><font color="black"  size="2">Course</th>
			<th><font color="black"  size="2">Year</th>
			<th><font color="black"  size="2">S.Y.</th>
			<th><font color="black"  size="2">Semester</th>
			<th><font color="black"  size="2">Subject</th>
			<th><font color="black"  size="2">Section</th>
			<th><font color="black"  size="2">Prelim</th>
			<th><font color="black"  size="2">Midterm</th>
			<th><font color="black"  size="2">Finals</th>
			
		</tr>
	</thead>
	<tbody>
		<?php $students = mysql_query("SELECT * FROM students") or die(mysql_error());  
			
			  $sql2 = mysql_query("SELECT id FROM students");
			  if (isset($_GET['id'])) {
	$id = $_GET['id'];
	$sql2 = "DELETE FROM students WHERE id = '$id'";
	if (@mysql_query($sql2)) {
		
		} else {
		
			 }
			 }
while($row = mysql_fetch_array($students)){ 
$idno = $row['idno'];
$sy = $row['sy'];
$sem = $row['sem'];
$subject = $row['subject'];

$sqlA = mysql_query("SELECT * FROM student_answer WHERE test_name='prelim' and subject='$subject' and sy='$sy' and sem='$sem' and idno = '$idno'");
$rowA = mysql_fetch_array($sqlA);
	
$sqlB = mysql_query("SELECT * FROM student_answer WHERE test_name='midterm' and subject='$subject' and sy='$sy' and sem='$sem' and idno = '$idno'");
$rowB = mysql_fetch_array($sqlB);
	
$sqlC = mysql_query("SELECT * FROM student_answer WHERE test_name='finals' and subject='$subject' and sy='$sy' and sem='$sem' and idno = '$idno'");
$rowC = mysql_fetch_array($sqlC);
				
				
				echo '<tr align="center">';
									echo '<td>'.$row['idno'].'</td>';
									echo '<td>'.$row['name'].'</td>';
									echo '<td>'.$row['course'].'</td>';
									echo '<td>'.$row['year'].'</td>';
									echo '<td>'.$row['sy'].'</td>';
									echo '<td>'.$row['sem'].'</td>';
									echo '<td>'.$row['subject'].'</td>';
									echo '<td>'.$row['section'].'</td>';
									echo '<td>'.$rowA['score'].'/'.$rowA['num_ans'].'</td>';
									echo '<td>'.$rowB['score'].'/'.$rowB['num_ans'].'</td>';
									echo '<td>'.$rowC['score'].'/'.$rowC['num_ans'].'</td>';					
								 echo '</tr> '; 
	}							 
			?>
			
	</tbody>

				</div></div></div></div></div></div></center>
</body>
</html>
