package com.example.Student1.Model;

import jakarta.persistence.*;

@Entity
@Table(name = "Cse")
public class StudentModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String name;
    private String dept;
    private String place;
    private int age;

    public StudentModel() {
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDept() { return dept; }
    public void setDept(String dept) { this.dept = dept; }

    public String getPlace() { return place; }
    public void setPlace(String place) { this.place = place; }

    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }

    @Override
    public String toString() {
        return "StudentModel [id=" + id + ", name=" + name + ", dept=" + dept + ", place=" + place + ", age=" + age + "]";
    }
}
