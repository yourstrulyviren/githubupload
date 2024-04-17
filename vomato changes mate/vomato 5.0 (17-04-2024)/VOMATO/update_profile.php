<?php

include 'connection/connect.php';
error_reporting(0);
session_start();
$user_id = $_SESSION['user_id'];


if (isset($_POST['update_profile'])) {   

   $update_name = mysqli_real_escape_string($db, $_POST['update_name']);
   $update_email = mysqli_real_escape_string($db, $_POST['update_email']);

   mysqli_query($db, "UPDATE `users` SET name = '$update_name', email = '$update_email' WHERE u_id='" . $_SESSION['user_id'] . "'") or die('query failed');

   $old_pass = $_POST['password'];
   $update_pass = mysqli_real_escape_string($db, md5($_POST['update_pass']));
   $new_pass = mysqli_real_escape_string($db, md5($_POST['new_pass']));
   $confirm_pass = mysqli_real_escape_string($db, md5($_POST['confirm_pass']));

   if (!empty($update_pass) || !empty($new_pass) || !empty($confirm_pass)) {
      if ($update_pass != $old_pass) {
         $message[] = 'old password not matched!';
      } elseif ($new_pass != $confirm_pass) {
         $message[] = 'confirm password not matched!';
      } else {
         mysqli_query($db, "UPDATE `users` SET password = '$confirm_pass' WHERE u_id='" . $_SESSION['user_id'] . "'") or die('query failed');
         $message[] = 'password updated successfully!';
      }
   }
    
   
   $update_image = $_FILES['update_image']['name'];
   $update_image_size = $_FILES['update_image']['size'];
   $update_image_tmp_name = $_FILES['update_image']['tmp_name'];
   $update_image_folder = 'uploaded_img/'.$update_image;

   if(!empty($update_image)){
      if($update_image_size > 2000000){
         $message[] = 'image is too large';
      }else{
         $image_update_query = mysqli_query($db, "UPDATE `users` SET image = '$update_image' WHERE u_id='" . $_SESSION['user_id'] . "'") or die('query failed');
         if($image_update_query){
            move_uploaded_file($update_image_tmp_name, $update_image_folder);
         }
         $message[] = 'image updated succssfully!';
      }
   } 
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>update profile</title>
   <link href="css/bootstrap.min.css" rel="stylesheet">
   <link href="css/font-awesome.min.css" rel="stylesheet">
   <link href="css/animsition.min.css" rel="stylesheet">
   <link href="css/animate.css" rel="stylesheet">     


   <!-- custom css file link        -->
   <link rel="stylesheet" href="css/style-myprofile.css">

   <style>
 .img-logo {
   border: 8px; 

}
</style> 

</head>

<body class="bg-black">


 
   
   <div class="update-profile bg-black">
  

      <?php
      $select = mysqli_query($db, "SELECT * FROM `users` WHERE u_id='" . $_SESSION['user_id'] . "'") or die('query failed');
      if (mysqli_num_rows($select) > 0) {
         $fetch = mysqli_fetch_array($select);
      }
      ?>

<div>  
<img src="admin/images/logo_vomato.png " alt="vomato logo" class="center img-logo" width="400" height="100">    
  
      <form action="" method="post" enctype="multipart/form-data" class="bg-warning">


       
      
            <hr>

            <a href="index.php" class="fa fa-home backjava-btn">Home</a>
  
            <hr>
        

         <?php
         if ($fetch['image'] == '') {
            echo '<img src="images/default-avatar.png">';
         } else {
            echo '<img src="uploaded_img/' . $fetch['image'] . '">';      
         }    
         if (isset($message)) {
            foreach ($message as $message) {
               echo '<div class="message">' . $message . '</div>';
            }
         }
         ?>
         <div class="flex">
            <div class="inputBox">
               <span>username :</span>
               <input type="text" name="update_name" value="<?php echo $fetch['username']; ?>" class="box">
               <span>your email :</span>
               <input type="email" name="update_email" value="<?php echo $fetch['email']; ?>" class="box">
               <span>Mobile :</span>
               <input type="email" name="update_email" value="<?php echo $fetch['phone']; ?>" class="box"> 
            </div>
            <div class="inputBox">
               <input type="hidden" name="old_pass" value="<?php echo $fetch['password']; ?>">
               <span>old password :</span>
               <input type="password" name="update_pass" placeholder="enter previous password" class="box">
               <span>new password :</span>
               <input type="password" name="new_pass" placeholder="enter new password" class="box">
               <span>confirm password :</span>   
               <input type="password" name="confirm_pass" placeholder="confirm new password" class="box">
            </div>
         </div>
         <input type="submit" value="Confim Update profile" name="update_profile" class="btn">   
       
      </form>     
      </div> 
   </div>

</body>

</html>




<!--

  
if(isset($_POST['update_profile'])){

   $update_name = mysqli_real_escape_string($db, $_POST['update_name']); 
   $update_email = mysqli_real_escape_string($db, $_POST['update_email']);  

   mysqli_query($db, "UPDATE `users` SET name = '$update_name', email = '$update_email' WHERE u_id='" . $_SESSION['user_id'] . "'") or die('query failed');

   $old_pass = $_POST['password']; 
   $update_pass = mysqli_real_escape_string($db, md5($_POST['update_pass'])); 
   $new_pass = mysqli_real_escape_string($db, md5($_POST['new_pass']));   
   $confirm_pass = mysqli_real_escape_string($db, md5($_POST['confirm_pass']));

   if(!empty($update_pass) || !empty($new_pass) || !empty($confirm_pass)){
      if($update_pass != $old_pass){
         $message[] = 'old password not matched!';
      }elseif($new_pass != $confirm_pass){
         $message[] = 'confirm password not matched!';
      }else{
         mysqli_query($db, "UPDATE `users` SET password = '$confirm_pass' WHERE u_id='" . $_SESSION['user_id'] . "'") or die('query failed');
         $message[] = 'password updated successfully!';
      }
   }  

   $update_image = $_FILES['update_image']['name'];
   $update_image_size = $_FILES['update_image']['size'];
   $update_image_tmp_name = $_FILES['update_image']['tmp_name'];
   $update_image_folder = 'uploaded_img/'.$update_image;

   if(!empty($update_image)){
      if($update_image_size > 2000000){
         $message[] = 'image is too large';
      }else{
         $image_update_query = mysqli_query($db, "UPDATE `users` SET image = '$update_image' WHERE u_id='" . $_SESSION['user_id'] . "'") or die('query failed');
         if($image_update_query){
            move_uploaded_file($update_image_tmp_name, $update_image_folder);
         }
         $message[] = 'image updated succssfully!';
      }
   }

}
 

 -->