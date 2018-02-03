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
h2{
margin-bottom:50px;
margin-left:-90px;
}
.container
{
margin-top:200px;
}
body{

background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ7kS_fNtxoF_b0pqaW-lweQH3bGPvnKr2DOZmeWN3ELRR6m7a");
margin:0px;
display:block;
}
input[type=submit] {
    
    margin-left: 450px;
    margin-top: 30px;
}
.form-group
{
margin-left:200px;
width:50%;
}
.btn-info
{
margin-left:450px;
margin-top:40px;
}
</style>
</head>
<body>

<div class="container">
  <h2><center><b>PASSENGER DETAILS</b></center></h2>
  
  <form action="Book">
    <div class="form-group">
      <label for="name">enter one passenger name:</label>
      <input type="text" class="form-control" id="name" name="name">
    </div>
    <div class="form-group">
      <label for="date">enter date of birth:</label>
      <input type="date" class="form-control" id="date" name="date">
    </div>
    <div class="form-group">
  <label for="address">enter the address:</label>
  <textarea class="form-control" rows="5" id="address" name="address"></textarea>
   </div>
    <div class="form-group">
      <label for="mobno">enter the mobile number:</label>
      <input type="text" class="form-control" id="mobno" name="mobno">
    </div>
    <div class="form-group">
      <label for="dest">choose destination:</label>
      <select class="form-control" id="dest" name="dest">
        <option>madurai</option>
        <option>trichy</option>
        <option>chennai</option>
        <option>coimbatore</option>
      </select>
      </div>
      
      
       <div class="form-group">
      <label for="notck2">re-enter the number of tickets:</label>
      <input type="text" class="form-control" id="notck2" name="notck2">
    </div>
    
    <div class="form-group">
      <label for="mode">enter the mode you hav choosen:</label>
      <input type="text" class="form-control" id="mode" name="mode">
    </div>
    <div class="form-group">
      <label for="trvname">enter the agency you have choosen:</label>
      <input type="text" class="form-control" id="trvname" name="trvname">
    </div>
    <input type="submit" value="book" name="book">
    
   
  </form>
</div>

</body>
</html>
