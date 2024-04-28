<!DOCTYPE html>
<html lang="en">
<?php
session_start();
include("connection/connect.php");
if (isset($_POST['submit'])) {
	$oldpass = md5($_POST['password']);
	$useremail = $_SESSION['email'];
	$newpassword = md5($_POST['npwd']);
	$sql = mysqli_query($con, "SELECT password FROM users WHERE password='$oldpass' && email='$useremail'");
	$num = mysqli_fetch_array($sql);
	if ($num > 0) {
		$con = mysqli_query($con, "UPDATE users SET npwd='$newpassword' WHERE  $oldpass='$newpassword'");
		$_SESSION['msg1'] = "Password Changed Successfully !!";
	} else {
		$_SESSION['msg1'] = "Old Password not match !!";
	}
}
?>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width= , initial-scale=1.0">


	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="#">
	<title>Registration || VOMATO-food ordering system</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/animsition.min.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
</head>

<body class="bg-danger">

	<p style="color:white;" class="text-center text-center">
		<?php echo $_SESSION['msg1']; ?> <?php echo $_SESSION['msg1'] = "You Can Change Your Password here"; ?></p>
	<div class="fluid-container text-center">
		<div>

			<div class="panel panel-success">
				<div class="panel-heading text-center"> <strong> change user Password </strong>   </div>
				<div class="panel-body text-center float-end">fil out this form</div>
		
			<form class="form-group text-white" name="chngpwd" action="" method="post" onSubmit="return valid();">
				<table align="center">
					<tr height="50">
						<td>Old Password :</td>
						<td><input type="password" name="password" id="exampleInputPassword1"></td>
					</tr>
					<tr height="50">
						<td>New Passowrd :</td>
						<td><input type="password" name="npwd" id="npwd"></td>
					</tr>
					<tr height="50">
						<td>Confirm Password :</td>
						<td><input type="password" name="cpwd" id="cpwd"></td>
					</tr>
					<tr>

						<td>
							<div class="text-center">
								<input class="btn btn-warning btn-rounded hover:black" type="submit" name="Submit" value="Change Passowrd" />
							</div>
						</td>
					</tr>
					<br>
					<br>
					<tr>
						<td><a href="index.php">Back to login Page</a></td>
					</tr>
				</table>
			</form>
			</div> 
		</div>
	</div>

</body>

</html>