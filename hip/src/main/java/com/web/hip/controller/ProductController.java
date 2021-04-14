package com.web.hip.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.hip.model.Product;
import com.web.hip.service.PagingBean;
import com.web.hip.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService ps;
	
	@RequestMapping("productlist")
	public String productlist(Model model, Product product, String pageNum) {
		if (pageNum == null || pageNum.equals("")) pageNum="1";
		int currentPage=Integer.parseInt(pageNum);
		int rowPerPage=12;
		int total=ps.getTotal();
		int startRow=(currentPage-1)*rowPerPage+1;
		int endRow=startRow+rowPerPage-1;
		product.setStartRow(startRow);
		product.setEndRow(endRow);
		List<Product> list=ps.productlist(product);
		PagingBean pb=new PagingBean(currentPage, total, rowPerPage);
		model.addAttribute("pb", pb);
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		model.addAttribute("pageNum", pageNum);
		return "/product/productlist";
	}
}
