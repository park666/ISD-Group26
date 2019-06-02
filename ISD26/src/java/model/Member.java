/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
i * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author qingwenxiao
 */
public class Member implements Serializable {
    private String memberId;
    private String password;
    private String name;
    private String email;
    private String phone;
    private String address;
    private String type;
  
    
 public Member(){}
 
 public Member(String memberId, String password, String name, String email, String phone, String address, String type){
     this.memberId = memberId;
     this.password = password; 
     this.name = name;
     this.email = email;
     this.phone = phone;
     this.address = address;
     this.type = type;
  }
 
 public void setMemberId(String id){
     this.memberId=id;
 }
 
 public void setPassword(String password){
     this.password = password;
 }
 
 public void setName(String name){
     this.name = name;
 }
 
 public void setEmail(String email){
     this.email = email;
 }
 
 public void setPhone(String phone){
     this.phone = phone;
 }
 
 public void setAddress(String address){
     this.address = address;
 }
 
  public void setType(String type){
     this.type = type;
 }
 
 public String getId(){
     return memberId;
 }
 
 public String getPassword(){
     return password;
 }
 
 public String getName(){
     return name;
 }
 
 public String getEmail(){
     return email;
 }
 
 public String getPhone(){
     return phone;
 }
 
  public String getAddress(){
     return address;
 }
 
 public String getType(){
     return type;
 }
 
}
