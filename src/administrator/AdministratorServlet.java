package administrator;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import shopping.ShoppingDao;

/**
 * Servlet implementation class AdministratorServlet
 */
@WebServlet("/AdministratorServlet")
@MultipartConfig(location="/tmp", maxFileSize=1048576)
public class AdministratorServlet extends HttpServlet {
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
		String button = request.getParameter("button");
		Part part = request.getPart("file");
        String name = this.getFileName(part);
        System.out.println(name);
        	part.write(getServletContext().getRealPath("/WEB-INF/uploaded") + "/" + name);


		String[] data;
		try{

			File f = new File(getServletContext().getRealPath("/WEB-INF/uploaded") + "/" + name);
			System.out.println("putprice"+(getServletContext().getRealPath("/WEB-INF/uploaded") + "/" + name));
			BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f),"SJIS"));
			String line; //1行ずつ読み込む
			while ((line = br.readLine()) != null) {


                String[] columns = line.split(",",-1);
                outside:try{
                for (int j = 0; j < columns.length; j++) {
                    System.out.println(j + " : " + columns[j]);
                    if (columns[j].matches(".*"+"商品"+".*")) {
						break outside;
					}
                }

                String itemID = columns[0];
                System.out.println(itemID);
                String itemName = columns[1];
                System.out.println(itemName);
                String itemImage = columns[2];
                System.out.println(itemImage);
                int item_price = Integer.parseInt(columns[3]);
                System.out.println(item_price);
                String itemCategory = columns[4];
                System.out.println(itemCategory);
                int itemStock = Integer.parseInt(columns[5]);
                System.out.println(itemStock);
                System.out.println("");
                ShoppingDao dao = new ShoppingDao();
                if (button.equals("登録")) {
                	dao.insertItem(itemID,itemName,itemImage,item_price,itemCategory);
					dao.insertItemStock(itemID, itemStock);
				}
				if (button.equals("在庫更新")) {
					dao.updateQuantity(itemID, itemStock);
				}
				if (button.equals("すべて更新")) {
					dao.updateAll(itemID, itemName, itemImage, item_price, itemCategory, itemStock);
				}
				} catch (SQLException e1) {
					// TODO 自動生成された catch ブロック
					continue;
				}

            }
			RequestDispatcher rd = request.getRequestDispatcher("jsp/itemRegisterFinish.jsp");
	        rd.forward(request, response);

			System.out.println("line:"+line);




		}catch (IOException e1){
			System.out.println(e1);
		}
  }
	 private String getFileName(Part part) {
	        String name = null;
	        for (String dispotion : part.getHeader("Content-Disposition").split(";")) {
	            if (dispotion.trim().startsWith("filename")) {
	                name = dispotion.substring(dispotion.indexOf("=") + 1).replace("\"", "").trim();
	                name = name.substring(name.lastIndexOf("\\") + 1);
	                break;
	            }
	        }
	        return name;
	    }

}
