
package com;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.io.*;
//import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


//import javax.websocket.Decoder.BinaryStream;

//import static Connector.con;
public class Queries {
	 String getDetails[];
	// static int id = 100;
public Queries() {
	new Connector();
	// TODO Auto-generated constructor stub
}
	 public String aadhar;
	 public String firstName;
	 public String lastName;
	 public String emailToBeReturned;
    public int InsertintoCustomerRegister(String firstname, String lastname, String contact, String email, String password)
{
PreparedStatement pst;
	
	try {
		pst = Connector.con.prepareStatement("insert into customer_register values(?,?,?,?,?)");
		pst.setString(1, firstname);
		pst.setString(2, lastname);
		pst.setString(3, contact);
		pst.setString(4, email);
		pst.setString(5, password);
		
		  pst.executeUpdate();
	//	out.println("Successfully inserted the file into the database!");

		  

		return 1;
	} catch (SQLException e) {
		
		e.printStackTrace();
		return 0;
	}

	//return 0;
}

	public int InsertintoCustomerRequests(String email,String count, String preference, String budget, String date,String equipment,String cuisineList){
PreparedStatement pst;
	
	try {
		pst = Connector.con.prepareStatement("insert into customer_requests values(?,?,?,?,?,?,?)");
		pst.setString(1, email);
		pst.setString(2, count);
		pst.setString(3, preference);
		pst.setString(4, budget);
		pst.setString(5, date);
		pst.setString(6,equipment);
		pst.setString(7, cuisineList);
		  pst.executeUpdate();
	//	out.println("Successfully inserted the file into the database!");

		  

		return 1;
	} catch (SQLException e) {
		
		e.printStackTrace();
		return 0;
	}
	
}

	public boolean CustomerLogin(String email, String password){
	try {
		PreparedStatement pst = Connector.con.prepareStatement("select * from customer_register where email=? and password=?");
		pst.setString(1, email);
		pst.setString(2, password);
		ResultSet rs = pst.executeQuery();
		
		if(rs.next())
		{
			firstName = rs.getString(1);
			lastName = rs.getString(2);
			emailToBeReturned = rs.getString(4);
			return true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

		return false ;


}

	public int InsertintoVendorRegister(String Aadhar,String FullName,String Email,String Contact,String Password,InputStream fin,Part filePart){
	
	PreparedStatement pst;
	
	try {
		pst = Connector.con.prepareStatement("insert into vendor_register values(?,?,?,?,?,?)");
		pst.setString(1, Aadhar);
		pst.setString(2, FullName);
		pst.setString(3, Email);
		pst.setString(4, Contact);
		pst.setString(5, Password);
		pst.setBinaryStream(6,(InputStream)fin,(int)filePart.getSize());
		  pst.executeUpdate();
	//	out.println("Successfully inserted the file into the database!");

		  

		return 1;
	} catch (SQLException e) {
		
		e.printStackTrace();
		return 0;
	}
	//return 0;

}


	public int InsertintoVendorDetails(int id,String aadhar,String ownername,String businessname, String address, int experience,InputStream fin,Part filePart)
	{
		int res = 0;
		System.out.println("okayokay");
		try {
			//id++;
			PreparedStatement pst = Connector.con.prepareStatement("insert into vendor_details values(?,?,?,?,?,?,?)");
			pst.setInt(1, id);
			pst.setString(2, aadhar);
			pst.setString(3, ownername);
			pst.setString(4, businessname);
			pst.setString(5, address);
			pst.setInt(6, experience);
			pst.setBinaryStream(7,(InputStream)fin,(int)filePart.getSize());
			
			//pst.setString(7, address);
			res = pst.executeUpdate();
			return res;
	} 		catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
	}

		return res;
	}

	public String[][] naturalJoin(String aadhar)
	{
		try {
			//id++;
			PreparedStatement pst = 
					Connector.con.prepareStatement("select first_name,last_name,contact,email from customer_register where email in(select distinct email from customer_requests c natural join vendor_catering vc where c.guests = vc.no_of_guests and c.preference = vc.non_veg and c.equipment = vc.equipment)");
			
			//pst.setString(7, address);
			ResultSet rs  = pst.executeQuery();
			int j=0;
			
			while(rs.next())
			{
				System.out.println(rs.getString(2));
				j++;
			}
			
			String row[][] =new String[j][4];
			rs.beforeFirst();
			
				for(int i = 0; rs.next();i++)
				{
					for( j =0;j<4;j++)
					{
						System.out.println("tt1");
						row[i][j] = rs.getString(j+1);
						System.out.println("tt2");
					}
					//	System.out.println(i);
//					row[i][0] = rs.getString(1);
//					row[i][1] = rs.getString(2);
//					row[i][2] = rs.getString(3);
//					row[i][3] = rs.getString(4);
				}
				
				
			
			return row;
		
}
catch(Exception e)
{
	e.printStackTrace();
	return null;
}
		
	}
	
	
	
	public String[][] SearchViaHomePage(String email)
	{
		PreparedStatement pst;
		
		//String row[][] = new String[][];
		//row="zero";
		try {
			pst = Connector.con.prepareStatement("select aadhar,owner_name,venture_name,address,experience from vendor_details where aadhar in (select aadhar from vendor_catering where(no_of_guests,non_veg,equipment) in(select guests,preference,equipment from customer_requests where email=?))");
			pst.setString(1,email);
			ResultSet rs = pst.executeQuery();
		//	System.out.println("Id" + "/t" + "Name" + "/t" + "salary");
			int j=0;
			
			while(rs.next())
			{
				System.out.println(rs.getString(2));
				j++;
			}
			
			String row[][] =new String[j][5];
			rs.beforeFirst();
			
				for(int i = 0; rs.next();i++)
				{
					for( j =0;j<5;j++)
					{
						System.out.println("tt1");
						row[i][j] = rs.getString(j+1);
						System.out.println("tt2");
					}
					//	System.out.println(i);
//					row[i][0] = rs.getString(1);
//					row[i][1] = rs.getString(2);
//					row[i][2] = rs.getString(3);
//					row[i][3] = rs.getString(4);
				}
				
				
			
			return row;
		
}
catch(Exception e)
{
	e.printStackTrace();
	return null;
}
		
	}
	public int InsertintoCatering(String aadhar,String guests, String category, String equipment)
	{
		//id++;
		int res = 0;
		System.out.println("okay");
		try {
			//id++;
			PreparedStatement pst = Connector.con.prepareStatement("insert into vendor_catering(aadhar,no_of_guests,non_veg,equipment) values(?,?,?,?)");
			pst.setString(1, aadhar);
			pst.setString(2, guests);
			pst.setString(3, category);
			pst.setString(4, equipment);
			res = pst.executeUpdate();
			return res;
	} 		catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
	}
	 return res;
	
}
	public int InsertImage(int id, InputStream fin, Part filePart)
	{
		try {
			PreparedStatement pre =
					  Connector.con.prepareStatement("insert into test_blob values(?,?)");
					 
			//id++;
			pre.setInt(1,id);
		//	out.println(filePart.getSize());
			  pre.setBinaryStream(2,(InputStream)fin,(int)filePart.getSize());
			  pre.executeUpdate();
		//	out.println("Successfully inserted the file into the database!");

			  pre.close();

		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
	}
		return 0;
	}

