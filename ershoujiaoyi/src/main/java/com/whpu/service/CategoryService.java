package com.whpu.service;

import com.whpu.pojo.Category;

import java.util.List;

public interface CategoryService {
     List<Category> findAll();
     String findAllById();
}
