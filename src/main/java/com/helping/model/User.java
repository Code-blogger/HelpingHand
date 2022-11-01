package com.helping.model;

import java.util.Objects;

public class User {

    private String email;
    private String userType;
    private String username;
    private String name;
    private String password;
    private int phone;
    private String website;
    private String address;

    public User(String email, String userType, String username, String name, String password, Integer phone, String website, String address) {
        this.email = email;
        this.userType = userType;
        this.username = username;
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.website = website;
        this.address = address;
    }

    public User() {

    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(email, user.email) && Objects.equals(userType, user.userType) && Objects.equals(username, user.username) && Objects.equals(name, user.name) && Objects.equals(password, user.password) && Objects.equals(phone, user.phone) && Objects.equals(website, user.website) && Objects.equals(address, user.address);
    }

    @Override
    public int hashCode() {
        return Objects.hash(email, userType, username, name, password, phone, website, address);
    }
}
