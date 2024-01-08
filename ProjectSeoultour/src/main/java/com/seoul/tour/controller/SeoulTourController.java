package com.seoul.tour.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.seoul.tour.dto.CalendarDTO;
import com.seoul.tour.dto.Datalist;
import com.seoul.tour.service.RegisterService;
import com.seoul.tour.vo.UserVO;
import com.seoul.tour.vo.WeatherVO;

import lombok.Setter;

@Controller
@RequestMapping("/seoul")
public class SeoulTourController {

	@Setter(onMethod_ = @Autowired)
	private RegisterService service;
	private HnpWeather weather;

	@GetMapping("/main") // 메인페이지
	public String mainPage(WeatherVO vo, Model model) {
		String[] v = new String[5];
		weather = new HnpWeather();
		String s = weather.get(58, 125, v); // 서울시 금천구 가산동

		if (s == null) { // ok!
			System.out.println("날짜 : " + v[0]);
			System.out.println("시간 : " + v[1]);
			System.out.println("날씨 : " + v[2]);
			System.out.println("기온 : " + v[3] + "℃");

			vo.setDate(v[0]);
			vo.setTime(v[1].substring(0, 2));
			vo.setWeather(v[2]);
			vo.setTemperature(v[3]);

			model.addAttribute("w", vo);
		} else { // error
			System.out.println("Error : " + s);
		}

		// [in] x, y : 예보지점 X, Y 좌표
		// => 행정구역별 x,y 값은 참고문서(https://www.data.go.kr/data/15084084/openapi.do) 내려받아 확인
		// [out] v[0]=예보날짜(yyyyMMdd), v[1]=예보시간(HHmm), v[2]=날씨, v[3]=기온(℃), v[4]=습도(%)
		// 반환값 : 에러메시지, null == OK

		return "main";
	}

	@GetMapping("/login")
	public String login() {
		return "member/login";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/seoul/main";
	}

	@GetMapping("/register") // 로그인 페이지에서 회원가입 페이지로 이동
	public String register() {
		return "member/register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST) // 회원가입 후 자동로그인된 메인페이지
	public String registerPost(UserVO vo, String id, HttpSession session, RedirectAttributes rttr, Model model) {
		int cnt = service.register(vo);

		// 세션에서 사용자 ID 가져오기
		String id_ = (String) session.getAttribute("id_");
		System.out.println("여기는 컨트롤러 user id:" + id_);
		System.out.println("34)" + cnt + cnt + "user :" + vo);
		if (id_ != null) {
			UserVO user = service.memberById(id_);
			if (user != null) {
				model.addAttribute("user", user.getName_());
				System.out.println("db에거 가져온 user " + user.getName_());
			}
		}
		if (cnt != 0) {
			rttr.addFlashAttribute("user", vo.getName_()); // 일회성으로 데이터 가져오기
			System.out.println("여기는 신규회원 이름 : " + vo);
		}
		return "redirect:/seoul/main";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST) // 로그인한 메인페이지
	public void loginPOST(String id, RedirectAttributes rttr, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		System.out.println("여기는 컨트롤러 user id:" + id);
		UserVO user = service.memberById(id);
		System.out.println("db에거 가져온 user " + user.getName_());
		System.out.println("doPost()");

		// session가지고오기
		HttpSession session = request.getSession();
		// session에 데이터 저장
		if (user != null) {
			session.setAttribute("user", user);
		}
		// 세션에서 데이터 꺼내올 때 기본적으로 Object로 받아오므로 형변환(casting) 필요
		// id = (String)session.getAttribute("id");
		// mainServlet 요청
		response.sendRedirect("/seoul/main");
		// return "redirect:/seoul/main";
	}

	public LocalDate getDateFromString(String string, DateTimeFormatter format) { // Converting the string to date in
																					// the specified format
		LocalDate date = LocalDate.parse(string, format);
		// Returning the converted date
		return date;
	}

	private List<String> fetch() throws IOException {
		StringBuilder urlBuilder = new StringBuilder("http://openapi.seoul.go.kr:8088/"); /* URL */
		urlBuilder.append("6f66596d446c7362343854676f7a67/");// 인증키
		urlBuilder.append("json/");
		urlBuilder.append("culturalEventInfo/");
		urlBuilder.append("2/");
		urlBuilder.append("450/");
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
//		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		// api 예시코드 
		List<String> translated_list = new ArrayList<>();
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			JsonNode jsonNode = objectMapper.readTree(sb.toString());
			for (int i = 0; i < 449; i++) {
				String translated_CODENAME = jsonNode.path("culturalEventInfo").path("row").get(i).path("CODENAME")
						.asText();
				String translated_TITLE = jsonNode.path("culturalEventInfo").path("row").get(i).path("TITLE").asText();
				String translated_DATE = jsonNode.path("culturalEventInfo").path("row").get(i).path("DATE").asText();
				String translated_PLACE = jsonNode.path("culturalEventInfo").path("row").get(i).path("PLACE").asText();
				String translated_GUNAME = jsonNode.path("culturalEventInfo").path("row").get(i).path("GUNAME")
						.asText();
				translated_list.add("분류: " + translated_CODENAME + " , 행사명: " + translated_TITLE + " , 날짜: "
						+ translated_DATE + " , 장소: " + translated_GUNAME + " " + translated_PLACE);
			}
		} catch (IOException e) {

		}

		return translated_list;
	}

