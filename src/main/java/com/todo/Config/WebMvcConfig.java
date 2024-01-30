package com.todo.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages= {"com.todo.Controller"})
public class WebMvcConfig {

	@Bean
	public InternalResourceViewResolver viewResolver(){
		InternalResourceViewResolver view = new InternalResourceViewResolver();
		System.out.println("View Resolver page------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		view.setPrefix("/WEB-INF/view/");
		view.setSuffix(".jsp");
		return view;
	}
}
