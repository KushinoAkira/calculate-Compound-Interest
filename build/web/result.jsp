<%-- 
    Document   : result
    Created on : Jun 17, 2024, 12:34:11 AM
    Author     : h_u_n
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <article>
            <% 
            String error = "";
            boolean isSubmitted = "POST".equalsIgnoreCase(request.getMethod());
            %>
            <p>Compound Interest Calculator</p>
            <form action="Calculator" method="post">
                Principle Amount: $<br>
                <input type="text" name="Amount" value=${x}> <br>
                <c:if test="${message} != null">
                <p>${message}</p>
                </c:if>
                
                Interest Rate (Percentage): <br>
                <input type="text" name="Rate" value=${y}> <br>
                <c:if test="${message} != null">
                <p>${message}</p>
                </c:if>
                
                # of Years: <br>
                <input type="text" name="Years" value=${z}> <br>
                <c:if test="${message} != null">
                <p>${message}</p>
                </c:if>
                
                Time per Year(1 to 12): <br>
                <input type="text" name="Times" value=${t}> <br>
                <c:if test="${message} != null">
                <p>${message}</p>
                </c:if>
                
                <button type="submit">Calculate</button> <br>
                
                <% if (isSubmitted && error.isEmpty()) { %>
                <p>Result: ${interestRate}</p>
                <% } else if (!error.isEmpty()) { %>
                <p>Error: <%= error %></p>
                <% } %>
            
            </form>
        </article>
       
    </body>
</html>
