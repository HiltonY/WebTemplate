package com.hiltony.web.model.enmu;

/**
 * Created by hzyangxin1 on 2016/10/18.
 */
public enum  Gender {

    MAN(1,"男"),WOMAN(2,"女");

    private Integer value;
    private String desc;
    Gender(Integer value,String desc){
        this.value = value;
        this.desc = desc;
    }
}
