package com.web.hip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.hip.dao.ProductDao;
import com.web.hip.model.Product;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDao pd;

	public int getTotal() {
		return pd.getTotal();
	}

	public List<Product> productlist(Product product) {
		return pd.productlist(product);
	}
}
