<%--
  Created by IntelliJ IDEA.
  : 91747
  Date: 28-04-2022
  Time: 18:51
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
    <title>Home</title>

    <link rel="shortcut icon" type="image/png" href="img/icons/pawprint.png" />
    <link rel="stylesheet" href="css/Common.css" />
    <link rel="stylesheet" href="css/home-style.css" />
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
                        <div class="selected">
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
                            <img src="img/DP.jpeg" alt="Profile picture" />

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
        <img src="img/f-logo.png" alt="loading image" />
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
    <!-- LEFT ASIDE -->
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
    <!-- MAIN -->
    <div id="main-wrapper">
        <main id="main-section">
            <div id="share-box">
                <div id="button-box">
                    <a href="newpost.jsp">
                        <button id="btn-post">
                            <span class="fas fa-edit"></span>
                            <span id="btn-text">Start a post</span>
                        </button>
                    </a>
                    <button id="btn-picture">
                        <span class="fas fa-camera"></span>
                    </button>
                    <button id="btn-video">
                        <span class="fas fa-video"></span>
                    </button>
                    <button id="btn-document">
                        <span class="fas fa-file"></span>
                    </button>
                </div>
                <div id="link-box">
                    <a href="newpost.jsp">New Post</a>
                    <span>Asap!</span>
                </div>
            </div>
            <div id="feed-sort">
                <hr />

                <span>Sort by:</span>
                <a href="home.jsp"><strong>Top</strong>
                    <span class="fa-solid fa-sort-up"></span></a>

                </button>
            </div>
            <article>
                <div id="post-author">
                    <a href="profile.jsp">
                        <div>
                            <img src="img/org-2.jpg" alt="" />
                            <div>
                                <div>
                                    <strong id="post-author-name">Matthew James</strong
                                    >

                                </div>
                                <span
                                >location
                                            </span
                                            >

                            </div>
                        </div>
                    </a>
                    <div>
                        <span class="fas fa-circle"></span>
                        <span class="fas fa-circle"></span>
                        <span class="fas fa-circle"></span>
                    </div>
                </div>
                <div id="post-data">
                    <p>
                        Yesterday I had a conversation with
                        Maurício Rossi, Front-End
                        Developer, and found out that he cloned LinkedIn
                        layout using HTML/CSS. I think you should check
                        this out ;)
                    </p>

                    <img src="img/org-4.jpg" alt="" />
                </div>
                <div id="post-interactions">

                    <div id="interactions-btns">
                        <button>
                                    <span
                                            class="far fa-thumbs-up fa-flip-horizontal"
                                    ></span>
                            <span>Like</span>
                        </button>
                        <input type="submit" name="submit" class="submit action-button" value="Request" />

                    </div>
                </div>
            </article>
            <article>
                <div id="post-author">
                    <a href="profile.jsp">
                        <div>
                            <img src="img/org-2.jpg" alt="" />
                            <div>
                                <div>
                                    <strong id="post-author-name">Mahima Chouhan</strong
                                    >

                                </div>
                                <span
                                >location
                                                </span
                                                >

                            </div>
                        </div>
                    </a>
                    <div>
                        <span class="fas fa-circle"></span>
                        <span class="fas fa-circle"></span>
                        <span class="fas fa-circle"></span>
                    </div>
                </div>
                <div id="post-data">
                    <p>
                        Yesterday I had a conversation with
                        Maurício Rossi, Front-End
                        Developer, and found out that he cloned LinkedIn
                        layout using HTML/CSS. I think you should check
                        this out ;)
                    </p>

                    <img src="img/org-2.jpg" alt="" />
                </div>
                <div id="post-interactions">

                    <div id="interactions-btns">
                        <button>
                                        <span
                                                class="far fa-thumbs-up fa-flip-horizontal"
                                        ></span>
                            <span>Like</span>
                        </button>
                        <input type="submit" name="submit" class="submit action-button" value="Request" />

                    </div>
                </div>
            </article>
            <input type="submit" name="submit" id="more" class="submit action-button" value="More" />

        </main>
    </div>
    <!-- RIGHT ASIDE -->

</div>
</body>

</html>
