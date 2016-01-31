<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Vehicle</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
label {
	display: block;
	width: 225px;
}

input[type='radio'] {
	float: right;
}

select {
	margin-left: 50px;
}

input[type='date'] {
	margin-left: 50px;
}

input {
	font-size: 18px
}
</style>
</head>

<body>

	<%try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		try{
			Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/project","ADMIN","piyushgarg1594.");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet rs=null;
			int pid=0;
				String sql = "select * from flight";
				rs=stmt.executeQuery(sql);
				Cookie hotelId= new Cookie("hotelId",request.getParameter("hotelId"));
				hotelId.setMaxAge(60*60*24); 
				response.addCookie( hotelId );
			%>
	<p style="color: white; margin-left: 1250px">
		<a href='demoSession'>Logout</a>
	</p>
	<div class="container">

		<!-- Page Heading -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Vehicle</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Project One -->
		<form method="post" action="combo">
			<span style="font-size: 18px">Transport: </span><br /> <br /> <label>Flight
				<input type="radio" name="myradio" value="flight" />
			</label> <label>Bus <input type="radio" name="myradio" value="Bus" /></label>
			<br />
			<br /> <span style="font-size: 16px">Select number of Seats: </span>
			<select name="seats">
				<option name="one" value="one">1</option>
				<option name="two" value="two">2</option>
				<option name="three" value="three">3</option>
				<option name="four" value="four">4</option>
				<option name="five" value="five">5</option>
			</select> <br />
			<br /> <span style="font-size: 16px">From: </span> <select name="from">
				<%while(rs.next())
			{ %>
				<option name="from" value="<%=rs.getString("from")%>"><%=rs.getString("from")%>
				</option>
				<%} %>
			</select> <br />
			<br /> <span style="font-size: 16px">To: </span> <select name="to">
				<%rs.first();
		while(rs.next())
			{ %>
				<option name="to" value="<%=rs.getString("to")%>">
					<%=rs.getString("to")%>
				</option>
				<%} %>
			</select> <br />
			<br />
			<br /> <span style="font-size: 16px">Select Date:</span> <input
				type="date" name="bday"> <br />
			<br />
			<br />
			<hr>
			<input type="submit" value="Submit">
		</form>
	</div>
	<% 
		}catch(SQLException r){
			r.printStackTrace();
		} %>

</body>
</html>