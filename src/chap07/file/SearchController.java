package chap07.file;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//q�� ������ default�� ����.
@Controller
public class SearchController {
	@RequestMapping("/search")
	public String search(@RequestParam(value = "q", defaultValue="") String query,Model model) {
		System.out.println("�˻���: "+query);
		return "search/result";
	}
}
