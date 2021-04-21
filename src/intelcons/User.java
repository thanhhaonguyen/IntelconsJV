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
public class User {

    // User info params
    public int id;
    public String fullname;
    public String phone;
    public String address;
    public int gender;
    public String identify;
    public String age;
    public String height;
    public String weight;
    public String blood_type;

    // Constructors
    public User() {

    }

    public User(String fullname, String phone, String address, int gender, String identify, String age, String height, String weight, String blood_type) {
        this.fullname = fullname;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.identify = identify;
        this.age = age;
        this.height = height;
        this.weight = weight;
        this.blood_type = blood_type;
    }

    // get user list
    public static ArrayList<User> GetUserList() throws Exception {
        ArrayList<User> list = new ArrayList();
        String query = "select * from users";
        ResultSet rs = new SQLContext().ExcuteQuery(query);
        while (rs.next()) {
            User temp = new User();
            temp.id = Integer.parseInt(rs.getString("id"));
            temp.fullname = rs.getString("fullname");
            temp.phone = rs.getString("phone");
            temp.address = rs.getString("address");
            temp.gender = Integer.parseInt(rs.getString("gender"));
            temp.identify = rs.getString("identify");
            temp.age = rs.getString("age");
            temp.height = rs.getString("height");
            temp.weight = rs.getString("weight");
            temp.blood_type = rs.getString("blood_type");
            list.add(temp);
        }
        return list;
    }

    // get gender list
    public static ArrayList<String> GetGenderList() throws Exception {
        ArrayList<String> list = new ArrayList();
        list.add("Nam");
        list.add("Nữ");
        return list;
    }
    
    // create new user - Insert
    public void InsertUser() throws Exception {
        String sql = String.format("INSERT INTO users (fullname, username, password, phone, address, gender, identify, age, height, weight, blood_type) VALUES('%s', '%s', '%s', '%s', '%s', %d, '%s', '%s', '%s', '%s', '%s')", this.fullname, "", "", this.phone, this.address, this.gender, this.identify, this.age, this.height, this.weight, this.blood_type);
        new SQLContext().ExcuteUpdate(sql);
    }
    
    // update hospital
    public void UpdateUser(int userId) throws Exception {
        String sql = String.format("UPDATE users SET fullname = '%s', phone = '%s', address = '%s', gender = %d, identify = '%s', age = '%s', height = '%s', weight = '%s', blood_type = '%s' WHERE id = %d", this.fullname, this.phone, this.address, this.gender, this.identify, this.age, this.height, this.weight, this.blood_type, userId);
        new SQLContext().ExcuteUpdate(sql);
    }

    // delete user
    public static void DeleteUser(int userId) throws Exception {
        String sql = String.format("DELETE FROM users WHERE id = %d", userId);
        new SQLContext().ExcuteUpdate(sql);
    }
}
