<%@page import="java.util.List"  import="java.util.ArrayList,com.example.demo.dao.*,com.example.demo.model.*"%>
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
<body >
<div class="container" style="margin-bottom: 100px">
 <div>
  
 </div>
 <br>
 <div class="panel panel-primary">
  <div class="panel-heading">
   <h3>Danh sách chi tiết các trận thi đấu của kỳ thủ</h3>
  </div>

  		<%  
  			String idKythu = request.getParameter("id");
  			DanhsachchitietDAO dao = new DanhsachchitietDAO();
  			List<Danhsachchitiet> listct = new ArrayList<Danhsachchitiet>();
  					listct=dao.dschitiet(Integer.parseInt(idKythu));
            request.setAttribute("listct", listct);
  		
  		
        %>
       
  
  <div class="panel-body">
   <table class="table table-bordered" id="table">
    <thead>
     <tr>
      <th width="10%">ID Trận đấu</th>
      <th width="30%">Tên đối thủ</th>
      <th width="20%">Cầm quân</th>
      <th width="20%">Elo thay đổi</th>
     </tr>
    </thead>
    <tbody>
     <c:forEach items="${listct}" var="tk">
      <tr>
      
       <td>${tk.idTrandau}</td>
       <td>${tk.doithu}</td>
       <td>${tk.camquan}</td>
       <td>${tk.elothaydoi}</td>
       
      </tr>
     </c:forEach>
    </tbody>
   </table>
  </div>
 </div>
 
 <div>
 
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