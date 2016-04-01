<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Execute request </title>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	</head>

	<body>
		<h1>Base template</h1>
		<div class="container">
			<div class="row">
			    <div class="col-md-4"> </div>
				<div class="col-md-4" style="margin:5%">
					<form role="form" action="web/executerequest.html" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">
								URL
							</label>
							<input type="text" class="form-control" id="url" name="url"/>
						</div>
						<button type="submit" class="btn btn-default" value="Send Request">
							Send Request
						</button>
					</form>
				</div>
				<div class="col-md-4"> </div>
			</div>
		</div>
	</body>
</html>