package ch17_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletEx03")
public class ServletEx03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletEx03() {
    	super();
    	System.out.println("ServletEx03()기본생성자 호출");
    }

    
    //HttpServlet의 부모클래스인 GenericServlet클래스에 있는 메서드
    //Called by the servlet container to indicate to a servlet that the servlet is being taken out of service.
    //서블릿 컨테이너가 서블릿을 호출하여 서블릿이 서비스를 중단하고 있음을 표시합니다.
    @Override
	public void destroy() {
		super.destroy();
		System.out.println("destroy()호출 : 서블릿이 소멸되면서 해야할 작업이 있다면...");
	}

    //HttpServlet의 부모클래스인 GenericServlet클래스에 있는 메서드
    //A convenience method which can be overridden so that there's no need to call super.init(config).
    //super.init(config)를 호출할 필요가 없도록 재정의할 수 있는 편리한 방법입니다.
	@Override
	public void init() throws ServletException {
		super.init();
		System.out.println("init()호출: 환경설정과 같은 필요한 작업 수행");
	}


	//get방식요청시 자동호출되는 서비스메서드
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		    System.out.println("doGet()호출");//콘솔출력
		        
		    response.getWriter().append("Served at: ").append(request.getContextPath());
		    
		    //위의 코드를 아래와 같이 작성 할 수 있다
	/*	    PrintWriter  out =  response.getWriter();
		    out = out.append("Served at: ");
		    String cp =request.getContextPath();
		    out.append(cp);*/
	}
	
	//post방식요청시 자동호출되는 서비스메서드
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		     System.out.println("doPost호출");//콘솔출력
		doGet(request, response);
	}

}
