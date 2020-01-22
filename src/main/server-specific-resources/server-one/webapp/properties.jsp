<%
//PROPERTIES
//servername=server-one
final int adminRole = 4;
final int subAdminRole = 6;
final int instructorRole = 3;
final int studentRole = 1;
final int contactRole = 99; 

java.util.TimeZone.setDefault(java.util.TimeZone.getTimeZone("CST"));

int loginPageDefaultRole = adminRole;

String dir = "ltr";
String serverdomain = "http://localhost:8080";
String logourl = "images/OrbundNewLogo.png";
String varsityname = "Einstein System Login";
String usernamelabel = "Username";
String passwordlabel = "Password";
String rolelabel = "Role";
String firewalllabel = "Firewall";
String loginlabel = "Login >>";

String studentlabel = "Student";
String instructorlabel = "Instructor";
String adminlabel = "Administrator";
String subadminlabel = "Staff";
String contactLabel = "Contact";  // hide contact login for empty value

//MySQL DATABASE
String database = "versitydb";
String repositoryDir = "C:\\repository";
String databaseBackupDir = "/home/ajoarder/exportdb";

database = "einstein_first_test"; // tmidb, bbmidb

String serverip = "localhost";
String driverclass = "com.mysql.jdbc.Driver";
String databaseurl = "jdbc:mysql://" + serverip + "/" + database + "?useUnicode=true&characterEncoding=utf8&user=root&password=";
Integer databasetype = new Integer(0);
Integer emailserver = new Integer(0);
// emailserver = new Integer(1);
String rootpath = "D:\\apache-tomcat-9.0.4\\webapps\\einstein-freshair";


//  Authorize.net
//session.setAttribute("test_request", "false"); //Should be "false" for live merchant account
session.setAttribute("test_request", "true"); //Should be "true" for test merchant account

//URL for test accounts
session.setAttribute("authorizeurl", "https://test.authorize.net/gateway/transact.dll");

//URL for live merchant accounts
//session.setAttribute("authorizeurl", "https://secure.authorize.net/gateway/transact.dll");

//URL for PayPal test accounts
session.setAttribute("paypalurl", "https://www.sandbox.paypal.com/cgi-bin/webscr");

//URL for PayPal live merchant accounts
//session.setAttribute("paypalurl", "https://www.paypal.com/cgi-bin/webscr");

//session.setAttribute("paypal_direct_payment", "live"); //Should be "pilot" for test account, "live" for live account
session.setAttribute("paypal_direct_payment", "pilot"); //Should be "pilot" for test account, "live" for live account


//URL for PayPal test accounts (Direct)
session.setAttribute("paypal_direct_payment_url", "https://api-3t.sandbox.paypal.com/nvp");

//URL for PayPal live merchant accounts  by website (Direct)
//session.setAttribute("paypal_direct_payment_url", "https://api-3t.paypal.com/nvp");


session.setAttribute("driverclass", driverclass);
session.setAttribute("databaseurl", databaseurl);
session.setAttribute("databasetype", databasetype);
session.setAttribute("emailserver", emailserver);
session.setAttribute("rootpath", rootpath);
session.setAttribute("repositoryDir", repositoryDir);
session.setAttribute("database", database);
session.setAttribute("databaseBackupDir", databaseBackupDir);


serverdomain = request.getScheme() + "://" + request.getServerName();
if (request.getServerPort() != 80) {
	serverdomain = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
}

session.setAttribute("serverdomain", serverdomain);

String agreementcode = "PPTOU-01-11-2007";
session.setAttribute("agreementcode", agreementcode);

String miladypath = "D:\\apache-tomcat-9.0.4\\webapps\\milady";
session.setAttribute("miladypath", miladypath);

String importDisbursementPaymentPath = "/home/ajoarder/disbursementPayments";
session.setAttribute("importDisbursementPaymentPath", importDisbursementPaymentPath);

String campusIvyRoothPath = "/home/ajoarder/CampusIvy";
session.setAttribute("campusIvy", campusIvyRoothPath);

String tfcRoothPath = "/home/ajoarder/TFC";
session.setAttribute("TFC", tfcRoothPath);

System.setProperty("java.awt.headless", "true");

%>