	public int Delete(String email)
	{
		PreparedStatement pst;
		try {
			pst = Connector.con.prepareStatement("delete from customer_requests where email= ?");
			pst.setString(1,email);
			return pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	
	
	}
	
	public int Update(int id, String name, float salary)
	{
		try {
			PreparedStatement pst = Connector.con.prepareStatement("update employee set name = ?, salary =? where id=? ");
			pst.setString(1, name);
			pst.setFloat(2, salary);
			pst.setInt(3, id);
			return pst.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return 0;
	
	}
	
	
	
	
	public String Search(String email)
	{
		PreparedStatement pst;
		String row = new String();
		row="zero";
		try {
			pst = Connector.con.prepareStatement("select guests,preference,budget,date,equipment,cuisineList from customer_requests where email = ?");
			pst.setString(1,email);
			ResultSet rs = pst.executeQuery();
		//	System.out.println("Id" + "/t" + "Name" + "/t" + "salary");
			while(rs.next())
			{
				//System.out.println(rs.getString(1) + "/t" + rs.getString(2) + "/t" + rs.getString(3));
				row=rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6);
			}
			return row;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
		
		
		
	}
	public int InsertintoCustomerMessageBox(String email,String message,String aadhar)
	{
			
		int res = 0;
		System.out.println("message inserted");
		try {
			//id++;
			PreparedStatement pst = Connector.con.prepareStatement("insert into customer_message_box(email,message,aadhar) values(?,?,?)");
			pst.setString(1, email);
			pst.setString(2, message);
			pst.setString(3, aadhar);
			//pst.setString(4, equipment);
			res = pst.executeUpdate();
			return res;
	} 		catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
	}
	 return res;

	}
	public int InsertintoVendorMessageBox(String email, String message,String aadhar,String vendors_message)
	{
		int res = 0;
		System.out.println("message inserted");
		try {
			//id++;
			PreparedStatement pst = Connector.con.prepareStatement("insert into vendor_message_box(email,message,aadhar,vendors_message) values(?,?,?,?)");
			pst.setString(1, email);
			pst.setString(2, message);
			pst.setString(3, aadhar);
			pst.setString(4, vendors_message);
			//pst.setString(4, equipment);
			res = pst.executeUpdate();
			return res;
	} 		catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
	}
	 return res;

		
	}
	
