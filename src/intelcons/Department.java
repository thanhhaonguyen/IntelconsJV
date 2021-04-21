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
public class Department {

    // params
    public int id;
    public String name;

    // constuctors
    public Department() {

    }

    public Department(String name) {
        this.name = name;
    }

    // get department list
    public static ArrayList<Department> GetDepartmentList() throws Exception {
        ArrayList<Department> list = new ArrayList();
        String query = "select * from departments";
        ResultSet rs = new SQLContext().ExcuteQuery(query);
        while (rs.next()) {
            Department temp = new Department();
            temp.id = Integer.parseInt(rs.getString("id"));
            temp.name = rs.getString("name");
            list.add(temp);
        }
        return list;
    }

    // create new department - Insert
    public void InsertDepartment() throws Exception {
        String sql = String.format("INSERT INTO departments (name) VALUES('%s')", this.name);
        new SQLContext().ExcuteUpdate(sql);
    }

    // update department
    public void UpdateDepartment(int departmentId) throws Exception {
        String sql = String.format("UPDATE departments SET name = '%s' WHERE id = %d", this.name, departmentId);
        new SQLContext().ExcuteUpdate(sql);
    }
    
    // delete hospital
    public static void DeleteDepartment(int departmentId) throws Exception {
        String sql = String.format("DELETE FROM departments WHERE id = %d", departmentId);
        new SQLContext().ExcuteUpdate(sql);
    }
    
    @Override
    public String toString() {
        return this.id + "-" + this.name;
    }
}
