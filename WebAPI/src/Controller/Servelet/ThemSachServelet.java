package Controller.Servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BooksDao;

/**
 * Servlet implementation class ThemSachServelet
 */
@WebServlet("/View/themsachservelet")
public class ThemSachServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemSachServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int book_id = Integer.parseInt(request.getParameter("book_id"));
		int category_id = Integer.parseInt(request.getParameter("category_id"));
		String name = request.getParameter("name");
		float price = Float.parseFloat(request.getParameter("price"));
		int save = Integer.parseInt(request.getParameter("save"));
		String author = request.getParameter("author");
		String overview = request.getParameter("overview");
		String image = request.getParameter("image");
		boolean flash_sale = Boolean.parseBoolean(request.getParameter("flash_sale"));
		String publisher = request.getParameter("publisher");
		String publish_date = request.getParameter("publish_date");
		int page_count = Integer.parseInt(request.getParameter("page_count"));
		String dimensions = request.getParameter("dimensions");
		float shipping_weight = Float.parseFloat(request.getParameter("shipping_weight"));
		String stock = request.getParameter("stock");
		String book_format = request.getParameter("book_format");
		boolean is_trending = Boolean.parseBoolean(request.getParameter("is_trending"));
		
		String thongbao = BooksDao.AddBooks(book_id, category_id, name, price, save, author, overview,
				image, flash_sale, publisher, publish_date, page_count, dimensions, shipping_weight, stock, book_format, is_trending);
		
		request.setAttribute("thongbao", thongbao);
		request.getRequestDispatcher("dsbooksservelet").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
