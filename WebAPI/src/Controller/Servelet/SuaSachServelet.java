package Controller.Servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import DAO.*;
import Model.*;

/**
 * Servlet implementation class SuaSachServelet
 */
@WebServlet("/View/suasachservelet")
public class SuaSachServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaSachServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int book_id = Integer.parseInt(request.getParameter("book_id"));
		String name = request.getParameter("name");
		float price = Float.parseFloat(request.getParameter("price"));
		String author = request.getParameter("author");
		String image = request.getParameter("image");
		int page_count = Integer.parseInt(request.getParameter("page_count"));
		String book_format = request.getParameter("book_format");
		
		String thongbao = BooksDao.UpdateBooks(book_id, name, price, author, image, page_count, book_format);
		
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
