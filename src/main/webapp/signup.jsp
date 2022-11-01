<%--
  Created by IntelliJ IDEA.
  User: 91747
  Date: 28-04-2022
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Util.SqlUtil"%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="img/icons/pawprint.png" />
    <title>Sign Up</title>
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,200' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="css/reset.min.css" type="text/CSS">
    <link rel="stylesheet" href="css/form-style.css" type="text/CSS">

    <script>
        (function(i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function() {
                (i[r].q = i[r].q || []).push(arguments);
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m);
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-29231762-2', 'auto');
        ga('send', 'pageview');
    </script>
</head>

<body>
<form  method="post">
    <ul id="progressbar">
        <li class="active">Account Setup</li>

        <li>Personal Details</li>
    </ul>
    <fieldset>
        <img class="logo" src="img/logo.png">
        <h2 class="fs-title">Sign up</h2>
        <h3 class="fs-subtitle">Let’s have a new beginning. Sign up for new you</h3>
        <select id="select" name="userType" class="form-control" aira-describedby="select-helpBlock" required placeholder="- select here -  ">
            <option value="">- select here -</option>
            <option value="Organization">Organization</option>
            <option value="Individual">Individual</option>
        </select>
        <input type="text" name="username" placeholder="Username" />
        <input type="text" name="email" placeholder="Email" />
        <input type="password" name="password" placeholder="Password" />
        <input type="password" name="cpass" placeholder="Confirm Password" />
        <input type="button" name="next" class="next action-button" value="Next" />
    </fieldset>

    <fieldset>
        <img class="logo" src="img/logo.png">
        <h2 class="fs-title">Personal Details</h2>
        <input type="text" name="name" placeholder="Name" />
        <input type="text" name="phone" placeholder="Phone" />
        <input type="text" name="website" placeholder="Website" />
        <textarea name="address" placeholder="Address"></textarea>
        <input type="button" name="previous" class="previous action-button" value="Previous" />
        <input type="submit" name="submit" class="submit action-button" value="Submit" />
    </fieldset>
    <p>Already have an account? <a href="login.jsp">log in</a></p>
</form>
    <%! String userType,username,email,password,cpass,name,phone,website,address;%>
        
        <%
            if(request.getParameter("submit")!=null)
            {
            userType=request.getParameter("UserType");
            username=request.getParameter("username");
            email=request.getParameter("mail");
            password=request.getParameter("Pass");
            cpass=request.getParameter("cpass");
            name=request.getParameter("name");
            phone=request.getParameter("phone");
            website=request.getParameter("website");
            address=request.getParameter("address");
         
            try{
         SqlUtil.connectDb();
         System.out.println("className.methodName()");
         SqlUtil.insert("insert into user(email,userType,username,password,name,phone,website,address,c_address) values('"+email+"','"+userType+"','"+username+"','"+password+"','"+name+"','"+phone+"','"+website+"','"+address+"');");
         response.sendRedirect("login.jsp");
         }catch(Exception ex)
            {
                System.out.println("Problem in inserting data : "+ex);
            }
}
        %>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="js/form-main.js"></script>

</body>

</html>
