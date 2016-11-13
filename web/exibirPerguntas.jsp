<%-- 
    Document   : teste
    Created on : 12/11/2016, 14:57:13
    Author     : Beto
--%>

<%@page import="com.quiz.Perguntas"%>
<%@page import="com.quiz.Questions"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Prova</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <script src="js/jquery.min.js"></script>
    </head>
    <body>
        <nav>
            <div class="navbar navbar-default">
                <div class="navbar nav">
                    <a class="navbar-brand" href="home.jsp">Home</a>
                </div>
            </div>
        </nav>
        <div class="container quiz">
            <div class="row">
                <h1>Quiz</h1>
                <h2>Tema do Quiz</h2>
            </div>

            <div class="row">
                <form action="home.jsp">
                    <% ArrayList<Questions> teste = Perguntas.getTeste(); %>
                    <% for (Questions q: teste) {%>
                    <h3><%= q.getPergunta()%></h3>
                    <input type="radio"
                           name="<%= teste.indexOf(q)%>"
                           value="<%= q.getAlternativa()[0]%>"/>
                    <%= q.getAlternativa()[0]%>

                    <input type="radio"
                           name="<%= teste.indexOf(q)%>"
                           value="<%= q.getAlternativa()[1]%>"
                           />
                    <%= q.getAlternativa()[1]%>

                    <input type="radio"
                           name="<%= teste.indexOf(q)%>"
                           value="<%= q.getAlternativa()[2]%>"/>
                    <%= q.getAlternativa()[2]%>
                    <% } %>
                    <button class="btn btn-outline-success" type="submit" name="prova" value="1">Finalizar</button>
                </form>
            </div>
        </div>
    </body>
</html>
