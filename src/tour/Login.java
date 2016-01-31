package tour;






import java.sql.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Statement;
/**
 * Servlet implementation class login
 */
@WebServlet("/afterLogin")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user=request.getParameter("username");
		String password=request.getParameter("password");
		try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
		}catch(ClassNotFoundException e){
			System.out.println("error");
		}
		try{
			Connection conn = DriverManager.getConnection("jdbc:db2://localhost:50000/project","ADMIN","piyushgarg1594.");
			Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet rs=null;
		//	System.out.println("fdfdgs");
			  int i=0;
		    String sql = "select * from customer where username='"+user+"'"+"and password='"+password+"'";
		    rs= stmt.executeQuery(sql);
		  
		    /*if(SignUp.hm.containsKey(user)){
		    	response.sendRedirect("welcome.jsp");
		    }
		    else{
		    	response.sendRedirect("wrong.jsp");
		    }	
		    */
		    while(rs.next()){
		    	System.out.println(rs.getString("USERNAME"));
		    	  HttpSession session=request.getSession();
		    	session.setAttribute("username",rs.getString("USERNAME"));
		    	session.setAttribute("password",rs.getString("password"));
		    	i=1;
		    }
		    if(i==0){
		    	response.sendRedirect("Wrong.jsp");
		    }
		    else{
		    	response.sendRedirect("Home.jsp");
		    }
		}catch(SQLException r){
		 	r.printStackTrace();
		}
	}

}
