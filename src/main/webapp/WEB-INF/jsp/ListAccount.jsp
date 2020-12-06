<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
.btn{
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
  <h2>Account</h2>          
  <table class="table table-bordered" id="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Email</th>
        <th id="th_password">Password</th>
        <th class="th_btn"></th>
        <th class="th_btn"></th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${accountList}" var="a" >
          <tr class="onRow">
             <td id="id">${a.id}</td>
             <td id="email">${a.email}</td>
             <td id="pass">${a.password}</td>
              <td >
                <button   type="button" class="btn btn-info edit_btn" >Edit</button>
             </td>
             <td >
                <button type="button" class="btn btn-info delete_btn ">Delete</button>
             </td>
             </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
  <div class="modal fade" id="div_account" >
    <div class="modal-dialog">
    
      <!-- Modal form-->
      <div class="modal-content">
        <div class="modal-body">
        <label >Email address</label>
        <input type="text" id="text_email" class="form-control" >
        <label >Password</label>
        <input type="text"  id="text_pass" class="form-control"  >
        </div>
         <button style="margin-left:45%;height:50px;width:100px;" class="update_acc" class="btn btn-default">OK</button>
        <div class="modal-footer">
      
        </div>
      </div>
      
    </div>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
  <script type="text/javascript">
 $(function() {
	 // edit click
	     $('.edit_btn').click(function(e){
	    	  var id = $(this).closest('.onRow').find('td:nth-child(1)').text();
	    	  var email = $(this).closest('.onRow').find('td:nth-child(2)').text();
	          var pass = $(this).closest('.onRow').find('td:nth-child(3)').text(); 
	          var e=$(this);
              $('#div_account').modal(); 
	          $('#text_email').val(email);
	          $('#text_pass').val(pass);
	          $('.update_acc').click(function(){
	        	  var ch_email=$('#text_email').val();
	        	  var ch_pass=$('#text_pass').val();
	        	  $('#div_account').modal("hide");
	        	  //
	        	  $.ajax({
	        			url : "account/edit",
	    				type : "POST",
	    				data : {
	    					id: id,
	    					email: ch_email,
	    					pass: ch_pass,
	    					method:"update"
	    					
	    				},
	    				success:function(value){
	    					if(value==="false"){
	    						alert("Update không thành công");
	    					}
	    					else 
	    					{
	    						
	    					   alert("Update thành công");
	    					   e.closest('.onRow').find('td:nth-child(1)').text(id);
	    					   e.closest('.onRow').find('td:nth-child(2)').text(ch_email);
	    					   e.closest('.onRow').find('td:nth-child(3)').text(value);
	    					
	    					 }
	    				}
	        	  });      		  
	               //
	          });
	     });
	 //
	 //delete click
	  $('.delete_btn').click(function(event){
		  var id = $(this).closest('.onRow').find('td:nth-child(1)').text();
		  var event=$(this);
		  $.ajax({
  			url : "account/delete",
				type : "POST",
				data : {
					id: id,
					method:"delete"
					
				},
				success: function(value) {
					if(value==="false"){
						alert("Delete không thành công");
					}
					else 
					{
						alert("Delete thành công");
						event.closest('.onRow').remove();
					 }
				}
  	  });      		  
		  
	  }); 
  }); 
  </script>
</body>
</html>