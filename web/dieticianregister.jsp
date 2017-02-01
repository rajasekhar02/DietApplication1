<%@page import="com.connect.connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
     <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
        <title>User Registration</title>
    </head>
    <script>
        $(function(){
            $("#validate-form").validate({
                rules:{
                    firstname:{
                        required:true 
                    },
                    designation:{
                        required:true
                        
                    },
                    password:{
                        required:true,
                        minlength:8
                       
                    },
                    confirmpassword:{
                        required:true,
                        equalTo:"#pass"
                    },
                    exp:{
                        required:true,
                        number:true,
                        min:5
                    },
                    dietid:{
                        required:true
                    }
                    
                },
                messages:{
                    firstname: {required:'Please enter full name'},
                    designation:{required:'Please enter designation'},
                    dietid:{required:"Please Enter Your Id"},
                    password:{required:"Please enter the password",
                    minlength:"Password should be atleast 8 character"
                    },
                        
                    },
                    confirmpassword:{
                    required:"Please enter the confirm password",    
                    equalTo:"Please enter the same password"}
                
            });
        });
    </script>
    <body background="images/userregister.jpg">
        <div class="container">
            <div style="background:transparent !important" class="jumbotron">
            <h1> <center> <div class="well"><font color="orange"> Dietician Registration</font></div></center></h1>
            
                <center>
                    <a href="home.jsp" class="btn btn-info"> Home </a>
                    <a href="dieticianlogin.jsp" class="btn btn-info"> login </a><br></center>
            </div>
        </div>
        <form  action="checkdieticianregister.jsp" method="post" id="validate-form">
        <div class="container">
            <div class="jumbotron">
               <center>
                <table border="0">
                  <%
                    String msg= request.getParameter("msg");
                    if(msg!=null)
                        {
                            if(msg.equals("diff"))
                                {
                  %>


                    <tr>
                        <th colspan="2"><center><font color="red">Please enter same passwords!</font></center></th>
                    </tr>


                <% }
                    else if(msg.equals("aadded")){
                %>
                    <tr>
                        <th colspan="2"><center><font color="red">please enter all fields or Choose another userid!</font></center></th>
                    </tr>
                <%  
                    }
                  }
                %>

                    <tr>
                        <td> Enter Full Name: </td>
                        <td> <input type="text" name="firstname" ></td>
                    </tr>
                    <tr>
                        <td> Enter Designation: </td>
                        <td><input type="text" name="designation" ></td>
                    </tr>
                    <tr>
                        <td> Enter Years of Experience:</td>
                        <td><input type="text" name="exp" data-validation="nummber"></td>
                    </tr>
                    <tr>
                        <td>Enter Your Id: </td>
                        <td><input type="text" name="dietid"></td></tr>
                    <tr>
                        <td>Enter Password: </td>
                        <td><input type="password" id="pass" name="password"></td>
                    </tr>
                    <tr>
                        <td> Confirm Password: </td>
                        <td><input type="password" name="confirmpassword"></td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <center><input type="button" value="Submit"></center>
                        </th>
                    </tr>
                </table>
                </center> 
            </div>
        </div>
        </form>
    
    </body>
</html>