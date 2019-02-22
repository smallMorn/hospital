package com.baizhi.entity;

import java.util.Date;

public class File {
    private Integer id;
    private String file_name;
    private String file_path;
    private String save_name;
    private Date up_time;
    private Double file_size;

    @Override
    public String toString() {
        return "File{" +
                "id=" + id +
                ", file_name='" + file_name + '\'' +
                ", file_path='" + file_path + '\'' +
                ", save_name='" + save_name + '\'' +
                ", up_time=" + up_time +
                ", file_size=" + file_size +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getFile_path() {
        return file_path;
    }

    public void setFile_path(String file_path) {
        this.file_path = file_path;
    }

    public String getSave_name() {
        return save_name;
    }

    public void setSave_name(String save_name) {
        this.save_name = save_name;
    }

    public Date getUp_time() {
        return up_time;
    }

    public void setUp_time(Date up_time) {
        this.up_time = up_time;
    }

    public Double getFile_size() {
        return file_size;
    }

    public void setFile_size(Double file_size) {
        this.file_size = file_size;
    }

    public File() {

    }

    public File(Integer id, String file_name, String file_path, String save_name, Date up_time, Double file_size) {

        this.id = id;
        this.file_name = file_name;
        this.file_path = file_path;
        this.save_name = save_name;
        this.up_time = up_time;
        this.file_size = file_size;
    }
}
