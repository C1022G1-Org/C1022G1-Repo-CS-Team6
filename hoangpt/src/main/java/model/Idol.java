package model;

public class Idol {
private int id;
private String name;
private String gender;
private String birth;
private String country;
private String popular;
private String skill;

    public Idol(int id, String name, String gender, String birth, String country, String popular, String skill) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.birth = birth;
        this.country = country;
        this.popular = popular;
        this.skill = skill;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPopular() {
        return popular;
    }

    public void setPopular(String popular) {
        this.popular = popular;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }
}
