<%-- 
    Document   : mealplan
    Created on : Jan 27, 2017, 9:37:24 PM
    Author     : POTHINA RAJA SEKHAR
--%>

<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.imageio.*"%>
<%@page import="java.net.URL"%>
<%@page import="org.json.JSONObject"%>
<%@page import="com.mashape.unirest.http.HttpResponse"%>
<%@page import="com.mashape.unirest.http.JsonNode"%>
<%@page import="com.mashape.unirest.http.Unirest"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <p>
        
        <%
          //  out.println("\"adsaf");
        
    //These code snippets use an open-source library.
   
   
HttpResponse<JsonNode> response1 = Unirest.get("https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/mealplans/generate?diet=vegetarian&exclude=shellfish%2C+olives&targetCalories=2000&timeFrame=day")
.header("X-Mashape-Key", "f4IU9YnjcAmshodxz4PbNCMilS6Np1VTdfDjsnlzMFwtq6vXPJ")
.header("Accept", "application/json")
.asJson();
        
        out.println("<p>"+response1.getBody().getObject().getJSONArray("meals").getJSONObject(0).getString("title")+"</p>");
        out.println("<img src=\"https://spoonacular.com/cdn/recipeImages/"+response1.getBody().getObject().getJSONArray("meals").getJSONObject(0).getString("image")+"\">"+"</img>");
        out.println("<p>"+response1.getBody().getObject().getJSONArray("meals").getJSONObject(0).getString("title")+"</p>");
        
        %>
    </p>
    <img src="https://spoonacular.com/recipeImages/<%out.println(response1.getBody().getObject().getJSONArray("meals").getJSONObject(0).getString("image"));%>"></img>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
