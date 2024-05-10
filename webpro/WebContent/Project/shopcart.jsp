<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="mystyle.css">
<link rel="shortcut icon" href="./images/bag.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://
fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&family=Jua&display=swap"
	rel="stylesheet">

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body * {
	font-family: "Hahmlet", serif;
	font-optical-sizing: auto;
	font-weight: < weight >;
	font-style: normal;
	font-optical-sizing: auto;
	font-weight: <weight>;
}
</style>
</head>
<body class="otherBody">

	<h1 id="page">장바구니 페이지</h1>
	<fieldset>
		<div id="table"></div>
		

		<br> <br> <input type="submit" value="구매"
			class="button"> 
			<input type="button" onclick="cal()" value="수량변경" class="button">
	</fieldset>
	<br>
	<a href="main.html" class="home">Back to Home</a>
	<%@ page import="java.util.Arrays" %>
<% 
		request.setCharacterEncoding("UTF-8");
	//컴퓨터 의류 음악 영화 스포츠 가구 식품
	String tableData = request.getParameter("tableData");

	String[] strArr = tableData.split(",");
	int[] intArr = new int[strArr.length];
	for(int i=0; i<strArr.length; i++){
		intArr[i]=Integer.parseInt(strArr[i]);
	}
	 	
	%>
<script>
let nameArr = ['포유컴퓨터PC', 'APPLE아이맥', '주연테크굿워크D1', '지오다노반팔티셔츠', '폴햄조거탄성팬츠', '지오다노폴로피케','OMG','Drama','첫만남은계획대로..',
	'범죄도시4','스턴트맨','쿵푸팬더4','네이처하이크빌리지텐트','구스토그릴','퍼스트웨건카트','에이픽스게이밍책상','지누스매트릭스','이케아이동식서랍장','블랙라벨스테이크','시푸드팟타이','기사식당돼지불고기'];
let priceArr = [1800000,5000000,3000000,45000,30000,20000,2000,2000,2000,5000,5000,5000,1500000,300000,80000,1000000,800000,80000,16000,10000,10000];
let intArr = <%= Arrays.toString(intArr) %>;

//DOMContentLoaded 이벤트 리스너 등록
document.addEventListener("DOMContentLoaded", table());

function table() {
	
	disp=`<table border="1"> <tr>
	<th>품목</th>
	<th>가격</th>
	<th>수량</th>
	<th>합계</th>
</tr>`;
let total = 0;
for (var i = 0; i < intArr.length; i++) {
    if(intArr[i]!=0){
    	var sum = (priceArr[i]*intArr[i]).toLocaleString();
    	total+=priceArr[i]*intArr[i];
    	disp += '<tr id="'+i+'">' +
        '<td>' + nameArr[i] + '</td>' +
        '<td class="price">' + priceArr[i].toLocaleString() + '</td>' +
        '<td><input class="qty" type="number" min="0" value="'+intArr[i]+'"></td>' +
        '<td class="sum">' + sum + '</td>' +
        '</tr>';
}
}
total = total.toLocaleString() + "";
disp += '<tr>' +
'<th colspan="2">총 합계</th>' +
'<td colspan="2" id="totalSum">' + total + '</td>' +
'</tr>' +
'</table>';
document.querySelector("#table").innerHTML = disp;
	console.log('table실행');
}

// //모든 .qty input 요소 선택
// var qtyInputs = document.querySelectorAll(".qty");
// //모든 .qty input 요소에 이벤트 리스너 추가
// qtyInputs.forEach(function(qtyInput) {
// 	console.log('이벤트1실행');
//     qtyInput.addEventListener("input", function() {
// 	console.log('이벤트2실행');
//         // 현재 입력된 수량 입력란의 부모 행 찾기
//         var row = qtyInput.closest("tr");
        
//         // 행의 ID 가져오기
//         var rowId = parseInt(row.id);
        
//      // 입력된 수량 값 가져오기
//         var quantity = qtyInput.value;
     
// 	for (var i = 0; i < intArr.length; i++) {
// 		if(nameArr[i]==nameArr[rowId]){
// 			intArr[i]=quantity;
// 		}
// 	}
// 	table();
	
//     });
// });

function cal() {
    let price = document.getElementsByClassName('price');
    let qtys = document.getElementsByClassName('qty');
    let sums = document.getElementsByClassName('sum');
    let total = document.querySelector('#totalSum');
    let totalsum = 0;
    
    for(var i = 0; i < qtys.length; i++) {
        let itemPrice = parseInt(price[i].innerText.replace(/,/g, ''));
        let itemQty = parseInt(qtys[i].value);
        let sum = itemPrice * itemQty;
        console.log(itemQty);
        sums[i].innerText = sum.toLocaleString();
        totalsum += sum;
    }
    total.innerText = totalsum.toLocaleString();
}

</script>
</body>
</html>