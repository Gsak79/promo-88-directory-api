package com.promo88;

public class Administrator {
    private Integer id;
    private String username;
    private String password;
    private Integer role;

    public Administrator(Integer id, String username, String password, Integer role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public Administrator() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    @Override
    public boolean equals(Object arg0) {
        // TODO Auto-generated method stub
        return super.equals(arg0);
    }

    @Override
    public int hashCode() {
        // TODO Auto-generated method stub
        return super.hashCode();
    }

    @Override
    public String toString() {
        return "Administrator [id=" + id + ", username=" + username + ", password=" + password + ", role=" + role + "]";
    }

    

    
}
