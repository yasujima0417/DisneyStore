package shopping;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		request.setCharacterEncoding("UTF-8");
		String colum = request.getParameter("colum");
        String sort = request.getParameter("sort");
        String submit = request.getParameter("submit123");
        HttpSession session = request.getSession();
        ArrayList<ItemBean> itemList = (ArrayList<ItemBean>) session.getAttribute("itemList");
        if ((session.getAttribute("category")).equals("on")) {
        	System.out.println("ONです！");
			itemList = (ArrayList<ItemBean>)session.getAttribute("itemList2");
		}
        System.out.println(itemList);
        if (submit.equals("並び替え")) {
        	if (colum.equals("price")&&sort.equals("up")) {
        		System.out.println("priceup");
        		Collections.sort(itemList, new PriceUpComparator());
			}
        	if (colum.equals("price")&&sort.equals("down")) {
        		System.out.println("pricedown");
        		Collections.sort(itemList, new PriceDownComparator());
			}
        	if (colum.equals("id")&&sort.equals("up")) {
        		System.out.println("idup");
        		Collections.sort(itemList, new IdUpComparator());
			}
        	if (colum.equals("id")&&sort.equals("down")) {
        		System.out.println("iddown");
        		Collections.sort(itemList, new IdDownComparator());
			}
        	if (colum.equals("name")&&sort.equals("up")) {
        		System.out.println("nameup");
        		Collections.sort(itemList, new NameUpComparator());
			}
        	if (colum.equals("name")&&sort.equals("down")) {
        		System.out.println("namedown");
        		Collections.sort(itemList, new NameDownComparator());
			}
        	if (colum.equals("quantity")&&sort.equals("up")) {
        		System.out.println("quantityup");
        		Collections.sort(itemList, new QuantityUpComparator());
			}
        	if (colum.equals("quantity")&&sort.equals("down")) {
        		System.out.println("quantitydown");
        		Collections.sort(itemList, new QuantityDownComparator());
			}
        	session.setAttribute("itemList2", itemList);
        	RequestDispatcher rd = request.getRequestDispatcher("./jsp/itemList category.jsp");
        	rd.forward(request, response);

		}

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
         	HttpSession session = request.getSession();
         	session.setAttribute("category", "on");
         	session.setAttribute("itemList2", item_list);
         	RequestDispatcher rd = request.getRequestDispatcher("./jsp/itemList category.jsp");
            rd.forward(request, response);

         }
	}

}
