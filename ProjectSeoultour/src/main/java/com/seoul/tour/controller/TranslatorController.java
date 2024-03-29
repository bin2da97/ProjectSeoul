//package com.seoul.tour.controller;
//
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//
//import com.fasterxml.jackson.databind.JsonNode;
//import com.fasterxml.jackson.databind.ObjectMapper;
//
//import java.io.*;
//import java.net.HttpURLConnection;
//import java.net.MalformedURLException;
//import java.net.URL;
//import java.net.URLEncoder;
//import java.util.HashMap;
//import java.util.Map;
//
//import static org.springframework.http.RequestEntity.post;
//
//@Controller
//public class TranslatorController {
//
//    @GetMapping("/")
//    public String b(){
//        return "1.html";
//    }
//    @PostMapping("/t")
//    public String a(String original, Model model){
//        String clientId = "DdEvRHJFu0iez9ukvPrC";//애플리케이션 클라이언트 아이디값";
//        String clientSecret = "_kCBEG3sd5";//애플리케이션 클라이언트 시크릿값";
//        System.out.println(original);
//        String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
//        String text;
//        try {
//            text = URLEncoder.encode(original, "UTF-8");
//        } catch (UnsupportedEncodingException e) {
//            throw new RuntimeException("인코딩 실패", e);
//        }
//
//        Map<String, String> requestHeaders = new HashMap<>();
//        requestHeaders.put("X-Naver-Client-Id", clientId);
//        requestHeaders.put("X-Naver-Client-Secret", clientSecret);
//
//        String translatedText = post(apiURL, requestHeaders, text);
//        try{
//            ObjectMapper objectMapper = new ObjectMapper();
//            JsonNode jsonNode = objectMapper.readTree(translatedText);
//
//            // "translatedText" 필드의 값을 추출
//            String translated = jsonNode.path("message").path("result").path("translatedText").asText();
//            System.out.println(translated);
//            model.addAttribute("translated",translated);
//        } catch (IOException e){
//
//        }
//
//        return "3.html";
//    }
//
//    private static String post(String apiUrl, Map<String, String> requestHeaders, String text){
//        HttpURLConnection con = connect(apiUrl);
//        String postParams = "source=ko&target=en&text=" + text; //원본언어: 한국어 (ko) -> 목적언어: 영어 (en)
//        try {
//            con.setRequestMethod("POST");
//            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
//                con.setRequestProperty(header.getKey(), header.getValue());
//            }
//
//            con.setDoOutput(true);
//            try (DataOutputStream wr = new DataOutputStream(con.getOutputStream())) {
//                wr.write(postParams.getBytes());
//                wr.flush();
//            }
//
//            int responseCode = con.getResponseCode();
//            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 응답
//                return readBody(con.getInputStream());
//            } else {  // 에러 응답
//                return readBody(con.getErrorStream());
//            }
//        } catch (IOException e) {
//            throw new RuntimeException("API 요청과 응답 실패", e);
//        } finally {
//            con.disconnect();
//        }
//    }
//
//    private static HttpURLConnection connect(String apiUrl){
//        try {
//            URL url = new URL(apiUrl);
//            return (HttpURLConnection)url.openConnection();
//        } catch (MalformedURLException e) {
//            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
//        } catch (IOException e) {
//            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
//        }
//    }
//
//    private static String readBody(InputStream body){
//        InputStreamReader streamReader = new InputStreamReader(body);
//
//        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
//            StringBuilder responseBody = new StringBuilder();
//
//            String line;
//            while ((line = lineReader.readLine()) != null) {
//                responseBody.append(line);
//            }
//
//            return responseBody.toString();
//        } catch (IOException e) {
//            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
//        }
//    }
//}
