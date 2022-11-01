<%--
  Created by IntelliJ IDEA.
  User: 91747
  Date: 28-04-2022
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Linkedin</title>

    <link rel="shortcut icon" type="image/png" href="images/favicon.ico" />
    <link rel="stylesheet" href="css/Common.css" />

    <script src="js/home-script.js"></script>
    <script src="https://kit.fontawesome.com/3055f91a99.js"></script>
</head>

<body>
<!-- HEADER -->
<header id="main-header">
    <div>
        <div>
            <img id="header-logo" src="img/icons/pawprint.png" alt="LinkedIn" />
            <img id="header-picture-menu" src="img/image-2.jpg" alt="Profile picture" />
            <span id="header-picture-menu-bars">
                        <span class="fas fa-bars"></span>
                </span>

            <div>
                <input id="search" type="text" placeholder="       Search" onfocus="toggleSearchInput()" onblur="toggleSearchInput()" />
                <span id="search-icon" class="fas fa-search"></span>
                <span id="search-button" class="fas fa-search"></span>
            </div>
            <span class="fas fa-comments"></span>
        </div>
        <nav>
            <ul>
                <li>
                    <a href="home.jsp">
                        <div>
                            <span class="fas fa-home"></span>
                            <span class="nav-item-text">Home</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="network.jsp">
                        <div>
                            <span class="fas fa-user-friends"></span>
                            <span class="nav-item-text">My Network</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="message.jsp">
                        <div>
                            <span class="fas fa-envelope"></span>
                            <span class="nav-item-text">Messaging</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="notification.jsp">
                        <div>
                            <span class="fas fa-bell"></span>
                            <span class="nav-item-text">Notifications</span>
                        </div>
                    </a>

                </li>
                <li>
                    <a href="profile.jsp">

                        <div id="right-border">
                            <img src="img/org-1.jpg" alt="Profile picture" />

                            <span class="nav-item-text">
                                    Me<span class="fas fa-caret-down"> </span
                            ></span>
                        </div>
                    </a>
                </li>

            </ul>
        </nav>
    </div>
</header>
<!-- LOADING PAGE -->
<div id="loading-page">
    <div>
        <img src="img/f-logo.png" alt="" />
        <div id="dot-loader">
            <div class="lds-ellipsis">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
</div>
<!-- MAIN CONTAINER -->
<div class="container">
    <!-- ADS -->
    <section id="ads">
        <div>
            <a>
                <span id="ad-title"></span>
                <span id="ad-subtitle">
                        </span>
            </a>
            <span id="ad"></span>
        </div>
    </section>
<div id="left-aside-wrapper">
        <aside id="left-aside">
            <div id="profile-card">
                <div id="background"></div>
                <div id="profile-info">
                    <img src="img/DP.jpeg" alt="Profile picture" />
                    <%!String fname,uname,add,cno,web,em;%>
                    <%
               String unm =(String)session.getAttribute("email");
               if(unm==null)
                {%>
                <script>alert('Please login to continue');document.location.href='login.jsp';</script>
                <%}
else
{
               SqlUtil.connectDb();
               ResultSet rs= SqlUtil.read("select * from user where Email='"+unm+"'");
               if(rs.next())
               {
                    fname=rs.getString("name");
                    uname=rs.getString("username");
                    add=rs.getString("address");
                    cno=rs.getString("phone");
                    web=rs.getString("website");
                    em=rs.getString("email");
               }
}
%> 
<strong id="profile-name"><%=fname%></strong>
                    <small><%=uname%></small>
                </div>
                <div id="profile-links">
                            <span>
                                    <%=add%>
                                </span>
                    <a href="network.html">
                            <span>
                                    friends
                                </span>
                        <span class="profile-number">
                                    3
                                </span>
                    </a>
                </div>
            </div>
            <div id="profile-groups">
                <section>
                    <header onmouseover="showProfileGroupIcon(this)" onmouseout="showProfileGroupIcon(this)">
                        <span>Contact   </span>
                        <span class="fas fa-angle-up" onclick="toggleProfileGroupList(this)"></span>
                    </header>
                    <ul class="group-list">
                        <li>
                            <span class="fas fa-users"></span>
                            <span><%=cno%></span>
                        </li>
                        <li>
                            <span class="fas fa-hashtag"></span>
                            <span><%=em%></span>
                        </li>
                        <li>
                            <span class="fas fa-hashtag"></span>
                            <span><%=web%></span>
                        </li>
                    </ul>
                </section>
                <a href="profile.jsp">More Deltails</a>
            </div>
        </aside>
    </div>
</div>
</body>
</html>
