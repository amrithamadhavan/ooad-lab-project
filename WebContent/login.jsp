
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
   
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Document</title>
  <style>
  input {
    margin: 0;
    font: inherit;
    color: black;
    background-color: green;
}
  
  #div1{
  
    
    width: 400px;
    height: 50px;
    font-size: 30px;
    text-align: right;
    margin-left: 400px;
    margin-top: 50px;
    padding: 50px;
    color: chocolate;
}
#div2{

    width: 400px;
    height: 150px;
    font-size: 30px;
    text-align: start;
    margin-left: 400px;
    margin-top: 60px;
    padding: 50px;
    
    color: chocolate;
}
#div3{

    width: 400px;
    height: 150px;
    font-size: 30px;
    text-align: start;
    margin-left: 400px;
    margin-top: 0px;
    padding: 50px;
    color: chocolate;
}
#div4{

    width: 2000px;
    height: 1000px;
    font-size: 30px;
    text-align: top;
    margin-left: 0px;
    margin-top: start;
    padding: 50px;
    
}
#div5
{
margin-top:0px;
margin-bottom:0px;

margin-left:550px;}
#class1 {
    
    width: 400px;
    font-size: 30px;
    text-align: center;
    margin-left: 400px;
    margin-top: 0px;
    padding: 50px;
    color: chocolate;
}
form{
margin-top:40px;}
.form-control{
width:40%;
}
body{
background-color:grey;
background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ7kS_fNtxoF_b0pqaW-lweQH3bGPvnKr2DOZmeWN3ELRR6m7a");
margin:0px;
display:block;
}
label
{
font-weight:100;
}
.checkbox {
    position: relative;
    display: block;
    margin-top: 40px;
    margin-bottom: 0px;
    margin-left: 500px;
}
.checkbox label
{
margin-top:30px;
}
.checkbox input[type=checkbox]{
    position: absolute;
    margin-top: 4px\9;
    margin-left: -20px;
    margin-top: 15px;
    size: a3;
}
.form-control
{
margin-top:10px;
}
</style>

<script type="text/javascript">
function login()
{
	document.write("login is successful");
	}
	</script>
 </head>
 <body>
 <div id="div4">
 <div id="div1">LOGIN PAGE
 </div>
 <div id="div5">
 <br><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaYWs5Z9x5tQQL9-wFFUU3jdvL4mYevTvQDZ9m0yBuTyg_5oAa">
 </div>
 <form class="form-horizontal" action="Login">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
      </div>
    </div>
  
 <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
 <div id="class1">
 <input type="submit" value="login">
 
 </div>
 </form>
 </div>
 </body>
</html>
