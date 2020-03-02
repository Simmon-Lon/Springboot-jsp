package com.Simon.repository;

import com.Simon.entity.Student;

import java.util.Collection;


public interface StudentRepository {
    public Collection<Student> findAll();
    public Student findById(int id);
    public void saveorupdate(Student student);
    public void deleteById(int id);
}
