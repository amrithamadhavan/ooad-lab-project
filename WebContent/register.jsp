<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
form
{
margin-top:50px;

}
.form-control
{
width:75%;
background-color:whitesmoke;
}
.form-group
{
margin-bottom:50px
}
body
{
background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_y_S03E0T0S3OJwFq9Qh4mfYXlJH9fHyaXvzCDMCEPxf9jlHHkA");"
}
</style>
</head>
<body>

<div class="container">
  <h2><center>registration form</center></h2>
  <form class="form-horizontal" action="Register">
  <div class="form-group">
   <label class="control-label col-sm-2" for="fname">First Name:</label>
   <div class="col-sm-10">
      <input type="text" class="form-control" id="fname" placeholder="Enter the first name" name="fname">
    </div>
    </div>
    <div class="form-group">
   <label class="control-label col-sm-2"for="lname">Last Name:</label>
      <div class="col-sm-10">
      <input type="text" class="form-control" id="lname" placeholder="Enter the last name" name="lname">
    </div>
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      
      <div class="col-sm-10">
      <input type="password" class="form-control" id="pwd" placeholder="Enter new password" name="pwd">
    </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="repwd">re-enter Password:</label>
      <div class="col-sm-10">
      <input type="password" class="form-control" id="repwd" placeholder="Re-Enter new password" name="pwd">
    </div>
    </div>
    
    <center><button type="submit" class="btn btn-success btn-lg">register</button></center>
  </form>
</div>

</body>
</html>
