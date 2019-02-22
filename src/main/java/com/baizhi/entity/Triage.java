package com.baizhi.entity;

import java.io.Serializable;

public class Triage implements Serializable {
    private Integer id;

    private Integer status;

    private String illnessInfo;

    private String advice;

    private String pid;

    private String did;

    private String uid;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getIllnessInfo() {
        return illnessInfo;
    }

    public void setIllnessInfo(String illnessInfo) {
        this.illnessInfo = illnessInfo == null ? null : illnessInfo.trim();
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice == null ? null : advice.trim();
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did == null ? null : did.trim();
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Triage other = (Triage) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
                && (this.getStatus() == null ? other.getStatus() == null : this.getStatus().equals(other.getStatus()))
                && (this.getIllnessInfo() == null ? other.getIllnessInfo() == null : this.getIllnessInfo().equals(other.getIllnessInfo()))
                && (this.getAdvice() == null ? other.getAdvice() == null : this.getAdvice().equals(other.getAdvice()))
                && (this.getPid() == null ? other.getPid() == null : this.getPid().equals(other.getPid()))
                && (this.getDid() == null ? other.getDid() == null : this.getDid().equals(other.getDid()))
                && (this.getUid() == null ? other.getUid() == null : this.getUid().equals(other.getUid()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getStatus() == null) ? 0 : getStatus().hashCode());
        result = prime * result + ((getIllnessInfo() == null) ? 0 : getIllnessInfo().hashCode());
        result = prime * result + ((getAdvice() == null) ? 0 : getAdvice().hashCode());
        result = prime * result + ((getPid() == null) ? 0 : getPid().hashCode());
        result = prime * result + ((getDid() == null) ? 0 : getDid().hashCode());
        result = prime * result + ((getUid() == null) ? 0 : getUid().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", status=").append(status);
        sb.append(", illnessInfo=").append(illnessInfo);
        sb.append(", advice=").append(advice);
        sb.append(", pid=").append(pid);
        sb.append(", did=").append(did);
        sb.append(", uid=").append(uid);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}