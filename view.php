<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<link href="facebox/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<form id="shw" name="show" method="post" action="view-exec.php" >

<div class="view">
<span>School Year:</span> <?php
			   include('config1.php');
		$result = mysql_query("SELECT * FROM subjects");
								
				echo '<select id="sy"  name="sy" required="required" style="width:100px;">';
echo "<option></option> ";				
								while($row = mysql_fetch_array($result))
								  {
									$sy= $row['sy'];
									echo "<option value='$sy'>$sy</option>";
																
}
echo '</select>'; ?><br><br>

<span>Semester:</span> <select id="sem" name="sem" required="required" style="width:100px;"> 
			<option></option> 	
		<option>1st Semester</option>
		<option>2nd Semester</option>`
		<option>Summer</option>
		</select><br><br>
		
<span>Subject:</span> <?php
			   include('config1.php');
		$result = mysql_query("SELECT * FROM subjects");
								
				echo '<select id="subject"  name="subject" required="required" style="width:100px;">';
echo "<option></option> ";				
								while($row = mysql_fetch_array($result))
								  {
									$subject= $row['subject'];
									echo "<option value='$subject'>$subject</option>";
																
}
echo '</select>'; ?> </br></br>

<span> Answer Key for:</span> <select id="test_name" name="test_name" required="required" style="width:100px;"> 
			<option></option> 	 
		<option>Prelim</option>
		<option>Midterm</option>
		<option>Finals</option>
		</select><br><br>
		
<p align="right">
<input type="submit" name="SUBMIT" class="button1" value="VIEW" style="font: bold 14px Arial; -webkit-border-radius:3px; 
 -moz-border-radius:3px; border-radius:3px; width: 50px; background: #000;  border-color: #000; color: #fff; -moz-box-shadow: 1px 0px 2px #000;
	-webkit-box-shadow: 1px 0px 2px #000; 	box-shadow: 1px 0px 2px #000; "/>&nbsp;&nbsp;&nbsp;</p>
	
</form>

			