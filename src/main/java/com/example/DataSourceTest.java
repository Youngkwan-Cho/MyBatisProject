package com.example.member;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;


public class DataSourceTest {

    @Test
    public void testConnection() {
        ApplicationContext ctx= new FileSystemXmlApplicationContext("file:src/main/webapp/WEB_INF/applicationContext.xml");
        DataSource ds = (DataSource) ctx.getBean("ds");

        try {
            Connection con = ds.getConnection();
            System.out.println("DB연결 성공!!!");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("DB연결 실패!!!");
        }
    }
}
