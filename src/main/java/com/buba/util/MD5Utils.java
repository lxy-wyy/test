package com.buba.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {
	  /**
     * ʹ��md5���㷨���м���
     */
    public static String md5(String PWD) {
       byte[] secretBytes = null;
       try {
    	  // MessageDigest ��ΪӦ�ó����ṩ��ϢժҪ�㷨�Ĺ��ܣ��� MD5 �� SHA �㷨��
    	   //��ϢժҪ�ǰ�ȫ�ĵ����ϣ�����������������С�����ݣ�������̶����ȵĹ�ϣֵ��
    	   
    	   
    	   //MessageDigest.getInstance:����ʵ��ָ��ժҪ�㷨�� MessageDigest ����
    	   //md5 �������㷨������
		secretBytes = MessageDigest.getInstance("md5").digest(PWD.getBytes());
       } catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
       }
       String md5code=new BigInteger(1,secretBytes).toString(16);//16��������
        // �����������δ��32λ����Ҫǰ�油0(��д�ɲ�д)
        for (int i=0;i<32-md5code.length();i++) {
            md5code="0"+md5code;
        }
        return md5code;
    }
    
}