	public String[][] ShowMessagestoVendor(String aadhar){
		try {
			PreparedStatement pst = Connector.con.prepareStatement("select aadhar,first_name,last_name,message,vendors_message from customer_register cd natural join vendor_message_box cmb where cd.email = cmb.email and aadhar = ? ");
			
				pst.setString(1, aadhar);
					System.out.println("tt0");
				ResultSet rs = pst.executeQuery();
				int j=0;
				
				while(rs.next())
				{
					System.out.println(rs.getString(1));
				//	aadhar = rs.getString(1);
					j++;
				}
				
				String row[][] =new String[j][5];
				rs.beforeFirst();
				
					for(int i = 0; rs.next();i++)
					{
						for( j =0;j<5;j++)
						{
							System.out.println("tt1");
							row[i][j] = rs.getString(j+1);
							System.out.println("tt2");
						}
						//	System.out.println(i);
//						row[i][0] = rs.getString(1);
//						row[i][1] = rs.getString(2);
//						row[i][2] = rs.getString(3);
//						row[i][3] = rs.getString(4);
					}
					
					
				
				return row;
			
	}
	catch(Exception e)
	{
		//e.printStackTrace();
		return null;
	}

		

	}
	public String[][] ShowMessagestoCustomer(String email){
		try {
			PreparedStatement pst = Connector.con.prepareStatement("select aadhar,venture_name,message from vendor_details vd natural join customer_message_box cmb where vd.aadhar = cmb.aadhar and email = ? ");
			
				pst.setString(1, email);
				System.out.println("tt0");
				ResultSet rs = pst.executeQuery();
				int j=0;
				
				while(rs.next())
				{
					System.out.println(rs.getString(1));
				//	aadhar = rs.getString(1);
					j++;
				}
				
				String row[][] =new String[j][3];
				rs.beforeFirst();
				
					for(int i = 0; rs.next();i++)
					{
						for( j =0;j<3;j++)
						{
							System.out.println("tt1");
							row[i][j] = rs.getString(j+1);
							System.out.println("tt2");
						}
						//	System.out.println(i);
//						row[i][0] = rs.getString(1);
//						row[i][1] = rs.getString(2);
//						row[i][2] = rs.getString(3);
//						row[i][3] = rs.getString(4);
					}
					
					
				
				return row;
			
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return null;
	}

		
		//return null;
	}
	public boolean Login(String email, String password)
	{
		try {
			PreparedStatement pst = Connector.con.prepareStatement("select * from vendor_register where email=? and password=?");
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next())
			{
				aadhar = rs.getString(1);
				
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

			return false ;
	}
	
	
	public int Insert(String username, String password)
	{
			int res = 0;
			try {
				PreparedStatement pst = Connector.con.prepareStatement("insert into logindetails values(?,?)");
				pst.setString(1, username);
				pst.setString(2, password);
				res = pst.executeUpdate();
				return res;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return res;
	}
	
	public String[][] Search(String guests, String preference, String equipment)
	{
		//int res = 0;
		
		try {
				PreparedStatement pst = Connector.con.prepareStatement("SELECT aadhar,owner_name, venture_name, address, experience FROM `vendor_details` WHERE aadhar in (Select aadhar from `vendor_catering` where no_of_guests = ? and non_veg=? and equipment =?)");
				
					pst.setString(1, guests);
					pst.setString(2, preference);
					pst.setString(3, equipment);
					System.out.println("tt0");
					ResultSet rs = pst.executeQuery();
					int j=0;
					
					while(rs.next())
					{
						System.out.println(rs.getString(1));
					//	aadhar = rs.getString(1);
						j++;
					}
					
					String row[][] =new String[j][5];
					rs.beforeFirst();
					
						for(int i = 0; rs.next();i++)
						{
							for( j =0;j<4;j++)
							{
								System.out.println("tt1");
								row[i][j] = rs.getString(j+1);
								System.out.println("tt2");
							}
							//	System.out.println(i);
//							row[i][0] = rs.getString(1);
//							row[i][1] = rs.getString(2);
//							row[i][2] = rs.getString(3);
//							row[i][3] = rs.getString(4);
						}
						
						
					
					return row;
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		
		
	}
	
	public String[] getDetails(String email)
			{
				try{
					PreparedStatement pst = Connector.con.prepareStatement("select * from customer_requests where email =?");
					pst.setString(1, email);
					ResultSet rs = pst.executeQuery();
					getDetails = new String[7];
					while(rs.next())
					{
						for(int i = 0;i<7;i++)
						{
							getDetails[i] = rs.getString(i+1);
						}
						
					}
					return getDetails;
				}
				
				catch(Exception e){
				return null;}
			}
		
	public String[] getVendorDetails(String aadhar)
	{
		try{
			PreparedStatement pst = Connector.con.prepareStatement("select * from vendor_register where aadhar =?");
			pst.setString(1, aadhar);
			ResultSet rs = pst.executeQuery();
			getDetails = new String[6];
			while(rs.next())
			{
				for(int i = 0;i<6;i++)
				{
					getDetails[i] = rs.getString(i+1);
				}
				
			}
			return getDetails;
		}
		
		catch(Exception e){
		return null;}
	}

	public String[] getCustomerDetails(String email)
	{
		try{
			PreparedStatement pst = Connector.con.prepareStatement("select * from customer_register where email =?");
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			getDetails = new String[5];
			while(rs.next())
			{
				for(int i = 0;i<4;i++)
				{
					getDetails[i] = rs.getString(i+1);
				}
				
			}
			return getDetails;
		}
		
		catch(Exception e){
		return null;}
	}
}
