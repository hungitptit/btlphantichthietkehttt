<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  body {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  padding-bottom: 70px;
}

	
</style>
<body>
<div class="container">
 <div>
  <a type="button" class="btn btn-primary btn-md" href="/add-user">Add User</a>
 </div>
 <br>
 <div class="panel panel-primary">
  <div class="panel-heading">
   <h3>List of Users</h3>
  </div>
  <div class="panel-body">
   <table class="table table-bordered" id="table">
    <thead>
     <tr>
      <th width="20%">Id</th>
      <th width="40%">Name</th>
      <th width="40%">Email</th>
      <th width="40%">Sdt</th>
      <th width="40%">Address</th>
      <th width="20%"></th>
      <th width="20%"></th>
     </tr>
    </thead>
    <tbody>
     <c:forEach items="${userList}" var="user">
      <tr>
       <td>${user.id}</td>
       <td>${user.name}</td>
       <td>${user.email}</td>
       <td>${user.sdt}</td>
       <td>${user.address}</td>
       <td><a type="button" class="btn btn-success"
        href="/update-user?id=${user.id}">Update</a></td>
        <td>
       <a type="button" class="btn btn-warning"
        href="/delete-user?id=${user.id}">Delete</a></td>
      </tr>
     </c:forEach>
    </tbody>
   </table>
  </div>
 </div>

</div>
<div>
<!-- %@ include file="footer.jsp"%>  -->

</div>

</body>
<div class="footer">
    
    <h2>
        
        Trần Xuân Hưng
    </h2>
</div>

</html>