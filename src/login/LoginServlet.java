package login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * コンストラクタ.
     */
    public LoginServlet() {
        super();
    }

    /**
     * Handles the HTTP GET method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String para = request.getParameter("submit");

        HttpSession session = request.getSession();

        if (para.equals("logout")) {
            // ④ クリックされたボタンが「logout」の場合はログアウト処理（セッションの破棄）を実施
            session.removeAttribute("login_state");
            session.removeAttribute("login_user_bean");
            response.sendRedirect("./");
        }

    }

    /**
     * Handles the HTTP POST method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String btn = request.getParameter("submit123");
        System.out.println(btn);

        HttpSession session = request.getSession();
        RequestDispatcher rd;
        //String category;
        /*session.setAttribute("category", null);
        if (btn.equals("ファッション")||btn.equals("雑貨")||btn.equals("ぬいぐるみ")) {
        	category=btn;
        	session.setAttribute("category", category);
			rd=request.getRequestDispatcher("ShoppingServlet");
			rd.forward(request, response);
		}*/

        outside2:if (btn.equals("登録")) {
        	String userId = request.getParameter("userId");
            System.out.println(userId);
            String userPassword = request.getParameter("userPassword");
            System.out.println(userPassword);
            String userName = request.getParameter("userName");
            System.out.println(userName);
            int userOld = Integer.parseInt(request.getParameter("userOld"));
            System.out.println(userOld);

        	LoginDB login = new LoginDB();
        	try {
				login.insertUserData(userId,userPassword,userName,userOld);
			} catch (SQLException e) {
				// TODO 自動生成された catch ブロック
				session.setAttribute("error", "on");
				rd=request.getRequestDispatcher("user_registration.jsp");
				rd.forward(request, response);
				break outside2;
			}
        	rd=request.getRequestDispatcher("./");
        	rd.forward(request, response);
        }else {


        outside:if (btn.equals("ログイン")) {
            // ③-1-1 ログイン画面で入力されたIDとパスワードを取得
            String id = request.getParameter("id");
            String pass = request.getParameter("pass");
            System.out.println("ここ"+id);
            System.out.println("こっち"+pass);
            if (id.equals("123")&&pass.equals("123")) {
				rd=request.getRequestDispatcher("itemRegister.jsp");
				rd.forward(request, response);
				break outside;
			}


            // ③-1-2 ユーザ情報をモデルに格納するために指示
            // ③-1-3 ログイン処理クラスをインスタンス化
            LoginDB login = new LoginDB();

            // ③-1-4 ID処理クラスに②-1-1で取得したIDを渡してユーザ情報をモデルに格納
            LoginUserBean bean = login.getUserData(id, pass);

            // ③-2 モデルの情報を判定
            if (bean != null) {
                // ③-2-1 モデルの情報が存在する場合はsetAttributeメソッドを使ってセッションに情報をセット
                // モデル（ユーザ情報）
                session.setAttribute("login_user_bean", bean);
                // ログイン状態
                session.setAttribute("login_state", "login");

                // ③-2-2 つぎに表示させる画面（ビュー）を指定
                rd = request.getRequestDispatcher("./ShoppingServlet");
            } else {
                // ③-3 モデルの情報が存在しない（IDに紐づくユーザ情報がない）場合
                // ③-3-1 つぎに表示させる画面（ビュー）を指定
                rd = request.getRequestDispatcher("./jsp/loginFailed.jsp");
            }

            rd.forward(request, response);

        } else if (btn.equals("ログアウト")) {
            // ④ クリックされたボタンが「logout」の場合はログアウト処理（セッションの破棄）を実施
            session.removeAttribute("login_state");
            session.removeAttribute("login_user_bean");
            response.sendRedirect("./");
        }

        }
    }
}