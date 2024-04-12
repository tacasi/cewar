import java.sql.Connection;
import java.sql.DriverManager;

public class JD {
	public static void main(String[] args) throws Exception {
		String s = process();
		System.out.println(s);
	}
	public static String process() throws Exception {
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con = DriverManager.getConnection("jdbc:db2://2f3279a5-73d1-4859-88f0-a6c3e6b4b907.c3n41cmd0nqnrk39u98g.databases.appdomain.cloud:30756/bludb:sslConnection=true;", "frs79418", "rRR4CH9BGQcBmLgs");
		try {
		return con.getMetaData().getDatabaseProductName() + con.getMetaData().getDatabaseProductVersion();
		} finally {
			con.close();
		}
		
	}
}
