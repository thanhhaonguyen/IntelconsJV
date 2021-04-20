/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package intelcons;

import java.sql.ResultSet;

/**
 *
 * @author leonguyen
 */
public class Admin {

    // params
    public String username;
    public String password;

    // constructors
    public Admin() {

    }

    public Admin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // Check Login: if admin exist in DB
    public boolean CheckLogin(String uid, String pwd) throws Exception {
        String sql = String.format("SELECT\n"
                + "	* \n"
                + "FROM\n"
                + "	admin \n"
                + "WHERE\n"
                + "	username = '%s' \n"
                + "	AND \n"
                + "	password = '%s'", uid, pwd);
        ResultSet rs = new SQLContext().ExcuteQuery(sql);
        // if uid and pwd is valid
        if (rs.next()) {
            return true;
        }
        return false;
    }
}
