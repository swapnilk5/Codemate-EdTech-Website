package dao;
import java.sql.*;
import com.connection.Conn;
import Entities.Enroll;

public class EnrollDao {
	public int insertData(Enroll student) throws ClassNotFoundException
	{   
		int i=0;
		try
		
		{
			Connection con = Conn.getCon();
			String ins="insert into enroll(name,email,phone,gender,state,zipcode,course,duration,fees)values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(ins);
			ps.setString(1, student.getName());
			ps.setString(2, student.getEmail());
			ps.setString(3, student.getPhone());
			ps.setString(4, student.getGender());
			ps.setString(5, student.getState());
			ps.setString(6, student.getZipcode());
			ps.setString(7, student.getCourse());
			ps.setString(8, student.getDuration());
			ps.setString(9, student.getFees());
			
			
			i=ps.executeUpdate();

		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return i;
	}
	

}
