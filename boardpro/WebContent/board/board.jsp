<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body *{
  box-sizing:   border-box;
}
nav , #write{
  margin : 10px 5% ;
}
nav a{
   visibility:  hidden;
}
#stype {
  width : 100px;
}
#sword {
  width : 150px;
}
p{
   border  : 1px dotted blue;
   padding : 4px;
   margin  :2px;
   word-break:keep-all;/* 줄바꿈: 단어단위로  */
}
.p12{
  display: flex;
  flex-direction:  row;
}

.p1{
   flex:  70%;
}
.p2{
   flex : 30%;
   text-align:  right;
}

.card-body, .reply-body{
   display:  flex;
   flex-direction:  column;
}
input[name=reply]{
   height : 55px;
   vertical-align: top;
}
textarea {
	width : 70%;
}
label{
  display : inline-block;
  width : 80px;
  height : 30px;
}
#modifyform{
  display: none;
} 
#modifyform textarea{
  vertical-align: bottom;
}
#btnok, #btnreset{
   height : 40px;
}
</style>
</head>
<body>

<div id="modifyform">
<textarea rows="5" cols="50"></textarea>
<input type="button" value="확인" id="btnok">
<input type="button" value="취소" id="btnreset">
</div>

 <input type="button" value="글쓰기" id="write" data-bs-toggle="modal" data-bs-target="#wModal">
 <br><br>
 
   <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
  <!-- <a class="navbar-brand" href="javascript:void(0)">Logo</a>  --> 
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Link</a>
        </li>
      </ul>
      <form class="d-flex">
        <select class="form-select" id="stype">
		  <option value="">전체</option>
		  <option value="writer" >이름</option>
		  <option value="subject" >제목</option>
		  <option value="content">내용</option>
		</select>
      
        <input class="form-control me-2" type="text" id="sword" placeholder="Search">
        <button class="btn btn-primary" id="search" type="button">Search</button>
      </form>
    </div>
  </div>
</nav>
 
<br><br>

<div class="container mt-3">
  <h2>Accordion Example</h2>

  <div id="accordion">
<% {
	String title = "";
	String writer = "";
 %>
 <div class="card">
      <div class="card-header">
        <a class="btn" data-bs-toggle="collapse" href="#collapse20">
                 제목 111111
        </a>
      </div>
      <div id="collapse20" class="collapse" data-bs-parent="#accordion">
        <div class="card-body">
            <div class="p12">
               <p class="p1">
                             작성자:<span class="wr">kkkkkk</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          이메일:<span class="em">121212@12312</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          조회수:<span class="hi">0</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          날짜 :<span class="da">2024.4.1</span>         
               </p>
               <p class ="p2">
               
               <input type="button"  value="수정" name="modify"  class="action">
               <input type="button"  value="삭제" name="delete"  class="action">
               </p>
            </div>
            <p class="p3">
                            내용출력 <br>
            </p>
            <p class="p4">
            <textarea rows="" cols="60"></textarea>
            <input type="button"  value="등록" name="reply"  class="action">
            </p>
            
        </div>
      </div>
    </div>
<%
}
%>
  </div>
</div>
</body>
</html>