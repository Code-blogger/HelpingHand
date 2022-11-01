<%--
  Created by IntelliJ IDEA.
  : 91747
  Date: 28-04-2022
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="Util.SqlUtil"%>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Message</title>

    <link rel="shortcut icon" type="image/png" href="img/icons/pawprint.png" />
    <link rel="stylesheet" href="css/Common.css" />
    <link rel="stylesheet" href="css/message.css" />


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
                        <div class="selected">
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
<div class="main-container">
    <div id="chat" class="chat">
        <div id="messages" class="messages"></div>
        <input id="input" type="text" placeholder="Say something..." autocomplete="off" autofocus="true" />
    </div>
    <img src="img/icons/pawprint.png" alt="Robot cartoon" width="200">
</div>
</body>
<script type="text/javascript" src="js/message.js"></script>
<script type="text/javascript" src="js/constants.js"></script>
<script type="text/javascript" src="js/speech.js"></script>

</html>
