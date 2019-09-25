package com.academy.appl.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin/employee/*")
public class EmployeeController {
	
	
	@RequestMapping("dashboard")
	public String dashboard(Model model) {
		log.info("GET 관리자 메뉴의 대시보드 메뉴 요청");
		return "admin/dashboard";
	}

	@RequestMapping("lecture")
	public String lecture(Model model) {
		log.info("GET 관리자 메뉴의 강의 관리 메뉴 요청");
		return "admin/lecture";
	}
	
	@RequestMapping("employee")
	public String employee(Model model) {
		log.info("GET 관리자 메뉴의 직원 관리 메뉴 요청");
		return "admin/employee";
	}	
	
	@RequestMapping("student")
	public String student(Model model) {
		log.info("GET 관리자 메뉴의 학생 관리 메뉴 요청");
		return "admin/student";
	}	
	
	@RequestMapping("studyroom")
	public String studyroom(Model model) {
		log.info("GET 관리자 메뉴의 강의실 관리 메뉴 요청");
		return "admin/studyroom";
	}
	
	@RequestMapping("counsel")
	public String counsel(Model model) {
		log.info("GET 관리자 메뉴의 상담 관리 메뉴 요청");
		return "admin/counsel";
	}
}
