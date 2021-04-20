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
public class Hospital {
    // params
    public int id;
    public String name;
    public String address;
    public String hotline;
    public String location_id;
    public String longitude;
    public String latitude;
    public int ranking;
    
    // constructors
    public Hospital() {
        
    }
    
    public Hospital(String name, String address, String hotline, String location_id, String longitude, String latitude, int ranking) {
        this.name = name;
        this.address = address;
        this.hotline = hotline;
        this.location_id = location_id;
        this.longitude = longitude;
        this.latitude = latitude;
        this.ranking = ranking;
    }
    
    // get hospital list
    public static ArrayList<Hospital> GetHospitalList() throws Exception {
        ArrayList<Hospital> list = new ArrayList();
        String query = "select * from hospitals";
        ResultSet rs = new SQLContext().ExcuteQuery(query);
        while (rs.next()) {
            Hospital temp = new Hospital();
            temp.id = Integer.parseInt(rs.getString("id"));
            temp.name = rs.getString("name");
            temp.address = rs.getString("address");
            temp.hotline = rs.getString("hotline");
            temp.location_id = rs.getString("location_id");
            temp.longitude = rs.getString("longitude");
            temp.latitude = rs.getString("latitude");
            temp.ranking = Integer.parseInt(rs.getString("ranking"));
            list.add(temp);
        }
        return list;
    }
    
    // get ranking list
    public static ArrayList<Integer> GetRankingList() throws Exception {
        ArrayList<Integer> list = new ArrayList();
        list.add(1);
        list.add(2);
        list.add(3);
        return list;
    }
    
    // create new hospital - Insert
    public void InsertHospital() throws Exception {
        String sql = String.format("INSERT INTO hospitals (name, address, hotline, image, location_id, longitude, latitude, ranking) VALUES('%s', '%s', '%s', '%s', '%s', '%s', '%s', %d)", this.name, this.address, this.hotline, "", this.location_id, this.longitude, this.latitude, this.ranking);
        new SQLContext().ExcuteUpdate(sql);
    }
    
    // update hospital
    public void UpdateHospital(int hospitalId) throws Exception {
        String sql = String.format("UPDATE hospitals SET name = '%s', address = '%s', hotline = '%s', image = '%s', location_id = '%s', longitude = '%s', latitude = '%s', ranking = %d WHERE id = %d", this.name, this.address, this.hotline, "", this.location_id, this.longitude, this.latitude, this.ranking, hospitalId);
        new SQLContext().ExcuteUpdate(sql);
    }

    // delete hospital
    public static void Delete(int hospitalId) throws Exception {
        String sql = String.format("DELETE FROM hospitals WHERE id = %d", hospitalId);
        new SQLContext().ExcuteUpdate(sql);
    }
}
