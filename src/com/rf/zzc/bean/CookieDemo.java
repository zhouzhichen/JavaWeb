package com.rf.zzc.bean;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieDemo extends HttpServlet {
	/*public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ���÷������UTF-8�������
		response.setCharacterEncoding("UTF-8");
		// �����������UTF-8������н���,���������������
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			out.write("���ϴη���ʱ���ǣ�");
			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie = cookies[i];
				if (cookie.getName().equals("lastAccessTime")) {
					long lastAccessTime = Long.parseLong(cookie.getValue());
					Date date = new Date(lastAccessTime);
					out.write(date.toLocaleString());
				}
			}
		} else {
			out.write("��������һ�η��ʱ�վ!");
		}
		Cookie cookie = new Cookie("lastAccessTime", System.currentTimeMillis() + "");
		response.addCookie(cookie);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
*/
}
