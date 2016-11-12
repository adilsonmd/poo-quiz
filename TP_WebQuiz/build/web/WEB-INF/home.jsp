<%-- 
    Document   : home
    Created on : 11/11/2016, 21:17:47
    Author     : Beto
--%>

<%@page import="com.quiz.Perguntas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("userTest")!=null){ //Pegando os dados da pagina exibirPerguntas
        String resposta[] = {
            request.getParameter("0"),
            request.getParameter("1"),
            request.getParameter("2"),
            request.getParameter("3"),
            request.getParameter("4"),
            request.getParameter("5"),
            request.getParameter("6"),
            request.getParameter("7"),
            request.getParameter("8"),
            request.getParameter("9"),
            request.getParameter("10"),
                
        };
        Perguntas.validaTeste(resposta);
    }
        
    }    
     
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TP Quiz</title>
    </head>
    <body>
        <h1>Quiz!</h1>
        <h3>Ultima nota: <%= Perguntas.getResAnterior()+ "%"%></h3>
        <a href="exibirPerguntas.jsp"><button>Iniciar Teste</button></a>
    </body>
</html>
