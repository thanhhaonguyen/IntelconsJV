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
public class Doctor {

    // params
    public int id;
    public String fullname;
    public String phone;
    public String address;
    public int department_id;
    public String department_name;
    public int hospital_id;
    public String hospital_name;
    public String location_id;
    public String longitude;
    public String latitude;

    // constructors
    public Doctor() {

    }

    public Doctor(String fullname, String phone, String address, int department_id, int hospital_id, String location_id, String longitude, String latitude) {
        this.fullname = fullname;
        this.phone = phone;
        this.address = address;
        this.department_id = department_id;
        this.hospital_id = hospital_id;
        this.location_id = location_id;
        this.longitude = longitude;
        this.latitude = latitude;
    }

    // get doctor list
    public static ArrayList<Doctor> GetDoctorList() throws Exception {
        ArrayList<Doctor> list = new ArrayList();
        String query = "SELECT\n"
                + "	o.id,\n"
                + "	o.fullname,\n"
                + "	o.phone,\n"
                + "	o.address,\n"
                + "	o.department_id,\n"
                + "	d.NAME AS department_name,\n"
                + "	o.hospital_id,\n"
                + "	h.NAME hospital_name,\n"
                + "	o.location_id,\n"
                + "	o.longitude,\n"
                + "	o.latitude \n"
                + "FROM\n"
                + "	doctors o,\n"
                + "	hospitals h,\n"
                + "	departments d \n"
                + "WHERE\n"
                + "	o.department_id = d.id \n"
                + "	AND o.hospital_id = h.id \n"
                + "ORDER BY\n"
                + "	o.id";
        ResultSet rs = new SQLContext().ExcuteQuery(query);
        while (rs.next()) {
            Doctor temp = new Doctor();
            temp.id = Integer.parseInt(rs.getString("id"));
            temp.fullname = rs.getString("fullname");
            temp.phone = rs.getString("phone");
            temp.address = rs.getString("address");
            temp.department_id = Integer.parseInt(rs.getString("department_id"));
            temp.department_name = rs.getString("department_name");
            temp.hospital_id = Integer.parseInt(rs.getString("hospital_id"));
            temp.hospital_name = rs.getString("hospital_name");
            temp.location_id = rs.getString("location_id");
            temp.longitude = rs.getString("longitude");
            temp.latitude = rs.getString("latitude");
            list.add(temp);
        }
        return list;
    }

    // create new doctor - Insert
    public void InsertDoctor() throws Exception {
        String sql = String.format("INSERT INTO doctors (fullname, phone, address, image, department_id, hospital_id, location_id, longitude, latitude) VALUES('%s', '%s', '%s', '%s', %d, %d, '%s', '%s', '%s')", this.fullname, this.phone, this.address, "", this.department_id, this.hospital_id, this.location_id, this.longitude, this.latitude);
        new SQLContext().ExcuteUpdate(sql);
    }
    
    // update doctor
    public void UpdateDoctor(int doctorId) throws Exception {
        String sql = String.format("UPDATE doctors SET fullname = '%s', phone = '%s', address = '%s', image = '%s', department_id = %d, hospital_id = %d, location_id = '%s', longitude = '%s', latitude = '%s' WHERE id = %d", this.fullname, this.phone, this.address, "", this.department_id, this.hospital_id, this.location_id, this.longitude, this.latitude, doctorId);
        new SQLContext().ExcuteUpdate(sql);
    }
    
    // delete doctor
    public static void DeleteDoctor(int doctorId) throws Exception {
        String sql = String.format("DELETE FROM doctors WHERE id = %d", doctorId);
        new SQLContext().ExcuteUpdate(sql);
    }
}
