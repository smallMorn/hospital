package com.baizhi.entity;

public class Department {
    private Integer id;
    private String name;
    private String telephone;
    private String area;
    private int status;

    public Department(Integer id, String name, String telephone, String area, int status) {
        this.id = id;
        this.name = name;
        this.telephone = telephone;
        this.area = area;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Department{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", telephone='" + telephone + '\'' +
                ", area='" + area + '\'' +
                ", status=" + status +
                '}';
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Department() {

    }
}
