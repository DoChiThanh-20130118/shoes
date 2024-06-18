package com.nlu.cdw.be;



import com.nlu.cdw.be.entity.Attribute;
import com.nlu.cdw.be.entity.Product;
import com.nlu.cdw.be.repo.AttributeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

import java.util.List;


@SpringBootApplication
@EnableScheduling
public class CdwBeApplication implements CommandLineRunner {
    public static void main(String[] args) {
        SpringApplication.run(CdwBeApplication.class, args);
    }

    @Autowired
    AttributeRepo attributeRepo;

    @Override
    public void run(String... args) throws Exception {
        List<Attribute> attributes = attributeRepo.findAll();
        for(Attribute attribute: attributes){
            Product p = attribute.getProduct();
            attribute.setName(p.getName());
            attributeRepo.save(attribute);
        }
    }
}
