<?php

include("connection/connect.php");
error_reporting(0);
session_start();

?>



<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>User Profile</title>
   <link href="css/bootstrap.min.css" rel="stylesheet">
   <link href="css/font-awesome.min.css" rel="stylesheet">
   <link href="css/animsition.min.css" rel="stylesheet">
   <link href="css/animate.css" rel="stylesheet">



   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style-myprofile.css">


   <style>
      .img-logo {
         border: 8px;

      }
   </style>

</head>

<body class="bg-black">




   <div class="container bg-black">  
      <div>  
         <span><img src="admin/images/logo_vomato.png " alt="vomato logo" class="center img-logo" width="400" height="100"> </span>
         <div class="profile bg-warning">

   
               <hr>

               <a href="index.php" class="fa fa-home btn-sm backjava-btn">Home</a>

               <hr>
           

            <?php
            $select = mysqli_query($db, "SELECT * FROM `users` WHERE u_id='" . $_SESSION['user_id'] . "'") or die('query failed');
            if (mysqli_num_rows($select) > 0) {
               $fetch = mysqli_fetch_array($select);
            }
            if ($fetch['image'] == '') {
               echo '<img src="images\default-avatar.png">';
            } else {
               echo '<img src="uploaded_img/' . $fetch['image'] . '">';
            }
            ?>
                  
            <h3><?php echo $fetch['username']; ?></h3>  
            <h3>  <?php echo $fetch['email']; ?></h3>
            <h3> <br> <?php echo $fetch['address']; ?></h3>
            <a href="update_profile.php" class="btn">Update profile</a>
            <a href="logout.php" class="delete-btn">logout</a>



         </div>

      </div>
   </div>



   <!-- -------------------------------------------------------------------------------------------------------------------------------------------- -->



</body>

</html>