<%@ include file="../header.jsp"%>
<%@ include file="../navigation.jsp"%>

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
 
 <br>
 
  <div class="panel-body">
  <h2 style="text-align: center"> Giao diện chính nhân viên quản lý </h2>
  
     <div style="text-align: center">
     <br>
       	<a type="button" class="btn btn-success"
        href="/gdqlttkt">Quản lý thông tin kỳ thủ</a></td>
        <br>
        <br>
        <a type="button" class="btn btn-success"
        href="/gdlenlich">Lên lịch thi đấu từng vòng đấu</a></td>
     	<br>
     	<br>
        <a type="button" class="btn btn-success"
        href="/gdxemtk">Xem thống kê Elo thay đổi</a></td>
     
     </div>
     	
      
  </div>
 </div>


<div>
<!-- %@ include file="footer.jsp"%>  -->

</div>

</body>
<div class="footer">
    
    <h2>
        
        Tran Xuan Hung
    </h2>
</div>

</html>