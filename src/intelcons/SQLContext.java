/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package intelcons;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author leonguyen
 */
public class SQLContext {
    
    // Connect to DB MySQL through mysql connector
    public Connection GetConnection() throws Exception
    {
        String userName ="root";  
        String password = "";
        String dbURL = "jdbc:mysql://localhost:3308/intelcons?useSSL=false";
        Connection conn = DriverManager.getConnection(dbURL, userName, password);
        return conn;
    }
    
    // No result return after execute query
    public ResultSet ExcuteQuery(String query) throws Exception 
    {  
        Statement statement = GetConnection().createStatement();
        return statement.executeQuery(query);
    }
       
    // Result return after execute query
    public void ExcuteUpdate(String sql) throws Exception
    {
        Statement statement = GetConnection().createStatement();
        statement.executeUpdate(sql);
    }
}
