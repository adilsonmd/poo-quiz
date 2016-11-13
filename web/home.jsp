<%-- 
    Document   : home
    Created on : 11/11/2016, 21:17:47
    Author     : Beto
--%>

<%@page import="com.quiz.Perguntas"%>
<%@page import="com.quiz.Questions"%>
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
%>
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <script src="js/jquery.min.js"></script>
        <script src="js/home.js"></script>
    </head>
<body>
        
    <nav>
        <div class="container-fluid"></div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="offset-md-2 col-md-8 quiz-desc">
                <h1>Bem-vindo</h1>
                <p>Aqui você poderá testar seus conhecimentos.
                    Uma aplicação que irá te dar maior facilidade
                    para verificar seu progresso.
                </p>
                <form method="POST" action="exibirPerguntas.jsp" id="form" autocomplete="off">
                    <div class="form-inline">
                        <div id="div-danger" class="form-group">
                            <input id="nm_aluno" class="form-control form-control-lg" type="text" name="nm_aluno" placeholder="Digite seu nome"/>
                        </div>
                        <button id="bt_submit" type="submit" class="btn btn-outline-danger btn-lg">Iniciar Teste</button>
                    </div>
                </form>
                
            </div>
        </div>
        <% if(request.getParameter("prova") != null) { %>
        <div class="row">
            <div class="offset-md-2 col-md-7 estatistica">
                <h3>Ultima nota: <%= Perguntas.getResAnterior()+ "%"%></h3>
                <br/>
                <h3>Média: <%= Perguntas.getResAtual()+"%" %></h3>
                
            </div>
        </div>
        <% } %>
    </div>

    <footer>
        <div class="container-fluid"></div>
    </footer>

    <script src="js/bootstrap.min.js"></script>
</body>
</html>
