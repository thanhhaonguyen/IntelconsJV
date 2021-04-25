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
public class News {

    // params
    public int id;
    public String title;
    public int cancer_type_id;
    public String cancer_type_name;
    public String author;
    public String post_date;
    public String content;

    // constructors
    public News() {

    }

    public News(String title, int cancer_type, String author, String post_date, String content) {
        this.title = title;
        this.cancer_type_id = cancer_type;
        this.author = author;
        this.post_date = post_date;
        this.content = content;
    }

    // get news list
    public static ArrayList<News> GetNewsList() throws Exception {
        ArrayList<News> list = new ArrayList();
        String query = "SELECT\n"
                + "	n.id,\n"
                + "	n.title,\n"
                + "	n.cancer_type AS cancer_type_id,\n"
                + "	c.NAME AS cancer_type_name,\n"
                + "	n.author,\n"
                + "	n.post_date,\n"
                + "	n.content \n"
                + "FROM\n"
                + "	news n,\n"
                + "	cancer_type c \n"
                + "WHERE\n"
                + "	n.cancer_type = c.id";
        ResultSet rs = new SQLContext().ExcuteQuery(query);
        while (rs.next()) {
            News temp = new News();
            temp.id = Integer.parseInt(rs.getString("id"));
            temp.title = rs.getString("title");
            temp.cancer_type_id = Integer.parseInt(rs.getString("cancer_type_id"));
            temp.cancer_type_name = rs.getString("cancer_type_name");
            temp.author = rs.getString("author");
            temp.post_date = rs.getString("post_date");
            temp.content = rs.getString("content");
            list.add(temp);
        }
        return list;
    }
    
     // create new news - Insert
    public void InsertNews() throws Exception {
        String sql = String.format("INSERT INTO news (title, cancer_type, content, author, image, post_date) VALUES('%s', %d, '%s', '%s', '%s', '%s')", this.title, this.cancer_type_id, this.content, this.author, "", this.post_date);
        new SQLContext().ExcuteUpdate(sql);
    }
    
    // update news
    public void UpdateNews(int newsId) throws Exception {
        String sql = String.format("UPDATE news SET title = '%s', cancer_type = %d, content = '%s', author = '%s', image = '%s', post_date = '%s' WHERE id = %d", this.title, this.cancer_type_id, this.content, this.author, "", this.post_date, newsId);
        new SQLContext().ExcuteUpdate(sql);
    }
    
    // delete news
    public static void DeleteNews(int newsId) throws Exception {
        String sql = String.format("DELETE FROM news WHERE id = %d", newsId);
        new SQLContext().ExcuteUpdate(sql);
    }
}
