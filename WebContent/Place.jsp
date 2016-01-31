<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
 
<!DOCTYPE html>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/defaultp.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />



</head>
<body>
<p style="color:white; margin-left:1250px"><a href='demoSession'>Logout</a></p>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">Tour Planning</a></h1>
		</div>
	</div>
	<div id="banner" class="container">
		<div class="title">
			<h2>Choose your Place</h2>
		</div>
		<div>
		<ol class="actions">
		<%try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		try{
			Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/project","ADMIN","piyushgarg1594.");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet rs=null;
			//System.out.println("fdfdgs");
			//String s="reorg table customer";
			//stmt.executeUpdate(s);
			String sql = "select name,id from destination";
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{ 
				%><li ><a href="Attraction.jsp?placeId=<%=rs.getInt("id") %>&placeName=<%=rs.getString("name")%>"><%=(rs.getString("name")) %></a></li> <%
			}
		}catch(SQLException r){
			r.printStackTrace();
		} %>
		
		</ol>
		</div>
	</div>
</div>
<div id="copyright" class="container">
	<p>Project developed by Nishant Tyagi, Piyush Garg, Pranjal Katlana, Shreyash Agarwal, Tarush Bhanote</p>
</div>
	</body>
</html>