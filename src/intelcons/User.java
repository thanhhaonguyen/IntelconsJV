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
public class User {

    // User info params
    public String fullname;
    public String username;
    public char password;
    public String phone;
    public String address;
    public int gender;
    public long identify;
    public String age;
    public String gaurdian;
    public String gaurdian_phone;
    public String height;
    public String weight;
    public String blood_type;

    // Constructors
    public User() {

    }

    public User(String fullname, String username, char password, String phone, String address, int gender, long identify, String age, String gaurdian, String gaurdian_phone, String height, String weight, String blood_type) {
        this.fullname = fullname;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.identify = identify;
        this.age = age;
        this.gaurdian = gaurdian;
        this.gaurdian_phone = gaurdian_phone;
        this.height = height;
        this.weight = weight;
        this.blood_type = blood_type;
    }

}
