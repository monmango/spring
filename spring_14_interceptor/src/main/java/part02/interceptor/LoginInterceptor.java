package part02.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	public LoginInterceptor() {
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception { 
		super.postHandle(request, response, handler, modelAndView);
		System.out.println("Login postHande...");
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("Login afterCompletion...");
		super.afterCompletion(request, response, handler, ex);
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("Login preHandle...");
		String uri = request.getRequestURI();
		//uri:.myinter/nticeList.do
		uri = uri.substring(uri.lastIndexOf("/") + 1);
		//uri:noticeList.do
		System.out.println("uri: " + uri);
			
		HttpSession session = request.getSession();
		
		//로그인 상태가 아니면..
		if(session.getAttribute("chk") == null) {
			response.sendRedirect("login.do?returnUrl=" + uri);
			return false;
		}else {
			return true;
		}
	}
}// end class
