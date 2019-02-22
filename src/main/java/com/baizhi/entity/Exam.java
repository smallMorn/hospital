package com.baizhi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class Exam {
    private Integer id;
    private int exam_status;
    private String exam_advice;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date exam_start_date;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date exam_end_date;
    private Integer d_id;
    private Drug drug;

    @Override
    public String toString() {
        return "Exam{" +
                "id=" + id +
                ", exam_status=" + exam_status +
                ", exam_advice='" + exam_advice + '\'' +
                ", exam_start_date=" + exam_start_date +
                ", exam_end_date=" + exam_end_date +
                ", d_id=" + d_id +
                ", drug=" + drug +
                '}';
    }

    public Drug getDrug() {
        return drug;
    }

    public void setDrug(Drug drug) {
        this.drug = drug;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getExam_status() {
        return exam_status;
    }

    public void setExam_status(int exam_status) {
        this.exam_status = exam_status;
    }

    public String getExam_advice() {
        return exam_advice;
    }

    public void setExam_advice(String exam_advice) {
        this.exam_advice = exam_advice;
    }

    public Date getExam_start_date() {
        return exam_start_date;
    }

    public void setExam_start_date(Date exam_start_date) {
        this.exam_start_date = exam_start_date;
    }

    public Date getExam_end_date() {
        return exam_end_date;
    }

    public void setExam_end_date(Date exam_end_date) {
        this.exam_end_date = exam_end_date;
    }

    public Integer getD_id() {
        return d_id;
    }

    public void setD_id(Integer d_id) {
        this.d_id = d_id;
    }

    public Exam() {

    }

    public Exam(Integer id, int exam_status, String exam_advice, Date exam_start_date, Date exam_end_date, Integer d_id, Drug drug) {
        this.id = id;
        this.exam_status = exam_status;
        this.exam_advice = exam_advice;
        this.exam_start_date = exam_start_date;
        this.exam_end_date = exam_end_date;
        this.d_id = d_id;
        this.drug = drug;
    }
}
