package com.web.hip.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.hip.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao{
	@Autowired
	private SqlSessionTemplate sst;

	public int getTotal() {
		return sst.selectOne("productns.getTotal");
	}

	public List<Product> productlist(Product product) {
		return sst.selectList("productns.productlist", product);
	}
}
