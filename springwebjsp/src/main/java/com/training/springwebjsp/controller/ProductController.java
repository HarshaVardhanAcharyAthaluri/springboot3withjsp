package com.training.springwebjsp.controller;

import com.training.springwebjsp.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {

	List<Product> productList = new ArrayList<Product>();

	ProductController(){
		productList.add(new Product(1,"books",20));
		productList.add(new Product(2,"mobile",50));
		productList.add(new Product(3,"laptop",70));
		productList.add(new Product(4,"headphones",10));
	}

	@RequestMapping("/homepage")
	public String home() {
		return "home";
	}

	@RequestMapping("/products")
	public ModelAndView productList(){
		ModelAndView mav = new ModelAndView("products");
		mav.addObject("productList",productList);

		return mav;
	}

	@RequestMapping(value = "/add")
	public String addProduct(){
		return "addprodcut";
	}

	@RequestMapping(value = "/save",method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute Product product){
		ModelAndView mav = new ModelAndView("products");
		productList.add(product);
		mav.addObject("productList",productList);
		return mav;
	}
}
