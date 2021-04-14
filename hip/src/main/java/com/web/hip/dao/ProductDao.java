package com.web.hip.dao;

import java.util.List;

import com.web.hip.model.Product;

public interface ProductDao {

	int getTotal();

	List<Product> productlist(Product product);

}
