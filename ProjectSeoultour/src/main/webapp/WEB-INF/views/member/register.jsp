<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	

    <title>Hello!</title>
  </head>
  <body>
  
	<form action="/seoul/register" method="post" style="margin-left:700px; margin-top:95px; margin-right:50px;" >
		 <div class="card text-center" style="width:24rem; height:48rem; "><br/>
			  <h5 >회 원 가 입</h5><hr/><br/>
			  <div class="form-group ">
			  	<label for="exampleInputEmail1" style="margin-left:-15px"></label>
			   	<input type="text" class="form-control" id="name" placeholder="&nbsp; Name" id="exampleCheck1" name="name_"  style="width: 250px;  margin-left:65px;"/>
			  </div>
		   	  <div class="form-group ">
			   	<label for="exampleInputEmail2" style="margin-left:-15px"></label>
			   	<input type="text" class="form-control" id="id" placeholder="&nbsp; ID" id="exampleCheck1" name="id_"  style="width: 250px;  margin-left:65px;"/>
			  </div>
			  <div class="form-group ">
			  	<label for="exampleInputEmail3" style="margin-left:-15px"></label>
			   	<input type="text" class="form-control" id="pw" placeholder="&nbsp; Password" id="exampleCheck1" name="pw_" style="width: 250px; margin-left:65px;"/>
			  </div>
			  <br/><br/>
			  <div class="form-group ">
				<label for="exampleInputEmail4" style="margin-left:-180px">연락처</label>
				<input type="text" class="form-control" id="number" aria-describedby="numHelp" placeholder="&nbsp; Phone" name="number_" style="width: 250px;  margin-left:65px;">
				<small id="numHelp" class="form-text text-muted">'-'빼고 숫자만 입력하세요</small>
			  </div><br/>
			  <div class="form-group">
			    <label for="exampleInputEmail5" style="margin-left:-180px">이메일</label>
			    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="&nbsp; Enter email" name="email_" style="width: 250px; margin-left:65px;">
			    <small id="emailHelp" class="form-text text-muted">이메일 주소를 입력하세요</small>
			  </div>
		  
	  		  <br/>
			  <div class="form-check"  style="margin-left:-20px; margin-top:10px">
				  <label class="form-check-label" for="flexRadioDefault1" > 남 &nbsp; &nbsp; &nbsp;  </label >
				  <input class="form-check-input" type="radio" name="sex_" id="m">
					&nbsp; &nbsp; &nbsp; &nbsp; 
				  <label class="form-check-label" for="flexRadioDefault2"> 여 &nbsp; &nbsp; &nbsp;  </label>
				  <input class="form-check-input" type="radio" name="sex_" id="f" checked>
				</div>
				<br/>
		<button type="submit" class="btn btn-dark"  style="margin-top:10px">회원가입</button>
		</div>
		
		<div style='position: relative; margin-left:380px; margin-top:-170px; width: 10%; height:10%; size:50%'>
            <img src='/resources/images/001.png'>
        </div>
        
	</form>
	
	

</body>
</html>