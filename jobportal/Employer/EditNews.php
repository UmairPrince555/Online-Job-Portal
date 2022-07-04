<?php
if (!isset($_SESSION)) 
{
  session_start();
  
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="cs" />
    <meta name="robots" content="all,follow" />

    <meta name="author" content="All: ... [Nazev webu - www.url.cz]; e-mail: info@url.cz" />
    <meta name="copyright" content="Design/Code: Vit Dlouhy [Nuvio - www.nuvio.cz]; e-mail: vit.dlouhy@nuvio.cz" />
    
<title>JOB PORTAL</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />
    <style type="text/css">
<!--
.style1 {
	color: #000066;
	font-weight: bold;
}
-->
    </style>
    <script src="../SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
    <script src="../SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
    <link href="../SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
    <link href="../SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
</head>

<body id="www-url-cz">
<!-- Main -->
<div id="main" class="box">
<?php 
include "Header.php"
?>
<?php 
include "menu.php"
?>   
<!-- Page (2 columns) -->
    <div id="page" class="box">
    <div id="page-in" class="box">

        <div id="strip" class="box noprint">

            <!-- RSS feeds -->
            <hr class="noscreen" />

            <!-- Breadcrumbs -->
            <p id="breadcrumbs">&nbsp;</p>
          <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->
        <div id="content">

           
            <!-- /article -->

            <hr class="noscreen" />

           
            <!-- /article -->

            <hr class="noscreen" />
            
            <!-- Article -->
           
            <!-- /article -->

            <hr class="noscreen" />

            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Welcome <?php echo $_SESSION['Name'];?></a></span></h2>
               <?php
$ID=$_SESSION['ID'];
// Establish Connection with Database
$con = mysqli_connect("localhost","root","","job");

// Specify the query to execute
$sql = "select * from news_master where EmployerId ='ID'  ";
// Execute query
$result = mysqli_query($con,$sql);
// Loop through each records 
$row = mysqli_fetch_array($result)
?>
<form method="post" action="UpdateNews.php">
                <table width="100%" border="1" cellspacing="2" cellpadding="2">
                  <tr>
                    <td><strong>News ID:</strong></td>
                    <td><span id="sprytextfield1">
                      <label>
                      <input name="txtNewsId" type="text" id="txtNewsId" value="<?php echo $row['NewsId'];?>" />
                      </label>
                    <span class="textfieldRequiredMsg">A value is required.</span></span></td>
                  </tr>
                  <tr>
                    <td><strong>News:</strong></td>
                    <td><span id="sprytextfield1">
                      <label>
                      <input name="txtNews" type="text" id="txtNews" value="<?php echo $row['News'];?>" />
                      </label>
                    <span class="textfieldRequiredMsg">A value is required.</span></span></td>
                  </tr>
                  <tr>
                    <td><strong>News Date:</strong></td>
                    <td><span id="sprytextfield2">
                      <label>
                      <input name="txtDate" type="text" id="txtDate" value="<?php echo $row['NewsDate'];?>" />
                      </label>
                    <span class="textfieldRequiredMsg">A value is required.</span></span></td>
                  </tr>
                    <td>&nbsp;</td>
                    <td><label>
                      <input type="submit" name="button" id="button" value="Submit" />
                    </label></td>
                  </tr>
                </table>
</form>
              <p>&nbsp;</p>

                <p class="btn-more box noprint">&nbsp;</p>
          </div> <!-- /article -->

            <hr class="noscreen" />
            
        </div> <!-- /content -->

<?php
include "right.php"
?>

    </div> <!-- /page-in -->
    </div> <!-- /page -->

 
<?php
include "footer.php"
?>
</div> <!-- /main -->

<script type="text/javascript">
<!--
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
//-->
</script>
</body>
</html>
