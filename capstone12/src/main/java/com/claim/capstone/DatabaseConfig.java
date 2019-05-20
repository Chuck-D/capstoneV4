

package com.claim.capstone;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@EnableTransactionManagement //allows to write multiple mysql queries at once
@EnableSpringDataWebSupport //allows use of webupdata support, a library that allows data transactions over web
@EnableAutoConfiguration // allows hibernate to create tables for you
@EnableJpaRepositories(basePackages="com.claim.repository")
@ComponentScan(basePackages="com.claim")

public class DatabaseConfig {

@Bean //specifies com.claim.entity to create table 
public LocalContainerEntityManagerFactoryBean entityManagerFactory(EntityManagerFactoryBuilder builder,DataSource dataSource) {
return builder.dataSource(dataSource)
.packages("com.claim.entity")
.build();
}

@Bean(name="transactionManager") //enables jpa transactions, springs needs this communicate with sql
public PlatformTransactionManager barTransactionManager(
EntityManagerFactory factory) {
return new JpaTransactionManager(factory);
}


//Create a bean in config file
@Bean
public JavaMailSender getJavaMailSender() {
JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
    mailSender.setHost("smtp.gmail.com");
    mailSender.setPort(587);
    
    mailSender.setUsername("capstone20192019@gmail.com");
    mailSender.setPassword("capstone7!");

   Properties props = mailSender.getJavaMailProperties();
   props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
   props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.debug", "true");
     
    return mailSender;
}
}




