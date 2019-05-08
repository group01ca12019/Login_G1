package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectDatabase {
	 public static Connection getSQLServerConnection()
	         throws SQLException, ClassNotFoundException {
		 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
	
	     Connection connect = DriverManager.getConnection( "jdbc:sqlserver://thaole123.database.windows.net:1433;database=control;user=thaole@thaole123;password={Thaopo123};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;" );
	     return connect;
	 }
	 
	
	
	
public static void main(String[] args) throws ClassNotFoundException, SQLException {
	System.out.println(getSQLServerConnection());
	
}
}