/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
package model;

import java.io.Serializable;

/**
 *
 * @author qingwenxiao
 */
package model;

public class Orderr{
    private String orderId;
    private String memberid;
    private String orderStatus;
    private String orderDate;
   
  
    
 public Orderr(){}

    public Orderr(String orderId, String memberid, String orderStatusId, String timeStap) {
        this.orderId = orderId;
        this.memberid = memberid;
        this.orderStatus = orderStatusId;
        this.orderDate = timeStap;
        
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

 
}
