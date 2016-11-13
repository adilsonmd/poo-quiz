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
        <% ArrayList<Questions> teste = Perguntas.getTeste(); 
            int questaoAtual = 0;
        %>
        <nav>
            <div class="navbar navbar-default">
                <div class="navbar nav">
                    <a class="navbar-brand" href="home.jsp">Home</a>
                </div>
            </div>
        </nav>
        <div class="container-fluid">
            
            <div class="row quiz-container">
                <div class="col-md-8">
                    <h2>Quiz: <%= request.getParameter("nm_aluno")%></h2>
                    
                    <form method="POST" action="home.jsp">
                        
                        <% for (Questions q: teste) { %>
                        
                            <div class="pergunta" id="q<%= teste.indexOf(q)%>" style="display: none;">
                            <br/>
                            <h3><%= q.getPergunta()%></h3>
                            <input type="radio"
                                   name="<%= teste.indexOf(q)%>"
                                   value="<%= q.getAlternativa()[0]%>"/>
                            <%= q.getAlternativa()[0]%>
                            <br/>
                            <input type="radio"
                                   name="<%= teste.indexOf(q)%>"
                                   value="<%= q.getAlternativa()[1]%>"/>
                            <%= q.getAlternativa()[1]%>
                            <br/>
                            <input type="radio"
                                   name="<%= teste.indexOf(q)%>"
                                   value="<%= q.getAlternativa()[2]%>"/>
                            <%= q.getAlternativa()[2]%>
                            <br/>
                        </div>
                            
                        <% questaoAtual++; } %>

                        <button class="btn btn-outline-success" type="submit" name="prova" value="1">Finalizar</button>
                    </form>
                        <button id="bt_voltar" class="btn btn-default"><</button>
                        <button id="bt_avancar" class="btn btn-default">></button>
                </div>
            </div>
        </div>
        <script src="js/main.js"></script>
    </body>
</html>
