package com.Simon.cotroller;

import com.Simon.entity.Student;
import com.Simon.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hello")
public class HelloHandler {

    @Autowired
    private StudentRepository studentRepository;

    @GetMapping("/index")
    public ModelAndView index(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("list",studentRepository.findAll());
        return modelAndView;
    }
    @GetMapping("/deleteById{id}")
    public String deleteById(@PathVariable("id") int id){
        studentRepository.deleteById(id);
        return "redirect:/hello/index";
    }
    @PostMapping("/save")
    public String save(Student student){
        studentRepository.saveorupdate(student);
        return "redirect:/hello/index";
    }
    @PostMapping("/update")
    public String update(Student student){
        studentRepository.saveorupdate(student);
        return "redirect:/hello/index";
    }
    @GetMapping("/findById{id}")
    public ModelAndView findById(@PathVariable("id") int id){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("/update");
        modelAndView.addObject("student",studentRepository.findById(id));
        return modelAndView;
    }
}
