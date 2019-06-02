package model.dao;

import java.sql.Connection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author qingwenxiao
 */
public abstract class DB {
    protected String URL = "jdbc:derby://localhost:1527/moviestoredb" ;//replace empty-string with jdbc:derby local host url
    protected String db = "moviestoredb";//name of the database
    protected String dbuser = "group26";//db root user
    protected String dbpass = "isd"; //db root password
    protected String driver = "org.apache.derby.jdbc.ClientDriver"; //jdbc client driver - built in with NetBeans
    protected Connection conn;
}
