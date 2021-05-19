<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Teste de laços! While</h1>
        <% 
            int c=1;
            while (c<=10){
                out.println("-> " + c + "<br>");
                c++;
            }
        %>
         <h1>Teste de laços! Do While</h1>
        <% 
            c=1;
            do {
                out.println("-> " + c + "<br>");
                c++;
            } while (c<=10);
        %>
        <h1>Teste de laços! For </h1>
        <% 
            for (c=1; c<=10; c++) {
                int t = 5;
                out.println(t + " x " + c + " = " + (t*c) + "<br>");
            }
        %>
    </body>
</html>
