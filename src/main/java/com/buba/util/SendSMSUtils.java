package com.buba.util;

import com.cloopen.rest.sdk.CCPRestSmsSDK;

import java.util.HashMap;

public class SendSMSUtils {
   public static boolean sendMSM(String phone,String code){
	   HashMap<String, Object> result = null;

	   //初始化SDK
	   CCPRestSmsSDK restAPI = new CCPRestSmsSDK();
	   // 初始化服务器地址和端口
  
	   restAPI.init("app.cloopen.com", "8883");//https://app.cloopen.com:8883
	   //设置业务信息   
	// 初始化主账号名称和主账号令牌，
	   restAPI.setAccount("8aaf07086812057f01683137d0fe1059", "83eddc7784924faa81cc4f720b2d0e2d");//
	   restAPI.setAppId("8aaf07086812057f01683137d1581060");
	   //请使用管理控制台中已创建应用的APPID。则13800000000手机号收到的短信内容是：【云通讯】您使用的是云通讯短信模板，您的验证码是6532，请于5分钟内
	   result = restAPI.sendTemplateSMS(phone,"1" ,new String[]{code,"5"});
	   //获取发送结果
	   if("000000".equals(result.get("statusCode"))){		  
		   return true;
	   }else{		  
		   return false;
	   }
   }

}
