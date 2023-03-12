package org.fi.lifesaver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages = {"org.fi.lifesaver.controllers","org.fi.lifesaver.services"})
@EntityScan(basePackages = {"org.fi.lifesaver.entity"})
@EnableJpaRepositories(basePackages = {"org.fi.lifesaver.repositories"})
public class LifesaverApplication {

	public static void main(String[] args) {
		SpringApplication.run(LifesaverApplication.class, args);
	}

}
