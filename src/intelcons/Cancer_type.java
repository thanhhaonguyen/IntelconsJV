/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package intelcons;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author leonguyen
 */
public class Cancer_type {
    // params
    public int id;
    public String name;
    
    // constructors
    public Cancer_type() {
        
    }
    
    public Cancer_type(String name) {
        this.name = name;
    }
    
    // get cancer_type list
    public static ArrayList<Cancer_type> GetCancerTypeList() throws Exception {
        ArrayList<Cancer_type> list = new ArrayList();
        String query = "select * from cancer_type";
        ResultSet rs = new SQLContext().ExcuteQuery(query);
        while (rs.next()) {
            Cancer_type temp = new Cancer_type();
            temp.id = Integer.parseInt(rs.getString("id"));
            temp.name = rs.getString("name");
            list.add(temp);
        }
        return list;
    }
    
    @Override
    public String toString() {
        return this.id + "-" + this.name;
    }
}
