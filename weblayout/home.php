<html>
<head>
<title> OJT BOYS</title>
</head>
</html>
<div id="wrd">
	<h1><center>WELCOME TO OUR CONTACTLESS CUSTOMER LOGBOOK SYSTEM</center></h1>
	
</div>
<div id="pic">	
	<img src="" width="280" height="350">
	<img src="" width="280" height="350">
	<img src="" width="280" height="350">
	
</div>
 <?php
   $error = "";
    $host = "rdbase.c6kx2buh4zov.us-east-1.rds.amazonaws.com"; 
    $username = "admin";
    $password = "sQV30IJuJ5VsmtQGYxl5";
    $connect = @mysqli_connect($host, $username, $password) or die ("unable to connect to Host");
    $db = @mysqli_select_db($connect, "db_wsite") or die("Cannot connect to database");
    $sql = "SELECT * from tbl_comments";
    $dbrecords = mysqli_query($connect , $sql) or die("Unable to query data");


    if(isset($_POST['btn_submit'])) { 
      $stud_id = $_POST['stud_id']; 
      $comment = $_POST['comment'];
	
     

      $sql = "INSERT INTO tbl_comments( stu_id, com_text, com_date_added ,com_time_added) Values ('$stud_id', '$comment',NOW(),NOW())";
        
      $result = mysqli_query($connect , $sql);
    
  }
  ?>
	 <form method="post">
          <h4>ID NUMBER:</h4>
          <input type="text" name ="stud_id">
           <h4>IF YOU HAVE ANY COMMENTS OR SUGGESTIONS FEEL FREE TO LEAVE US A MESSAGE! </h4>
           <textarea name="comment" rows="10" cols="30" id="com-box"></textarea>
        </br>
      </br>
          <input type="submit" name ="btn_submit" class="contact-button" value="submit" />
        </form>
