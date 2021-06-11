package DAO;

import Connection.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import Model.*;

import javax.servlet.ServletException;

public class BooksDao {

	public static List<Books> GetBooks() throws ServletException, IOException
	{
		List<Books> results = new ArrayList<Books>();
		Connection c = null;
		try
		{
			c = DBConnection.getConn();
			String sql = "select * from  book_store.books";
			PreparedStatement prstm = c.prepareStatement(sql);
			ResultSet rs = prstm.executeQuery();
			while(rs.next())
			{
				Books entry = new Books(
						rs.getInt("book_id"),
						rs.getInt("category_id"),
						rs.getString("name"),
						rs.getFloat("price"),
						rs.getInt("save"),
						rs.getString("author"),
						rs.getString("overview"),
						rs.getString("image"),
						rs.getBoolean("flash_sale"),
						rs.getString("publisher"),
						rs.getString("publish_date"),
						rs.getInt("page_count"),
						rs.getString("dimensions"),
						rs.getFloat("shipping_weight"),
						rs.getString("stock"),
						rs.getString("book_format"),
						rs.getBoolean("is_trending")
						);
				results.add(entry);
				
			}
			
			
			if(c != null)
				c.close();
			return results;
		}
		catch(SQLException e)
		{
			return null;
		}
		
	}
	
	public static String UpdateBooks(int book_id,String name, float price, String author, 
			String image, int page_count, String book_format) throws ServletException, IOException
	{
		Connection c = null;
		String thongBao = null;
		try
		{
			c = DBConnection.getConn();
			String sql = "update book_store.books \r\n" + 
					"set name = ?, price = ?, author = ?, image = ? , page_count = ?, book_format = ?\r\n" + 
					"where book_id = ?;";
			PreparedStatement prstm = c.prepareStatement(sql);
			prstm.setString(1, name);
			prstm.setFloat(2, price);
			prstm.setString(3, author);
			prstm.setString(4, image);
			prstm.setInt(5, page_count);
			prstm.setString(6, book_format);
			prstm.setInt(7, book_id);
			prstm.executeUpdate();
			thongBao = "succeeded";
			if(c != null)
				c.close();
			return thongBao;
		}
		catch(SQLException e)
		{
			thongBao = " failed ";
			thongBao += "lỗi: "+e.toString();
			return thongBao;
		}
	}
	
	public static String DeleteBooks(int book_id) throws ServletException, IOException
	{
		Connection c = null;
		String thongBao = null;
		try
		{
			c = DBConnection.getConn();
			String sql = "delete from book_store.books where book_id = ?";
			PreparedStatement prstm = c.prepareStatement(sql);
			prstm.setInt(1, book_id);
			prstm.executeUpdate();
			thongBao = "succeeded";
			if(c != null)
				c.close();
			return thongBao;
		}
		catch(SQLException e)
		{
			thongBao = " failed ";
			thongBao += "lỗi: "+e.toString();
			return thongBao;
		}
	}
	
	
	public static String AddBooks(int book_id, int category_id, String name, float price, int save, String author, String overview, String image,
			boolean flash_sale, String publisher, String publish_date, int page_count, String dimensions,
			float shipping_weight, String stock, String book_format, boolean is_trending) throws ServletException, IOException
	{
		Connection c = null;
		String thongBao = null;
		try
		{
			c = DBConnection.getConn();
			String sql = "insert into book_store.books values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement prstm = c.prepareStatement(sql);
			prstm.setInt(1, book_id);
			prstm.setInt(2, category_id);
			prstm.setString(3, name);
			prstm.setFloat(4, price);
			prstm.setInt(5, save);
			prstm.setString(6, author);
			prstm.setString(7, overview);
			prstm.setString(8, image);
			prstm.setBoolean(9, flash_sale);
			prstm.setString(10, publisher);
			prstm.setString(11, publish_date);
			prstm.setInt(12, page_count);
			prstm.setString(13, dimensions);
			prstm.setFloat(14, shipping_weight);
			prstm.setString(15, stock);
			prstm.setString(16, book_format);
			prstm.setBoolean(17, is_trending);
			prstm.executeUpdate();
			thongBao = "succeeded";
			if(c != null)
				c.close();
			return thongBao;
		}
		catch(SQLException e)
		{
			thongBao = " failed ";
			thongBao += "lỗi: "+e.toString();
			return thongBao;
		}
	}
	
	
}
