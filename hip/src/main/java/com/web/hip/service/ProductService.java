package com.web.hip.service;

import java.util.List;

import com.web.hip.model.Product;

public interface ProductService {

	int getTotal();

	List<Product> productlist(Product product);

}
