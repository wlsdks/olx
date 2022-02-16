package com.olx;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.olx.dao.IChatDAO;
import com.olx.dao.IMemberDAO;
import com.olx.dao.IPostDAO;

@ComponentScan(basePackages = "com.project.finalProject")
@MapperScan(basePackageClasses = IMemberDAO.class)
@MapperScan(basePackageClasses = IPostDAO.class)
@MapperScan(basePackageClasses = IChatDAO.class)
@SpringBootApplication
public class OlxApplication {

	public static void main(String[] args) {
		SpringApplication.run(OlxApplication.class, args);
	}

}
