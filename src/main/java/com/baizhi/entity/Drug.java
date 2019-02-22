package com.baizhi.entity;

import java.util.Date;

public class Drug {
    private Integer id;
    private String name;
    private String spec;
    private String unit;
    private String product_company;
    private Date product_date;
    private Date ok_date;
    private Double import_price;
    private Double price;
    private int sale_status;
    private int is_import;
    private String description;

    @Override
    public String toString() {
        return "Drug{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", spec='" + spec + '\'' +
                ", unit='" + unit + '\'' +
                ", product_company='" + product_company + '\'' +
                ", product_date=" + product_date +
                ", ok_date=" + ok_date +
                ", import_price=" + import_price +
                ", price=" + price +
                ", sale_status=" + sale_status +
                ", is_import=" + is_import +
                ", description='" + description + '\'' +
                '}';
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

    public String getSpec() {
        return spec;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getProduct_company() {
        return product_company;
    }

    public void setProduct_company(String product_company) {
        this.product_company = product_company;
    }

    public Date getProduct_date() {
        return product_date;
    }

    public void setProduct_date(Date product_date) {
        this.product_date = product_date;
    }

    public Date getOk_date() {
        return ok_date;
    }

    public void setOk_date(Date ok_date) {
        this.ok_date = ok_date;
    }

    public Double getImport_price() {
        return import_price;
    }

    public void setImport_price(Double import_price) {
        this.import_price = import_price;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getSale_status() {
        return sale_status;
    }

    public void setSale_status(int sale_status) {
        this.sale_status = sale_status;
    }

    public int getIs_import() {
        return is_import;
    }

    public void setIs_import(int is_import) {
        this.is_import = is_import;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Drug() {

    }

    public Drug(Integer id, String name, String spec, String unit, String product_company, Date product_date, Date ok_date, Double import_price, Double price, int sale_status, int is_import, String description) {

        this.id = id;
        this.name = name;
        this.spec = spec;
        this.unit = unit;
        this.product_company = product_company;
        this.product_date = product_date;
        this.ok_date = ok_date;
        this.import_price = import_price;
        this.price = price;
        this.sale_status = sale_status;
        this.is_import = is_import;
        this.description = description;
    }
}
