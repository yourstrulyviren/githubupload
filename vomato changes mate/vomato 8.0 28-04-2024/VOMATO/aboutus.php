<!DOCTYPE html>
<html>
<head>  
    
<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">  
    <link href="css/style.css" rel="stylesheet">  
<meta name="viewport" content="width=device-width, initial-scale=1">   
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}  
      
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;  
  color: white;     
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;    
    
    .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
} 
 

  }
}   
</style>       
</head>
<body>

<header id="header" class="header-scroll top-header headrom bg-light"> 
        <nav class="navbar navbar-dark">
            <div class="container">
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/logo_vomato.png" alt="" width="18%"> </a>
                <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                    <ul class="nav navbar-nav">
                 

                        <?php
						if(empty($_SESSION["user_id"]))  
							{
								echo ' 
                                <li class="nav-item btn btn-secondary btn-sm"> <a class="nav-link active fa fa-home" href="index.php">  Home <span class="sr-only">(current)</span></a> </li> 
                        
 
                                <li class="nav-item btn btn-sm btn-info"> <a href="login.php" class="nav-link active fa fa-power-off"> Login</a> </li>
							  <li class="nav-item btn btn-sm btn-primary"><a href="registration.php" class="nav-link active fa fa-user-plus"> Register</a> </li>'; 
							}
						else        
							{
						  			          
									echo '   <li class="nav-item btn btn-outline-info btn-sm"> <a class="nav-link active fa fa-home" href="index.php"> Home <span class="sr-only">(current)</span></a> </li> '; 
                                    
										echo  '<li class="nav-item btn btn-outline-primary btn-sm"><a href="your_orders.php" class="nav-link active fa fa-list-alt"> My Orders</a> </li>'; 
                                    
									echo  '<li class="nav-item btn btn-sm btn-outline-danger btn-sm"><a href="logout.php" class="nav-link active fa fa-power-off"> Logout</a> </li>';
							}
      
						?>
                    </ul>
                </div> 
            </div>
        </nav>  
    </header> 
<section> 
    <div> 
        <div> <div> <h2>About us</h2> </div></div>  
    </div>
</section>

<div>  

<div class="about-section">    
  <h1 class="text-warning">ABOUT US </h1> 
  <p>Known for our wide range of restaurants </p>  
  <p>Also serving variety of food from all over world</p>    
</div>     
  <div  class="container-fluid"> 
<h2 style="text-align:center">Our Team</h2>   
 
    
  <div class="column"> 
    <div class="card"> 
      <img src="admin/images/virenwinter.png" alt="Mike" style="width:100%">    
           
    </div>     
  </div> 
                                   
    
  <div class="column">
    <div class="card">
   
      <div class="container"> 
        <h2> Viren Patel </h2>    
        <p class="title"> Director </p>    
        <p> collaborate with on campus food leaders, restaurant service and fastfood business   </p>  
        <p>virenpatel399@gmail.com</p>      
        <p><a href="https://virenpatel.dorik.io"> <button class="button" onclick="//virenpatel.dorik.io/" >Contact</button> </a></p>          
      </div>   
  </div>         
</div>   

   
   
<div class="column">  
    <div class="card">
   
      <div class="container"> 
        <h2> Vision </h2>      
       
        <p> We want to build an smart food ordering system which pleases both employees and clients in terms of work environment,
             money and balance between work & family life. We promises to build an environment where everybody
              envision their future growth, everybody can feel the importance of their work. We provides a 
              dedicated single point-of-contact to our clients so they can develop a personal relationship 
              over the period of time which helps to understand each other’s     
                work methods and requirements which ultimately leads to happy life for both.

</p>  
         
               
      </div>   
  </div>         
</div>         

</div>    
   </div> 
 
  
  
 
   <?php include "include/footer.php" ?>  


</body>
</html>
 