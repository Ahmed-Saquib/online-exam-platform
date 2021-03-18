<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
?>
<style>
	.starttest a{
		font-family: "Times New Roman", Georgia, Serif;
		font-size: 25px;
		color:#121069;
	}
</style>
<div class="main">
<h1>The test is over</h1>
	<div class="starttest">
	 
	<p>You have correctly answered : 
		<?php
			if(isset($_SESSION['score'])){
				echo $_SESSION['score'];
				unset($_SESSION['score']);
			}
		?>
	</p>
	<a href="viewans.php"> Click here to view all the correct answers</a>
	<a href="starttest.php">Give the test again ?</a>
	</div>
  </div>
<?php include 'inc/footer.php'; ?>