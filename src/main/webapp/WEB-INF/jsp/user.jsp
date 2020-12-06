<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
btn{
   width: 60px;
  }
  .th_btn{
  width:60px;
  }
  #th_password{
  width:60%;
  }
</style>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add User</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="user">
						<form:hidden path="id" />
						<fieldset class="form-group">
							<form:label path="name">Name</form:label>
							<form:input path="name" type="text" class="form-control"
								required="required" />
							<form:errors path="name" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="email">Email</form:label>
							<form:input path="email" type="text" class="form-control"
								required="required" />
							<form:errors path="email" cssClass="text-warning" />
						</fieldset>
						
						<fieldset class="form-group">
							<form:label path="sdt">Sdt</form:label>
							<form:input path="sdt" type="text" class="form-control"
								required="required" />
							<form:errors path="sdt" cssClass="text-warning" />
						</fieldset>
						
						<fieldset class="form-group">
							<form:label path="address">Address</form:label>
							<form:input path="address" type="text" class="form-control"
								required="required" />
							<form:errors path="address" cssClass="text-warning" />
						</fieldset>

						<button type="submit" class="btn btn-success">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>