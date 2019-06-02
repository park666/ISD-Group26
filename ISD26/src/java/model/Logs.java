/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author qingwenxiao
 */
public class Logs implements Serializable {
    private String logID;
    private String memberID;
    private String loginDate;
    private String logoutDate;
   
    
    public Logs(){}
    
    public Logs(String logID, String memberID, String loginDate, String logoutDate){
    this.logID = logID;
    this.memberID = memberID;
    this.loginDate = loginDate;
    this.logoutDate = logoutDate;
    }

    public String getLogID() {
        return logID;
    }

    public void setLogID(String logID) {
        this.logID = logID;
    }

    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public String getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(String loginDate) {
        this.loginDate = loginDate;
    }

    public String getLogoutDate() {
        return logoutDate;
    }

    public void setLogoutDate(String logoutDate) {
        this.logoutDate = logoutDate;
    }
    
    
    
}
