<%-- 
    Document   : produtos-lista
    Created on : 14/08/2015, 21:03:55
    Author     : emanoelle.stival
--%>

<%@page import="java.util.List"%>
<%@page import="br.pucpr.prog4.lojavirtual.models.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Loja Virtual</h1>
        <%
           List<Produto> produtos;
           produtos = (List<Produto>) request.getAttribute("produto");
           
           for(Produto produto: produtos){
            %> 
            <div>
                <p><%=produto.getNome()%></p>
                <a href="produto-detalhe?id= "<%=produto.getId()%>
                   <img src="imagens/0<%=produto.getId()%>.jpg" 
                     alt="produto"<%=produto.getId()%> />
                </a>
                     <p>R$ <%=produto.getPreco()%></p>
            </div>
                   <%
           }
       %>
    </body>
</html>
