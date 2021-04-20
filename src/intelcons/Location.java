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
public class Location {
    // params
    public String id;
    public String name;
    
    // constructors
    public Location() {
        
    }
    
    public Location(String id, String name) {
        this.id = id;
        this.name = name;
    }
    
    // get location list
    public static ArrayList<Location> GetLocationList() throws Exception {
        ArrayList<Location> list = new ArrayList();
        String query = "select * from locations";
        ResultSet rs = new SQLContext().ExcuteQuery(query);
        while (rs.next()) {
            Location temp = new Location();
            temp.id = rs.getString("id");
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
