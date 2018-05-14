package eduassistemdbquery;
import java.sql.*;
public class dbConnection{
	private Connection conn=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	public dbConnection(){
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=eduassistem","sa","x1234567");
			stmt=conn.createStatement();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	public ResultSet dbQuery(String sql){
		try{
			rs=stmt.executeQuery(sql);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
	}
	public boolean dbUpdate(String sql){
		try{
			stmt.executeUpdate(sql);
			return true;
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}
	}
	public void dbClose(){
		if(rs!=null){
			try{
				rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(stmt!=null){
			try{
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}