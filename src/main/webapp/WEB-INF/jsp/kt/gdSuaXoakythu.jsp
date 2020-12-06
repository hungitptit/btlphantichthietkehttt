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
  <form name="timkiem" action="doTimkiem" method="post">
  <input type="text" name="name" id="name" required /></td>
  <input class= "btn-success btn-md" type="submit" value="Tìm kiếm" />
  </form>
 </div>
 <br>
 <div class="panel panel-primary">
  <div class="panel-heading">
   <h3>Danh sách kỳ thủ</h3>
  </div>

  		<%  if(request.getParameter("timkiem") !=null && request.getParameter("timkiem").equalsIgnoreCase("true")){
  			 Object listKythu = session.getAttribute("listKythu");
             request.setAttribute("listKythu", listKythu);
  		}else{
  			KythuDAO dao = new KythuDAO();
  			List<Kythu> listAll= new ArrayList<Kythu>();
             listAll = dao.getAll();
            request.setAttribute("listKythu", listAll);
  		}
  		
        %>
       
  
  <div class="panel-body">
   <table class="table table-bordered" id="table">
    <thead>
     <tr>
      <th width="15%">ID Thành viên</th>
      <th width="10%">ID Kỳ thủ</th>
      <th width="30%">Họ và tên</th>
      <th width="20%">Elo trước giải</th>
      <th width="20%">Quốc tịch</th>
      <th width="20%"></th>
      <th width="20%"></th>
     </tr>
    </thead>
    <tbody>
     <c:forEach items="${listKythu}" var="kt">
      <tr>
       <td>${kt.id}</td>
       <td>${kt.kythuId}</td>
       <td>${kt.name}</td>
       <td>${kt.elotruocgiai}</td>
       <td>${kt.quoctich}</td>
       <td><a type="button" class="btn btn-primary"
        href="/formkythu?id=${kt.id}">Sửa kỳ thủ</a></td>
        <td>
       <a type="button" class="btn btn-danger"
        href="/doXoakt?id=${kt.kythuId}">Xóa kỳ thủ</a></td>
      </tr>
     </c:forEach>
    </tbody>
   </table>
  </div>
 </div>
 
 <div>
  <form name="timkiem" action="gdSuaXoakythu" method="get">
  
  <input class= "btn-success btn-md" type="submit" value="Tất cả danh sách" />
  </form>
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