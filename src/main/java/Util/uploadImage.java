/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
/**
 *
 * @author 91747
 */
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)
public class uploadImage extends HttpServlet{
    // database connection settings
    static final String dbname="courier_db";
    static String dbpass="root";
    static String dbuser="root";
    static String dburl="jdbc:mysql://localhost:3306/"+dbname;
     
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String    name=request.getParameter("name");
         String   email=request.getParameter("mail");
        String    password=request.getParameter("Pass");
         String   userType=request.getParameter("userType");
         String   phone=request.getParameter("cno");
         String   username=request.getParameter("username");
         String   website=request.getParameter("website");
        String    address=request.getParameter("add");
         
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("myimg");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
            
              System.out.println("File in inputStream");
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dburl, dbuser, dbpass);
            System.out.println("Connection OK");
            // constructs SQL statement
            String sql = "INSERT INTO courier_db.user (Email,userType,username,Password,name,phone,website,address,image) values (?, ?, ?,?, ?, ?,?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, userType);
            statement.setString(3, username);
            statement.setString(4, password);
            statement.setString(5, name);
            statement.setString(6, phone);
            statement.setString(7, website);
            statement.setString(8, address);
            
             
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(9, inputStream);
                System.out.println("Image ADDED");
            }
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            
            System.out.println("DONE");
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
