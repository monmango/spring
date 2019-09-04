package part01.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


/*
 * prehandle() - 컨트롤러에 들어가기전 접근
 * postHandle() - 컨트롤러 접근 후 view 페이지 접근전
 * afterCompletion() - 컨트롤러와 view 페이지접근
 * 
 */
public class SamlpeInterceptor extends HandlerInterceptorAdapter{

	public SamlpeInterceptor() {}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
		System.out.println("postHandle...");
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		super.afterCompletion(request, response, handler, ex);
		System.out.println("afterCompletion...");
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("preHandle...");
		return true;
	}
}// end class
