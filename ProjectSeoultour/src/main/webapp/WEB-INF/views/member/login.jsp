<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Hello!</title>
  </head>
  <body>
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

	<style>
		.container {
		  position: absolute; left:50%; top:50%;
		  transform: translate(-50%)
		}
		.child {
		  width: 100px;
		  height: 100px;
		  background-color: success;
		}
	</style>


	<form action="/seoul/login" method="post" style="margin-left:760px; margin-top:50px;">
	
		<div style='margin-left:70px; margin-bottom:50px; width: 10%; height:10%; opacity: 0.3'>
            <img src='/resources/images/002.png'>
        </div><br/><br/>
		
		<div class="card text-center" style="width: 20.5rem; height: 24rem; box-shadow: inset 7px 7px 7px -7px #C0C0C0;">
			<div class="card-body"><br/>
				<h5 class="card-title">로그인&nbsp;</h5><br><br/>
				<div class="position-absolute top-50 start-50 translate-middle" style="margin-left:42px;">
				  	<div class="form-floating mb-3">
					  <input type="text" class="form-control" id="floatingInput" placeholder="&nbsp; ID" name='id' required>
					  <label for="floatingInput"></label>
					</div>
					<div class="form-floating">
					  <input type="password" class="form-control" id="floatingPassword" placeholder="&nbsp; Password" name='pw' required>
				  		<label for="floatingPassword"></label>
					</div><br/><br/>
			
				  <button type="submit" class="btn btn-dark">로그인</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      <a href="/seoul/register" class= "btn btn-dark">회원가입</a>
			     </div>
		    </div>
		  </div>
	</form>
	

</body>
</html>