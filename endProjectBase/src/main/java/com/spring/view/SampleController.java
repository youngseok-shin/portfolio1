package com.spring.view;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.spring.biz.SampleService;

@Controller
public class SampleController {
	@Resource(name = "sampleService")
	SampleService sampleService;
	
	@RequestMapping(value = "/sample.do")
	public String manageBuy() {
		return "main/sample";
	}

	@RequestMapping(value = "/main.do")
	public String main() {
		return "main/main";
	}

	
	
//	@RequestMapping(value = "/admin.do")
//	public String tes1t() {
//		return "admin/aa";
//	}
	@RequestMapping(value = "/shop.do")
	public String test3() {
		return "shop/cc";
	}
	@RequestMapping(value = "/qna.do")
	public String qna() {
		return "qna/qnaPage";
	}
	
}










