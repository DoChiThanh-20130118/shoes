package com.nlu.cdw.be.service;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface FileManagerService {
    List<String> saveFile(String folder, MultipartFile[] files);
}
