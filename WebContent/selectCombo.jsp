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

    <title>Combos</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<p style="color:white; margin-left:1250px"><a href='demoSession'>Logout</a></p>
<form method="post" action="selectCombo">
<div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Select Combo
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Project One -->
        
        <%try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		try{
			Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/project","ADMIN","piyushgarg1594.");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet rs=null;;
			String sql = "select * from combo";
			rs=stmt.executeQuery(sql);    
			while(rs.next())
			{ 
				%>
		
		<input type="radio" name="bookAttraction" value="<%=rs.getInt("id")%>">
        <div class="row">
            <div class="col-md-4 col-md-offset-1">
           
            </div>
            <div class="col-md-6 col-md-offset-1">
                <p>Budget :<%=rs.getInt("budget")%></p>
                <p>Duration: <%=rs.getInt("duration")%></p>
                 <p>places:<%=rs.getString("places")%>
                 <p>Rating: <%=rs.getInt("rating")%></p>
            </div>
        </div>
        <br/><br/><br/>
       <% }
		}catch(SQLException r){
			r.printStackTrace();
		} %>
        </div>
       <span style="margin-left:690px; font-size:20px;" ><input type="submit" value="Submit"></span> 
        </form>
		</body>
	</html>