<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Company</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">	
  </head>
  <body>    
	<div class="company">
		<div class="container">
			<h1 class="text-center">Company</h1>
				<hr />
			<div class="col-md-4 col-md-offset-4">
				<form action="<?php echo base_url('users/save_company');?>" enctype="multipart/form-data" method="post">
					  
					  <div class="form-group">
						<label for="address">Address</label>
						<textarea rows="4" cols="50" name="companyAddress"></textarea>
					  </div>
						<div class="form-group">
						<label for="logoArea">Logo</label>
					
						<input type="file" id="cImg" name="cImage" class="form-control">
					
						
							<img id="blah" src="<?php echo base_url() . 'images/default.png'; ?>"
							width="100px" height="100px">
						
					  </div>
					  
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-8">
							<a href="<?php echo base_url('users/');?>" class="btn btn-danger">Back</a>
							<button type="submit" class="btn btn-success">Add Company</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
<script type="text/javascript" language="javascript">
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#cImg").change(function () {
        readURL(this);
    });
</script>