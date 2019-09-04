package part01_ajax_daum;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//http://localhost:8090/myajax/daumForm.do
@Controller
public class SearchDaumController {
	public SearchDaumController() {
	}

	@RequestMapping("/daumForm.do")
	public String form() {
		return "part01/daumForm";
	}// end form()

	@RequestMapping(value = "/searchOpen.do", produces="application/json;charset=UTF-8")
	public @ResponseBody String process(String search) throws IOException {
		String input = "";
		String total = "";
		String url = "https://dapi.kakao.com/v3/search/book?target=title";
		url += "&query=" + URLEncoder.encode(search, "UTF-8");
		URL url2 = new URL(url);
		URLConnection conn = url2.openConnection();
		HttpURLConnection urlConn = (HttpURLConnection) conn;
		urlConn.setRequestMethod("GET");
		urlConn.setRequestProperty("Authorization", "KakaoAK c552945fd65d989c699f89683e5db98e");/*REST API 키*/

		BufferedReader reader = new BufferedReader(new InputStreamReader(urlConn.getInputStream()));
		while ((input = reader.readLine()) != null) {
			total += input;
		}
		System.out.println(total);
		return total;
	}// end process()
	
}// end class
