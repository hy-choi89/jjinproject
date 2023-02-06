package com.gym.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gym.domain.KakaoPayReadyVO;
import com.gym.payment.vo.PreReadyVO;
import com.gym.service.KapayService;

import lombok.Setter;
import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/payment/*")
public class KapayController {
	
	@Setter(onMethod_ = @Autowired)
	private KapayService kapayservice;
	
	@GetMapping("/kapay")
	public void getKapay() {}

/*	
	@PostMapping("/kapay")
	public String postKapay() {
		return "redirect:"+ kapayservice.kakaoPayReady();
	}
*/
	
	
	@PostMapping("/kapay01")
	public String postKapay01(@RequestParam("proNum") String proNum, 
								@RequestParam("userId") String userId) throws Exception {
		

		PreReadyVO pr = kapayservice.testPreReady(proNum);

/*		
		KakaoPayReadyVO krvo = kapayservice.testKakaoReady(proNum);
*/		
		pr.setUserId(userId);
		System.out.println(pr.toString());
		
		String result = kapayservice.kakaoPayReady01(pr);
		
		return "redirect:"+result;
		
	}

	/*
	@PostMapping("/kapay01")
	public String postKapay01(PayTestVO pvo) {
		
		String result = kapayservice.kakaoPayReady01(pvo); 
		
		return "redirect:"+result;
	}
	*/
	
	
	@GetMapping("/kakaoPaySuccess")
	public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
		
		log.info("kakaoPaySuccess get............................................");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        
		model.addAttribute("info", kapayservice.kakaoPayInfo(pg_token));
	}
	
	@GetMapping("/kapayCancel")
	public String getKapaycancel() {return "/payment/kakaoPayCancel";}
	
	@GetMapping("/kakaoPaySuccessFail")
	public void kapayFail() {}
	
	
}
