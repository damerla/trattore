package com.trattore.util;

import static org.springframework.core.Ordered.HIGHEST_PRECEDENCE;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.boot.orm.jpa.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@ComponentScan({"com.trattore.controller" })
@EnableJpaRepositories(basePackages = {"com.trattore.repository"})
@EntityScan(basePackages = {"com.trattore.models"}) 
@EnableAutoConfiguration
@Order(HIGHEST_PRECEDENCE)
public class TrattoreApplivation extends SpringBootServletInitializer {
	public static void main(String[] args) {
		BasicConfigurator.configure();
		Logger rootLogger = Logger.getRootLogger();
		rootLogger.setLevel(Level.INFO);
		SpringApplication.run(TrattoreApplivation.class, args);

	}
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(TrattoreApplivation.class);
	}
}
