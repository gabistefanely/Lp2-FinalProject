<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<!-- Link para CSS na pasta Styles
<link rel="stylesheet" type="text/css" href="Styles/style.css">  --> 
<style>
html, body{
    height: 100%;
    padding: 0;
    margin: 0;
}
.Titulo{
    font-size: 50px;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
    color: #ffffff;
}


* {
    font-family: 'times new roman', sans-serif;
    color: var(--fontcolor);
}
body{
    align-items: center;
    justify-content: center;
    display: flex;
    flex-direction: column;  
    background-image: url('file:///C:/Users/Gabriella/AppData/Local/Packages/5319275A.WhatsAppDesktop_cv1g1gvanyjgm/TempState/47D3158FE13ECAE94D599D4973A374E8/Imagem%20do%20WhatsApp%20de%202023-11-13%20%C3%A0(s)%2016.09.30_275f3875.jpg');
    background-position: center, center;
    background-repeat: no-repeat;
    background-size: cover;
}


button {
    padding-left: 40px; 
    padding-right: 40px;
    padding-top: 10px;
    padding-bottom: 10px;
    cursor: pointer; 
    background-color: transparent;
    border: bold;
    border-size: 4px;
    border-color: white; 
    font-size: 30px;
    margin: 10px 0;
    font-weight: 600;
}

button:hover{
    background-color: rgb(255, 255, 255);
    opacity: 0.5;
    color: black;
}
</style>
</head>
<body>
    <div class="Titulo">
        <h2>VIAJE PELO MUNDO </h2>

        <a href="formulario.jsp"><button>FORMULÁRIO</button></a>
        <a href="pictureUsers.jsp"><button>FOTOS</button></a>

    </div>


</body>
</html>
