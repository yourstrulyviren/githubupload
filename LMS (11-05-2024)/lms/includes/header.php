<link rel="stylesheet" href="../assets/css/style.css">

<div class="navbar navbar-inverse set-radius-zero logo-nu-background" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand  NLOGO" >

                    <img src="admin\assets\img\lms logo.png" width="170" height="70" class="logo-center"/>


</div>

            </div>
<?php if($_SESSION['login'])
{
?> 

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

            <div class="right-div">
                <a href="logout.php" class="btn btn-danger pull-right"> <i class="fa-solid fa-back-arrow"> EXIT Library</i> </a>
            </div>
            <?php }?>
        </div>
    </div>
    <!-- LOGO HEADER END-->
<?php if($_SESSION['login'])
{
?>    
<div class="bg-danger">
<section class="menu-section">
        <div class="container pallet-one-three">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="dashboard.php" class="fa fa-dashboard"> DASHBOARD</a></li>
                            <li><a href="issued-books.php"> <i class="fa fa-book" > Issued Books </i></a></li>
                             <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Account <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="my-profile.php"> My Profile</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="change-password.php">Change Password</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    </div>
    <?php } else { ?>
        <section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">                        
                          
                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">







      <li><a href="index.php"> <i class="fa fa-home" > Home </i> </hover></a></li>
      <li><a href="index.php#ulogin" class="fa fa-sign-in"> User Login</a></li>
                            <li><a href="signup.php" class="fa fa-user-plus"> User Signup</a></li>
                         
                            <li><a href="adminlogin.php" class="fa fa-user">Admin Login</a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <?php } ?>