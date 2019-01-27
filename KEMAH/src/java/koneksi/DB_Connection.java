/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import com.sun.istack.internal.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
/**
 *
 * @author user
 */
public class DB_Connection {
    private Connection conn=null;
    
    public DB_Connection(){
        String URL = "jdbc:mysql://localhost/kemah";
        String USER = "root";
        String PASS = "";
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            this.conn = DriverManager.getConnection(URL, USER, PASS);
        }catch(Exception ex){
            
        }
    }
    public Connection getConn(){
        return this.conn;
    }
    public void closeConn(){
       if(this.conn!=null){
           
               try {
                   this.conn.close();
               } catch (SQLException ex) {
                   java.util.logging.Logger.getLogger(DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
               }
           }
        
    }
}

