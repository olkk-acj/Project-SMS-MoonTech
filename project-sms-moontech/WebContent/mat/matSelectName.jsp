<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
    Moon Tech
  </title>
  <!-- Favicon -->
  <link href="/resources/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="/resources/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
  <link href="/resources/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="/resources/css/argon-dashboard.css?v=1.1.1" rel="stylesheet" />
</head>
<body>
<div class="header bg-gradient-primary pb-3 pt-5 pt-md-3">
      <div class="container-fluid">
            <div class="col-sm-12">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
            <div class="card-header border-0">
              <h3 class="mb-0"> 부품 등록</h3>
            </div>
		 <form method= "GET"  action = "mat.do">
		 	<div class="row">
			<div class="col">	
		 	<input type = "hidden" name = "command" value = "mat_select">		
		 	<input type="text" name="selectNm" placeholder = "재료명을 검색하시오" class="form-control" />
		 </div>

		<div class="col">				
		 <input type = "submit"  value="검색" class="btn btn-primary btn-lg"></input>
		 </div>
	     </div>
		 </form>
	<div class="row">
           <!-- Card stats -->
            <div class="col-lg-12">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
            <div class="card-header border-0">
              <h3 class="mb-0"> 재료 목록</h3>
            </div>
          <div class="row">
		<table class="table align-items-center table-flush">
			<thead class="thead-light">
				<tr>
			<thead>
				<tr>
					<th scope="col" >재료번호</th>
					<th scope="col" >재료명</th>
					<th scope="col" >사이즈</th>
					<th scope="col" >무게</th>
					<th scope="col" >표준가격</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items = "${matList}" var = "mat">
					<tr>
					<td>
					<a href="#" onclick="sendToParent('${mat.matSq}','${mat.matNm}')"> ${mat.matSq}</a></td>
                     <td>
                    <a href="" onclick="sendToParent('${mat.matSq}','${mat.matNm}')">${mat.matNm}</a></td>	
					<td>${mat.matSize}</td>
					<td>${mat.weight}</td>
					<td>${mat.stanPrice}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
			</div>
			</div>
			</div>
			</div>
			</div>		 
</div>
</div>
</div>
</div>

</div>
			
</body>
<script>
function sendToParent(matSq,matNm) {
    opener.document.getElementById("matSq").value = matSq;
    opener.document.getElementById("matNm").value = matNm;
    window.close();
 }
</script>
</html>