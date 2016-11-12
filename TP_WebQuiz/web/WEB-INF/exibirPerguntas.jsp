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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TP Quiz</title>
    </head>
    <body>
        <h1>Quiz</h1>
        <h2>Tema do Quiz</h2>
        
        <form action="index.jsp">
            <% ArrayList<Questions> teste = Perguntas.getTeste();%>
            <% for (Questions q : teste) {%>
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
                   <% }%>
                   <input type="submit" name="userTest" value="confirmar"/>
        </form>
    </body>
</html>
