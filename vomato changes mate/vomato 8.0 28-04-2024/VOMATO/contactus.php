<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
error_reporting(0);
session_start();

?>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Home || VOMATO-food ordering system</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">



</head>



<body class="home bg-warning">





    <header id="header" class="header-scroll top-header headrom">
        <nav class="navbar navbar-dark">
            <div class="container">
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/logo_vomato.png" alt="" width="36%"> </a>
                <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                    <ul class="nav navbar-nav">



                        <?php
                        if (empty($_SESSION["user_id"])) // if user is not login 
                        {

                            echo ' <li class="nav-item btn btn-secondary btn-sm"> <a class="nav-link active  fa fa-home" href="index.php"> Home <span class="sr-only">(current)</span></a> </li> ';

           

                            echo

                            '    <li class="nav-item btn btn-info btn-sm"><a href="login.php" class="nav-link active  fa fa-power-off"> Login</a> </li>';

                            echo    '<li class="nav-item btn btn-sm btn-primary"><a href="registration.php" class="nav-link active fa fa-user-plus"> Register</a> </li>';
                        } else {
                            echo '<li class="nav-item"> <a class="nav-link active btn btn-outline-info fa fa-home" href="index.php"> Home <span class="sr-only">(current)</span></a> </li>';
                        }

                        ?>

                    </ul>

                </div>
            </div>         
        </nav>

    </header>


    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">CONTACT US</h1>
            <p class="lead text-muted mb-0">we are here to help you</p>
        </div>
    </section>


    <?php

    if (isset($_POST['submit'])) {
        $fistname = $_POST["fname"];
        $textarea = $_POST["textarea"];
        $email = $_POST["email"]; 
        $mobile = $_POST["mobile"];
        $db = mysqli_connect("localhost", "root", "", "vomato") or die("connection failed");
        $sql = "INSERT INTO contact_us(First_name, Text_area, Email, Mobile) VALUES ('{$fistname}','{$textarea}','{$email}','{$mobile}' )";
        $result = mysqli_query($db, $sql) or die("Query Failed!");
    }
    ?>
   

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-primary text-white"><i class="fa fa-envelope"></i> Contact us.
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group">

                                <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="fname" placeholder="Enter your full name" required>
                            </div>
                            <div class="form-group">

                                <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="mobile" placeholder="Enter your mobile" required>
                            </div>
                            <div class="form-group">

                                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email" placeholder="Enter your email" required>
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea class="form-control" id="message" rows="6" name="textarea" placeholder="write something....." required></textarea>
                            </div>
                            <div class="mx-auto">
                                <button type="submit" name="submit" class="btn btn-success text-right">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-4">
                <div class="card bg-light mb-3">
                    <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-home"></i> Address</div>
                    <div class="card-body text-center">
                        <p>705, Shivalik Satyamev, Bopal ,Ahmedabad. 380058</p>
                        <p></p>
                        <p></p>
                        <p>Email : vomatohelpingdesk@gmail.com</p>
                        <p>Tel. +91 9265336282</p>

                    </div>

                </div>
            </div>
        </div>
    </div>

    <?php
    mysqli_close($db);        ?>

    <?php include "include/footer.php" ?>

</body>

</html>