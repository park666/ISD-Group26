/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.io.Serializable;

/**
 *
 * @author Qianchen Li
 */
public class Movie implements Serializable{
    private String ID;
    private String title;
    private String cate;
    private String desc;
    private String dur;
    private String director;
    private String pubDt;
    private String price;

    public Movie(String ID, String title, String cate, String desc, String dur, String director, String pubDt, String price) {
        this.ID = ID;
        this.title = title;
        this.cate = cate;
        this.desc = desc;
        this.dur = dur;
        this.director = director;
        this.pubDt = pubDt;
        this.price = price;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getDur() {
        return dur;
    }

    public void setDur(String dur) {
        this.dur = dur;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getPubDt() {
        return pubDt;
    }

    public void setPubDt(String pubDt) {
        this.pubDt = pubDt;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    






}
