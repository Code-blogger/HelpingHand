 

import java.sql.*;
public class SqlUtil {
    static final String dbname="courier_db";
    static String dbpass="root";
    static String dbuser="root";
    static String dburl="jdbc:mysql://localhost:3306/"+dbname;
    
    static Connection conn;
    static Statement stmt;
    
   public static void connectDb() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
     conn=DriverManager.getConnection(dburl, dbuser,dbpass);
    stmt=conn.createStatement();
    }
    
    public static void create(String query)throws SQLException,ClassNotFoundException
    {
        if(stmt==null)
        {
            connectDb();
        }
        stmt.execute(query);
    }
    
public static  int insert(String query) throws SQLException{
        int result=-1;
        if(query!=null){
           result= stmt.executeUpdate(query);
        }
        return result;
    }
  
 public static int delete(String query) throws SQLException{
      int result=-1;
      if(query!=null){
          result=stmt.executeUpdate(query);
      }
      return result;
  }
 public static int update(String query) throws SQLException{
      int result=-1;
      if(query!=null){
          result=stmt.executeUpdate(query);
      }
      return result;
  }
 
 public static ResultSet read(String query) throws SQLException{
     ResultSet rs=null;
     if(query!=null){
         rs=stmt.executeQuery(query);
     }
     return rs;
 }
 public static void close() throws SQLException{
     if(conn!=null){
         conn.close(); 
     }
     if(stmt!=null){
         stmt.close();
     }
    
 }
    
}
