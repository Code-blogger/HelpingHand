<%-- 
    Document   : singupdemo
    Created on : 01-May-2022, 12:43:47 PM
    Author     : 91747
--%>
<%@page import="Util.SqlUtil"%>
<%@page import="Util.uploadImage"%>
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/icons/pawprint.png" />
        <title>Sign Up</title>
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,200' rel='stylesheet' type='text/css'>
        <link href="css/form-style.css" rel="stylesheet" type="text/css">
        <link href="css/util.css" rel="stylesheet" type="text/css">
   

    </head>
    
        <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">

                <form class="login100-form validate-form" method="post" action="uploadServlet" enctype="multipart/form-data">
                    <img src="img/logo.png" width="200px" height="200px">
                    <span class="login100-form-title p-b-43">
Sign up					</span>
                    <select class="wrap-input100 " name="userType" required >
                        <option class="label-input100"><span id="sel">--Select here--</span></option>
                        <option class="label-input100" value="Oragnization">Organization</option>
                        <option class="label-input100" value="Individual">Individual</option>
                        </select>

                    <div class="wrap-input100 validate-input" data-validate="Valid name is required">
                        <input class="input100 txtb" type="text" name="name" placeholder="Name">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100 txtb" type="Email" name="mail" required placeholder="Email">
                        <span class="focus-input100"></span>
                    </div>


                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100 txtb " type="password" name="Pass" placeholder="Password">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Same password is required">
                        <input class="input100 txtb" type="password" name="cpass" placeholder="Confirm Password">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Valid Number is required">
                        <input class="input100 txtb" type="number" name="cno" placeholder="Contact Number">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 " data-validate="Username is required">
                        <input class="input100 txtb" type="text" name="username" placeholder="Username">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100" >
                        <input class="input100 txtb" type="text" name="add" placeholder="Address">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 " >
                        <input class="input100 txtb" type="text" name="website" placeholder="Website">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 " >
                        <span id="pic">Profile Pic</span><input class="input100 txtb" type="file" name="myimg" placeholder="Profile Pic" accept="image/*">
                        
                    </div>



                    <div class="container-login100-form-btn">

                        <input type="submit" value="Create Account" name="btn" class="signup-btn login100-form-btn">

                    </div>



                    <div class="text-center p-t-46 p-b-20">
                        <span class="txt2">
                            Already have an account?&nbsp; <a id="may" href="login.jsp" style="text-decoration: underline;"> login</a>
						</span>
                    </div>
                </form>

                <div class="login100-more" style="background-image: url('img/bg-01.jpg');">
                </div>
            </div>
        </div>
    </div>
</html>
