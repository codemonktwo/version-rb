<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

input[type=text], select {
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=number], select {
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>
<%
     if(session.getAttribute("username")==null){
    	 response.sendRedirect("login.jsp");
     }
%>
</form>
<script>
function solve(){
	   let p=document.getElementById("shirts").value;
	   let q=document.getElementById("tshirts").value;
	   let r=document.getElementById("jeans").value;
	   let s=document.getElementById("trousers").value;
	   let t=document.getElementById("sarees").value;
	   let a=((p*10)+(q*5)+(r*15)+(s*20)+(t*50));
	   let d=Math.floor(a);
	      document.getElementById("amounttobepaid").value = d ;
	}


</script>
<h3>Order......</h3>

<div>
  <form action="">
    <label for="shirts">Shirts(Price:10)</label><br/>
    <input type="number" id="shirts" name="shirts" onkeyup="solve()" onchange="solve()" placeholder="0" min="0"><br/>
    
     <label for="tshirt">T-Shirts(Price:5)</label><br/>
    <input type="number" id="tshirts" name="tshirts" onkeyup="solve()" onchange="solve()" placeholder="0" min="0"><br/>
    
     <label for="jeans">Jeans(Price:15)</label><br/>
    <input type="number" id="jeans" name="jeans" onkeyup="solve()" onchange="solve()" placeholder="0" min="0"><br/>
    
     <label for="trousers">Trousers(Price:20)</label><br/>
    <input type="number" id="trousers" name="trousers" onkeyup="solve()" onchange="solve()" placeholder="0" min="0"><br/>
    
     <label for="sarees">Sarees(Price:50)</label><br/>
    <input type="number" id="sarees" name="sarees" onkeyup="solve()" onchange="solve()" placeholder="0" min="0"><br/>
     
     <label for="amounttobepaid"><h4>Amount to be paid...</h4></label>
    <input type="text" id="amounttobepaid" name="amounttobepaid" placeholder="0"><br/>
    
  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>