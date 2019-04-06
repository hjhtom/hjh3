package com.hanlin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/echarts")
public class GoodsController {


	@RequestMapping("/toList")
	public String toList() {
		
		return "echarts";
	}
	@RequestMapping("/toList1")
	public String toList1() {
		
		return "echarts1";
	}
	
}