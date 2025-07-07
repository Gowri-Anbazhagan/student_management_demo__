package com.example.Student1.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.Student1.Model.StudentModel;
import com.example.Student1.Repository.StudentRepository;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StudentController {

    @Autowired
    private StudentRepository repo;

    @GetMapping("/home")
    public String home() {
        return "index";
    }

    @PostMapping("/submit")
    public String submit(StudentModel student) {
        repo.save(student);
        return "index";
    }

    @GetMapping("/view")
    public String viewStudents(HttpServletRequest request) {
        List<StudentModel> students = repo.findAll();
        request.setAttribute("students", students);
        return "View";
    }

    @GetMapping("/edit")
    public String editStudent(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        StudentModel student = repo.findById(id).orElse(null);
        request.setAttribute("student", student);
        return "edit";
    }

    @PostMapping("/update")
    public String updateStudent(StudentModel student) {
        repo.save(student);
        return "redirect:/view";
    }

    @GetMapping("/delete")
    public String deleteStudent(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        repo.deleteById(id);
        return "redirect:/view";
    }

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String doLogin(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("admin".equals(username) && "admin123".equals(password)) {
            request.setAttribute("username", username);
            return "index";
        } else {
            request.setAttribute("error", "Invalid username or password");
            return "login";
        }
    }
}
