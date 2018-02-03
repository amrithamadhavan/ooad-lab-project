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
input[type=submit] {
    -webkit-appearance: button;
    cursor: pointer;
    margin-left: 450px;
    margin-bottom: 200px;
    margin-top: 50px;
}
input {
    margin: 0;
    font: inherit;
    color: black;
    background-color: green;
}
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
  <h2><center><b>TRAVEL DETAILS</b></center></h2>
  
  <form action="travel_details" method="post">
    <div class="form-group">
      <label for="dest">choose destination:</label>
      <select class="form-control" id="dest" name="dest">
        <option>madurai</option>
        <option>trichy</option>
        <option>chennai</option>
        <option>coimbatore</option>
      </select>
      <br>
      
    </div>
    <div class="form-group">
      <label for="date">date of journey:</label>
      <input type="date" class="form-control" id="date" name="date">
    </div>
     <div class="form-group">
      <label for="mode">choose the mode:</label>
       <select class="form-control" id="mode" name="mode">
        <option>flight</option>
        <option>train</option>
        <option>bus</option>
        </select>
      <br>
      
    </div>
    <div class="form-group">
      <label for="notck">number of tickets:</label>
      <input type="text" class="form-control" id="notck" name="notck">
    </div>
    
    <input type="submit" value="check" name="check">
</form>  
</div>

</body>
</html>
