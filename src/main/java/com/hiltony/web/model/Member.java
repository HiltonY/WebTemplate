package com.hiltony.web.model;

import com.hiltony.web.model.enmu.Gender;

import java.util.Date;
import java.util.List;

/**
 * Created by hzyangxin1 on 2016/10/18.
 *
 */
public class Member {

    private enum Releation{
        FATHER_TO_SON(1,"父子"),
        FATHER_TO_DAUGHTER(2,"父女"),
        MATHER_TO_SON(3,"母子"),
        MATHER_TO_DAUGHTER(4,"母女"),
        BROTHER(5,"兄弟"),
        SISTER(6,"姐妹"),
        BROTHER_TO_SISTER(7,"兄妹"),
        SISTER_BROTHER(8,"姐弟"),
        RELATIVE(9,"亲戚"),
        FRIEND(10,"朋友"),
        OTHER(11,"其他");


        Releation(Integer type,String name){
            this.setType(type);
            this.setReleationName(name);
        }
        private Integer type;
        private String releationName;

        public Integer getType() {
            return type;
        }

        public void setType(Integer type) {
            this.type = type;
        }

        public String getReleationName() {
            return releationName;
        }

        public void setReleationName(String releationName) {
            this.releationName = releationName;
        }
    }
    private class Contacter{
        private String name;
        private String address;
        private String phoneNumber;
        private Releation releation;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getAddress() {
            return address;
        }

        public void setAddress(String address) {
            this.address = address;
        }

        public String getPhoneNumber() {
            return phoneNumber;
        }

        public void setPhoneNumber(String phoneNumber) {
            this.phoneNumber = phoneNumber;
        }

        public Releation getReleation() {
            return releation;
        }

        public void setReleation(Releation releation) {
            this.releation = releation;
        }
    }
    private Long memberId;
    private String memberName;
    private String address;
    private Long phoneNumber;
    private List<Contacter> contacters;
    private String medicalHistory;
    private String gender;
    private Date birthday;
    private Integer age;
    private Integer status;
    private String certificate;//身份证号

    public String getCertificate() {
        return certificate;
    }

    public void setCertificate(String certificate) {
        this.certificate = certificate;
    }

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Long getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Long phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public List<Contacter> getContacters() {
        return contacters;
    }

    public void setContacters(List<Contacter> contacters) {
        this.contacters = contacters;
    }

    public String getMedicalHistory() {
        return medicalHistory;
    }

    public void setMedicalHistory(String medicalHistory) {
        this.medicalHistory = medicalHistory;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}

