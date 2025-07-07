package com.example.Student1.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.Student1.Model.StudentModel;

public interface StudentRepository extends JpaRepository<StudentModel, Integer> {

}
