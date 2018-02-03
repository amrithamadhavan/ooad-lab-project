
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body
{
background-color:#f2dede;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">HOME</a></li>
     
     <li><a href="login.jsp">LOGIN</a></li>
      <li><a href="register.jsp">REGISTER</a></li>
    </ul>
  </div>
</nav>

<div class="container">
<div class="jumbotron" style="background-color:#f2dede">
  <h2><center><b>SM TRAVEL AGENCY</b></center></h2>
  </div>
 <div class="container">
    
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:400px;margin:0 auto">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="data:image/jpeg;base64,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" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdKdCgjmDFalzpJExm9CLED-Kj5OpJMPqeg10KPg94T3W_ReOSeA" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSanRXi4q9sX9Lzb-vemhtUw5-oeAWAHX-a6pwbSZl6kWVDVan2" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

 
  <div class="row" style="margin-top:50px">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="data:image/jpeg;base64,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" class="img-rounded"  alt="Lights" style="width:100%;height:200px">
            <div class="caption">
            <p>Reach quick!!!</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail" >
        <a href="#" target="_blank">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdKdCgjmDFalzpJExm9CLED-Kj5OpJMPqeg10KPg94T3W_ReOSeA"  alt="Lights" style="width:100%;height:200px">
          <div class="caption">
            <p>Fast reservation!!!</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSanRXi4q9sX9Lzb-vemhtUw5-oeAWAHX-a6pwbSZl6kWVDVan2"  alt="Lights" style="width:100%;height:200px;background-color:grey">
          <div class="caption">
            <p>feel the comfort!!!</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>

</body>
</html>


