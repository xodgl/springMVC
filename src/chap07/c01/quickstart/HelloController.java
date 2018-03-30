package chap07.c01.quickstart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	@RequestMapping("/hello.do2")
	public String hello(Model model) {
		model.addAttribute("greeting","æ»≥Á«œººø‰");
		return "hello";
	}
	
	@RequestMapping("/hello-raw.do2")
	public void hello(HttpServletResponse response) throws IOException{
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		writer.write("æ»≥Á«œººø‰");
		writer.flush();
	}
		
	
	
}
