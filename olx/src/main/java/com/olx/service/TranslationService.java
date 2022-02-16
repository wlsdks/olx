package com.olx.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class TranslationService {
	public String papagoTranslate(String inputText) {
        String clientId = "575290nbji";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "rWNPF6CDyPqhPuxsDAbxTeJt8Ah6bOrqEMsj3FFQ";//애플리케이션 클라이언트 시크릿값";
        String resultText = "";
        try {
            String text = URLEncoder.encode(inputText, "UTF-8");
            String apiURL = "https://naveropenapi.apigw.ntruss.com/nmt/v1/translation";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
            // post request
            String postParams = "source=en&target=ko&text=" + text;
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 오류 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            //System.out.println(response.toString());
            resultText = jsonToVoList(response.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return resultText;
    }
	
	
	// 번역 결과만 가져오기
	//detection_names , detection_boxes
	public String jsonToVoList(String jsonResultStr){
		String resultText = "";
		
		try {
			
			JSONObject jsonObj = new JSONObject(jsonResultStr);
			JSONObject tempObj = (JSONObject) jsonObj.get("message");
			JSONObject resultObj = (JSONObject) tempObj.get("result");
			resultText = (String)resultObj.get("translatedText");
			System.out.println(resultText);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return resultText;
	}
}
