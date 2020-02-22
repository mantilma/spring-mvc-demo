package springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DatepickerController {

		@RequestMapping("/datapicker")
		public String showPage() {
			return "data-picker";
		}

}
	
