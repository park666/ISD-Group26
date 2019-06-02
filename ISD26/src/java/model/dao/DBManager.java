/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;



import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Statement;
import java.util.List;
import model.Member;
import javax.naming.spi.DirStateFactory.Result;
import model.Orderr;
import model.Logs;
import model.Staff;
/**
 *
 * @author qingwenxiao
 */
public class DBManager {
    
    private Statement st;  
 
        
  public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
  
   public Member findMember(String ID) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * from GROUP26.MEMBER where MEMBERID = '" + ID + "'");
//        Customer c = new Customer(rs.getString("ID"), rs.getString("Name"), rs.getString("Email"), rs.getString("Password"),
//                    rs.getString("Phone"), rs.getString("Address"), rs.getString("Status"));

        boolean hasCust = rs.next();
        Member m = null;

        if (hasCust) {

            String mID = rs.getString("MemberID");
            String mPass = rs.getString("Password");
            String mName = rs.getString("Name");
            String mEmail = rs.getString("Email");
            String mPhone = rs.getString("Phone");
            String mAddress = rs.getString("Address");
            String mType = rs.getString("Type");

            m = new Member(mID, mPass, mName, mEmail, mPhone, mAddress, mType);
        }

        rs.close();
        

        return m;
    }
    
  
        
       

    //Check if a student exist in the database
    public Member checkMember(String ID) throws SQLException {
        
    
        String fetch ="select * from GROUP26.MEMBER where MEMBERID = '"+ ID + "'";
        ResultSet rs =st.executeQuery(fetch);
        while(rs.next()){
            String userID = rs.getString(1);
  
            
        
        if(userID.equals(ID)){
            String userPass = rs.getString(2);
            String userName = rs.getString(3);
            String userEmail = rs.getString(4);
            String userPhone = rs.getString(5);
            String userAddress = rs.getString(6);
            String userType = rs.getString(7);
            
            return new Member(userID,userPass,userName,userEmail,userPhone, userAddress, userType);
        }
            }
            
        return null;
      
       
    }

    public ArrayList<Member> getAllMembers() throws SQLException {
        ArrayList<Member> memb = new ArrayList<Member>();
        ResultSet rs = st.executeQuery("SELECT * from GROUP26.MEMBER");
        while (rs.next()) {

            Member member = new Member(rs.getString("MEMBERID"), rs.getString("Password"), rs.getString("Name"), rs.getString("Email"),
                    rs.getString("Phone"), rs.getString("Address"), rs.getString("Type"));

            memb.add(member);

        }
        return memb;

    }
    
    //Add a student-data into the database
    public void addMember(String ID, String password, String name, String email, String phone, String address, String type) throws SQLException {        
         st.executeUpdate("INSERT INTO GROUP26.MEMBER VALUES ('" +ID+ "','"+password +"','" +name+"','"+email +"','"+phone+"','"+address+"', '"+type+"')");
            //code for add-operation
    }   //
   
    //update a student details in the database
    public void updateMember(String ID, String password, String name, String email, String phone, String address, String type) throws SQLException {
       String s = "UPDATE GROUP26.MEMBER SET Password = '"+ password +"',NAME='"+ name +"',Email ='"+ email+"' Where MEMBERID = '"+ID+"'";
         st.executeUpdate(s);
    }
    
    //delete a student from the database
    public void deleteMember(String ID) throws SQLException{
        st.executeUpdate("Delete from GROUP26.MEMBER where MEMBERID = '" + ID + "'");        
    }
    
    
    public Staff checkStaff(String ID,String password) throws SQLException {
        
    ResultSet rs = st.executeQuery ("SELECT * from GROUP26.Staff where STAFFID = '"+ID+"'");
        boolean hasStaff = rs.next();
         Staff s = null;
                 
         if(hasStaff){
         
             String sID = rs.getString(1);
             String sName = rs.getString(2); 
             String sEmail = rs.getString(3);
             String sPass = rs.getString(4);
             String cRole =rs.getString(5);
             
             s = new Staff(sID, sPass,sName,sEmail,cRole);
         }
        
         rs.close();
        // st.close();
         
         
        return s;
     
    }
    
    public void addLogin(String ID, String loginDate, String logoutDate ,String memberId)throws SQLException{
        st.executeUpdate("INSERT INTO GROUP26.LOGS VALUES ('" +ID+ "','"+memberId+"','"+loginDate+"','"+logoutDate+"')");
    }
    
    public void addLogout(String logID, String logoutDate) throws SQLException{
        String addlog = "UPDATE GROUP26.LOGS SET LogoutDate = '"+ logoutDate +"' Where LogID = '"+logID+"'";
        st.executeUpdate(addlog);
         
    }
    
    public ArrayList<Logs> getAllLogs() throws SQLException {
        ArrayList<Logs> logs = new ArrayList<Logs>();
        ResultSet rs = st.executeQuery("SELECT * from GROUP26.LOGS");
        while (rs.next()) {

            Logs log = new Logs(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                  

            logs.add(log);

        }
        return logs;

    }
    
    public void addMovie (String ID, String title, String cate, String desc, String dur, String director, String pubDt, String price) throws SQLException {        
        //code for add-operation
//        st.executeUpdate("INSERT INTO MOVIES VALUES ('"+ID+"', '"+title+"' , '"+cate+"', '"+desc+"', '"+dur+"', '"+director+"','"+pubDt+"','"+price+"')");
        String createdQuery="insert into Group26.MOVIE" + " values ('" + ID + "', '" + title + "', '" + cate + "', '" + desc + "', '" + dur + "', '" + director + "', '"+ pubDt+"', '"+price+"')";
        boolean isCreated= st.executeUpdate(createdQuery) >0;
        if (isCreated) 
        {System.out.println("successful!");}
        else
        {System.out.println("failed!");}
        
      
    }

    //update a student details in the database
    public void updateMovie(String ID, String title, String cate, String desc, String dur, String director, String pubDt, String price) throws SQLException {
        //code for update-operation
        String updatedQuery="update Group26.MOVIE" + " values ('" + ID + "', '" + title + "', '" + cate + "', '" + desc + "', '" + dur + "', '" + director + "', '"+ pubDt+"', '"+price+"')";
        boolean isCreated= st.executeUpdate(updatedQuery) >0;
        if (isCreated) 
        {System.out.println("successful!");}
        else
        {System.out.println("failed!");}
    }
    
    //delete a student from the database
    public void deleteMovie(String title) throws SQLException{
        //code for delete-operation
        String deletedQuery="delete from Group26.MOVIE where TITLE = '"+title+"'";
        boolean isDeleted=st.executeUpdate(deletedQuery)>0;
       
    }
    
      public List<Orderr> getOrders( String ID) throws SQLException {
        List<Orderr> orderrList=new ArrayList();
        //  where MEMBERID = '" + ID + "'"
        String fetch ="select * from GROUP26.ORDERS";
        ResultSet rs =st.executeQuery(fetch);
        while(rs.next()){
            Orderr orderr=new Orderr(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
            orderrList.add(orderr);
            }
            
        return orderrList;
   
    }
    //delete a student from the database
    public void deleteOrder(int ID) throws SQLException{
        String s = "delete   from GROUP26.orders where ORDERID="+ ID;
         st.executeUpdate(s);
    }

    
    
}


