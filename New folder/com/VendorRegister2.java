package com;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
/**
 * Servlet implementation class VendorRegister2
 */
@WebServlet("/VendorRegister2")
@MultipartConfig(maxFileSize = 16177215)
public class VendorRegister2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VendorRegister2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
                //out.println("adasd");
                String Aadhar = request.getParameter("Aadhar");
                String FullName = request.getParameter("FullName");
                String Email = request.getParameter("Email");
                //System.out.println("1");
                String Contact = request.getParameter("Contact");
                String Password = request.getParameter("Password");
                Part filePart = request.getPart("profile_picture");
                if (filePart != null) {
                    // prints out some information for debugging
                    System.out.println(filePart.getName());
                    System.out.println(filePart.getSize());
                    System.out.println(filePart.getContentType());
                     
                    // obtains input stream of the upload file
              
                  //  out.println(filePart.getName());
                   FileInputStream fin = (FileInputStream)filePart.getInputStream();
                   //int res = new Queries().InsertImage(id, fin,filePart);
              
                
                int res= new Queries().InsertintoVendorRegister(Aadhar, FullName, Email, Contact, Password,fin,filePart);
                if(res!=0)
                response.sendRedirect("VendorLogin.jsp");
                else
                	response.sendRedirect("VendorRegisterFailure.jsp");
    
            
            
            // Statement st = con.createStatement();
		  
		  
		 // pre.setString(1,"test");
		//out.println(filePart.getSize();
		//  pre.setBinaryStream(2,(InputStream)fin,(int)filePart.getSize());
		 // pre.executeUpdate();
//		out.println("Successfully inserted the file into the database!");
//
//		  pre.close();
		  
//                   ResultSet rs = st.executeQuery("select image from image");
//			int i = 0;
//			while (rs.next()) {
//				InputStream in = rs.getBinaryStream(1);
//				OutputStream f = new FileOutputStream(new File("D://test"+i+".png"));
//				i++;
//				int c = 0;
//				while ((c = in.read()) > -1) {
//					f.write(c);
//				}
//				f.close();
//				in.close();
//			}
//                  con.close(); 
//                  
		}
        }
        
                catch (Exception e1){
                
			//out.println(e1.getMessage());
			e1.printStackTrace();
		}
    }
        
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
