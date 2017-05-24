package shopping;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShoppingServlet2
 */
@WebServlet("/ShoppingServlet2")
public class ShoppingServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		 String category = (String) request.getParameter("category");
		 System.out.println(category);

         if(category!=null){
        	Shopping shopping = new Shopping();
         	ArrayList<ItemBean> item_list;
         	System.out.println("CATEGORY"+category);
         	item_list = shopping.getCategory(category);
         	System.out.println("試験2"+Arrays.asList(item_list));
         	request.setAttribute("itemList2", item_list);
         	RequestDispatcher rd = request.getRequestDispatcher("./jsp/itemList category.jsp");
            rd.forward(request, response);

         }
	}

}
