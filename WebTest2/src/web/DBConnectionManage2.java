package web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class DBConnectionManage
 *
 */
@WebListener
public class DBConnectionManage2 implements ServletContextListener {

	/**
	 * Default constructor.
	 */
	public DBConnectionManage2() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		Connection conn = null;
		Properties connectionProps = new Properties();

		ServletContext sc = sce.getServletContext();
		String url = sc.getInitParameter("dbURL2");
		String user = sc.getInitParameter("dbID2");
		String passwd = sc.getInitParameter("dbPW2");
		connectionProps.put("user", user);
		connectionProps.put("password", passwd);

		try {
			conn = DriverManager.getConnection(url, connectionProps);
			if (conn != null)
				sc.setAttribute("DBconnection2", conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