	@GetMapping("/event")
	public String mapcalendar() throws IOException {

		return "/map_calendar";
	}

	@ResponseBody
	@GetMapping("/calendar2") // 달력
	public CalendarDTO calendarList(Model model) throws IOException {
		List<String> events = fetch();
		CalendarDTO eventList = new CalendarDTO();
		eventList.setEventList(events);
//		System.out.println(events.size());
//		System.out.println(events.get(events.size()-1));
		return eventList;
	}

	@GetMapping("/mapkakao")
	public String kakaomap() throws IOException {

		return "/a";
	}

	@ResponseBody
	@GetMapping("/mapevent2") // 지역구 행사 일정 리스트, 맛집리스트
	public Datalist dataList(Model model, String selectedRegion) throws IOException {
		System.out.println(selectedRegion);
		List<String> events = fetch();
		List<String> eventList = new ArrayList<>();
		List<String> localFoodList = new ArrayList<>();
		String localFoodLinkList = "";
//		System.out.println(events);

		for (String ev : events) {
			if (ev.contains(selectedRegion)) {
				System.out.println(ev);
				eventList.add(ev);
			}
		}
		model.addAttribute("list", eventList);

		// 크롤링
		String crawlingEnterUrl = "https://search.naver.com/search.naver?where=nexearch&query=" + selectedRegion
				+ "+맛집";
		System.out.println(crawlingEnterUrl);
		Connection conn = Jsoup.connect(crawlingEnterUrl);

		try {
			Document document = conn.get();
			Elements place_link = document.select(
					"#place-main-section-root > section:nth-child(1) > div > div.rdX0R.HXTER.POx9H > ul > li:nth-child("
							+ 1 + ") > div.CHC5F > a");
			final String enterP_link = place_link.attr("href");
			localFoodLinkList = enterP_link;

			for (int i = 1; i < 6; i++) {
				Elements place_name = document
						.select("#place-main-section-root > section > div > div.rdX0R.HXTER.POx9H > ul > li:nth-child("
								+ i + ") > div.CHC5F > a > div > div > span.TYaxT");
				Elements place_food = document
						.select("#place-main-section-root > section > div > div.rdX0R.HXTER.POx9H > ul > li:nth-child("
								+ i + ") > div.CHC5F > a > div > div > span.KCMnt");

				final String enterP_name = place_name.text();
				final String enterP_food = place_food.text();

				localFoodList.add("식당 이름 : " + enterP_name + " , 음식 종류 : " + enterP_food + " , ");

				System.out.println("enterP_name:" + enterP_name);
				System.out.println("enterP_food:" + enterP_food);
				System.out.println("enterP_link:" + enterP_link);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}

		Datalist data_list = new Datalist();
		data_list.setEventList(eventList);
		data_list.setLocalFoodList(localFoodList);
		data_list.setLocalFoodLinkList(localFoodLinkList);
		return data_list;

	}

	@GetMapping("/recommend") // 추천 일정 페이지
	public String dailyTourPage() {
		return "dailyTourRec";
	}

	@GetMapping("/board") // 게시판 페이지
	public String boardUpload() {
		return "board/insert";
	}

}
