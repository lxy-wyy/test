package com.buba;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.buba.dao")
public class Jiuhui2Application {

    public static void main(String[] args) {
        SpringApplication.run(Jiuhui2Application.class, args);
    }

}
