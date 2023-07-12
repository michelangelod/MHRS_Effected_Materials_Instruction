package com.eddie.domain;

public class Material {
    private String  affected;
    private Integer min_level;
    private Integer max_level;

    public String getAffected() {
        return affected;
    }

    public void setAffected(String affected) {
        this.affected = affected;
    }

    public Integer getMin_level() {
        return min_level;
    }

    public void setMin_level(Integer min_level) {
        this.min_level = min_level;
    }

    public Integer getMax_level() {
        return max_level;
    }

    public void setMax_level(Integer max_level) {
        this.max_level = max_level;
    }
}
