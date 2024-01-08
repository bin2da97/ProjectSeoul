package com.seoul.tour.controller;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class HnpWeather{

	public  String get(int x, int y, String[] v)
	{
		HttpURLConnection con = null;
		String s = null; // 에러 메시지
		
		try
		{
			LocalDateTime t = LocalDateTime.now().minusMinutes(30); // 현재 시각 30분전
			
			URL url = new URL(
				"http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtFcst"
				+ "?ServiceKey=ga6MZH3w0Nt1oHWjY04rN%2Fe2hLSxJhQuAukZTLNA1lcJCnPa4QT%2B%2FFqReIT2hH8lZjZoMQUAsxNCZFss3qWXNA%3D%3D" // 서비스키
			//	+ "&pageNo=1" // 페이지번호 Default: 1
				+ "&numOfRows=60" // 한 페이지 결과 수 (10개 카테고리값 * 6시간)
			//	+ "&dataType=XML" // 요청자료형식(XML/JSON) Default: XML
				+ "&base_date=" + t.format(DateTimeFormatter.ofPattern("yyyyMMdd"))  // 발표 날짜
				+ "&base_time=" + t.format(DateTimeFormatter.ofPattern("HHmm")) // 발표 시각
				+ "&nx=" + x // 예보지점의 X 좌표값
				+ "&ny=" + y // 예보지점의 Y 좌표값
			);
			
			con = (HttpURLConnection)url.openConnection();
			Document doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(con.getInputStream());
	
			boolean ok = false; // <resultCode>00</resultCode> 획득 여부
			
			Element e;
			NodeList ns = doc.getElementsByTagName("header");
			if (ns.getLength() > 0)
			{
				e = (Element)ns.item(0);
				if ("00".equals(e.getElementsByTagName("resultCode").item(0).getTextContent()))
					ok = true; // 성공 여부
				else // 에러 메시지
					s = e.getElementsByTagName("resultMsg").item(0).getTextContent();
			}
				
			if (ok)
			{
				String fd = null, ft = null; // 가장 빠른 예보 시각
				String pty = null; // 강수형태
				String sky = null; // 하늘상태
				String cat; // category
				String val; // fcstValue
				
				ns = doc.getElementsByTagName("item");
				for (int i = 0; i < ns.getLength(); i++)
				{
					e = (Element)ns.item(i);
					
					if (ft == null)
					{ // 가져올 예보 시간 결정
						fd = e.getElementsByTagName("fcstDate").item(0).getTextContent(); // 예보 날짜
						ft = e.getElementsByTagName("fcstTime").item(0).getTextContent(); // 예보 시각
					}
					else if (!fd.equals(e.getElementsByTagName("fcstDate").item(0).getTextContent()) ||
							 !ft.equals(e.getElementsByTagName("fcstTime").item(0).getTextContent()))
							continue; // 결정된 예보 시각과 같은 시각의 것만 취한다.
					
					cat = e.getElementsByTagName("category").item(0).getTextContent(); // 자료구분코드
					val = e.getElementsByTagName("fcstValue").item(0).getTextContent(); // 예보 값
					
					if ("PTY".equals(cat)) pty = val; // 강수형태
					else if ("SKY".equals(cat)) sky = val; // 하늘상태
					else if ("T1H".equals(cat)) v[3] = val; // 기온
					else if ("REH".equals(cat)) v[4] = val; // 습도
				}
				
				v[0] = fd;
				v[1] = ft;
				
				if ("0".equals(pty))
				{ // 강수형태 없으면, 하늘상태로 판단
					if ("1".equals(sky)) v[2] = "맑음";
					else if ("3".equals(sky)) v[2] = "구름많음";
					else if ("4".equals(sky)) v[2] = "흐림";
				}
				else if ("1".equals(pty)) v[2] = "비";
				else if ("2".equals(pty)) v[2] = "비/눈";
				else if ("3".equals(pty)) v[2] = "눈";
				else if ("5".equals(pty)) v[2] = "빗방울";
				else if ("6".equals(pty)) v[2] = "빗방울눈날림";
				else if ("7".equals(pty)) v[2] = "눈날림";
	        }
		}
		catch (Exception e)
		{
			s = e.getMessage();
		}
		
		if (con != null)
			con.disconnect();
	
		return s;
	}

	
}

//[출처] [자바] 공공데이터포털 오픈 API를 이용하여 기상청 현재 날씨 정보 얻기|작성자 파랑새