package com.helping.controller;
import com.helping.dao.UserDao;
import com.helping.model.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UserServlet", urlPatterns = "/user")
public class UserServlet extends HttpServlet{
    private UserDao userDao;

    public void init() {
        userDao= new UserDao();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String userType = request.getParameter("userType");
        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String website = request.getParameter("website");
        String address = request.getParameter("address");


        User user = new User();
        user.setEmail(email);
        user.setUserType(userType);
        user.setUsername(username);
        user.setPassword(password);
        user.setName(name);
        user.setPhone(Integer.parseInt(phone));
        user.setAddress(website);
        user.setAddress(address);

        System.out.println(user);
        try {
            userDao.registerUser(user);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("login.jsp");
    }

}
