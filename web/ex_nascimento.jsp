<%@page import="model.Suporte"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! 
    String nome, nasc, dia;
%>
<%
    nome = request.getParameter("nome");
    nasc = request.getParameter("nasc");
    if (nasc!=null){
        dia = Suporte.getDiaDaSemana(nasc);
    }
%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <h3>Cadastro</h3>
        <form method="GET" >
            <pre>
                Nome:      <input type="text" name="nome">
                Data Nasc: <input type="date" name="nasc">
                           <input type="submit">
            </pre>
        </form>
        <hr>
        <% 
            if (this.nome!=null) {%>
            <pre>
                Nome:           <%=nome%>
                Data Nasc:      <%=nasc%>
                Dia da semana:  <%=dia%>
            </pre>
        <%}%>
    </body>
</html>
