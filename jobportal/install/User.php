<!doctype html>
<html lang="en">
  <>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PHP Installer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/popper/.min.js"></script>
    <script src="https://getbootstrap.com/docs/4.0/dist/js/bootstrap.min.js"></script>
                    <form id="form1" name="form1" method="post" action="insert_user.php">
    <div class="container">
    <div class="mb-3" >
    <label  class="form-label">User Name</label>
    <input type="text" name="txtUserName" class="form-control" id="txtUserName"  placeholder="User Name" required>
   </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" name="txtPassword" class="form-control" id="txtPassword" required>
  </div>
  
                
  <button type="submit" name="button" class="btn btn-primary" id="button" value="Submit">Submit</button>
  </div>
</form>