import java.sql.Connection;
import java.sql.DriverManager;

public class JD {
	public static void main(String[] args) throws Exception {
		String s = process();
		System.out.println(s);
	}
	public static String process() throws Exception {
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con = DriverManager.getConnection("jdbc:db2://6667d8e9-9d4d-4ccb-ba32-21da3bb5aafc.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:30376/bludb:sslConnection=true;", "mrx02930", "TCYnbKhHDcoNAFiM");
		try {
		return con.getMetaData().getDatabaseProductName() + con.getMetaData().getDatabaseProductVersion();
		} finally {
			con.close();
		}
		
	}
}
