package com.bean;

public class Statisticinfo {

    private String year;
    private String month;
    private int wno;
    private String wtype;
    private String wdepartno;
    private String total_wtime;
    public String getYear() {
        return year;
    }
    public void setYear(String year) {
        this.year = year;
    }
    public String getMonth() {
        return month;
    }
    public void setMonth(String month) {
        this.month = month;
    }
    public int getWno() {
        return wno;
    }
    public void setWno(int wno) {
        this.wno = wno;
    }
    public String getWtype() {
        return wtype;
    }
    public void setWtype(String wtype) {
        this.wtype = wtype;
    }
    public String getWdepartno() {
        return wdepartno;
    }
    public void setWdepartno(String wdepartno) {
        this.wdepartno = wdepartno;
    }
    public String getTotal_wtime() {
        return total_wtime;
    }
    public void setTotal_wtime(String total_wtime) {
        this.total_wtime = total_wtime;
    }

    // Added
    public int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
