package com.nlu.cdw.be.service.impl;

import com.nlu.cdw.be.entity.Image;
import com.nlu.cdw.be.repo.ImageRepo;
import com.nlu.cdw.be.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImageServiceImpl implements ImageService {
    @Autowired
    ImageRepo imageRepo;

    @Override
    public Image createImage(Image image) {
        return imageRepo.save(image);
    }
}
