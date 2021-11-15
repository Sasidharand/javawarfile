<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
    B2B-pione
  </title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
   <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
<!--   <link href="./assets/css/tab.min.css" rel="stylesheet" /> -->
 
 <style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
</style>


			  <script>
			function load(){
								document.getElementById('cn').style.display = "none";
								document.getElementById('qo').style.display = "none";
											}
			</script>
<script>
function cellclick(x){
	/* var Row = document.getElementById("rowid");
	var Cells = document.getElementsByID("cellid"); */

	/* var x = document.getElementById("dtBasicExample").rows[0].cells[0].innerHTML; */
	  	alert(x);
	  	var prodidval="";	
	  	prodidval =x;
		/* valucheck(x); */
	  	x="";
	  alert("prodidval " +prodidval );
	  
	  alert("x " +x );
	  	<% String titleval=null;%>
	  	
	  	<% boolean a =true; %>
}
</script>

</head>

		<body onload="load()">
	
<!-- 		<form>   -->

	<br>
	<h4 align="center"> Products Data </h4>
	<br>
	<div class="container" >
				
					<div class="form-check form-check-radio">
						<label class="form-check-label">
							<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" onclick="validateradio()"
							>
							Products from CNET
							<span class="form-check-sign"></span>
						</label>
					</div>
					<div class="form-check form-check-radio">
						<label class="form-check-label">
							<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2" onclick="validateradio()" >
							Products from QOIPR
							<span class="form-check-sign"></span>
						</label>
					</div>
					
					<br>
					<div id="cn"> 
					<div class="form-row">
					
						<div class="form-group col-md-2">
						
						<label  for="exampleFormControlSelect1" id="lable1"  >Product Source : </label>
						<label  for="exampleFormControlSelect1" id="lable2" >CNET</label>
						
						</div>
					
						<div class="form-group col-md-2">
						<label for="exampleFormControlSelect1" id="lable3" >Product Status : </label>
						<label  for="exampleFormControlSelect1" id="lable4" >Origin </label>
						</div>
					</div>
					</div>
					
					
					<div id="qo"> 
					
					<div class="form-row">
						<div class="form-group col-md-2">
					
						<label  for="exampleFormControlSelect1" id="lable5">Product Source : </label>
						<label  for="exampleFormControlSelect1" id="lable6" >QOIPR</label>
						
						</div>
					
						<div class="form-group col-md-2">
						<label  for="exampleFormControlSelect1" id="lable7">Product Status : </label>
						<label  for="exampleFormControlSelect1" id="lable8">Source </label>
						</div>
  
					</div>
					</div>
					<script>
					function validateradio() {
						if (document.getElementById('exampleRadios2').checked) {
						document.getElementById('cn').style.display = "none";
						document.getElementById('qo').style.display ="block";
						} else {
						document.getElementById('cn').style.display = "block";
						document.getElementById('qo').style.display ="none";
										}				
					
						}
					</script>
  
  
  <div class="table-responsive">
    <!-- <table class="table table-bordered" id="tableid"  > -->
    <table id="dtBasicExample" class="table table-striped table-bordered table-sm w-auto" ">
       <thead> 
        <tr>
         
          <th>ProdID</th>
     <th>CatID</th>
     
     <th>ImgID</th>
     <th>MfID</th>
     <th>MfPN</th>
     <th>ReplacedByManufacturerID</th>
		<th>Title</th>
     <th>UNSPSCSegment</th>
     <th>UNSPSCFamily</th>
     <th>UNSPSCClass</th>
     <th>UNSPSCCommodity</th>
     <th>DateAdded</th>
     <th>DateModified</th>
    	<th>QOIPRlicense</th> 
     <th>IsBundle</th>
     <th>SendBundleItemMethod</th>
     <th>ProductLevelMargin</th>
     <th>ReplacedByProductID</th>
     <th>Active</th>
     <th>HSNCode</th>
     <th>HSNdescription</th>
     <th>Regulated</th>
     <th>ProductSource</th>
     <th>ReplacedByManufacturer</th>
      <th>ProductStatus</th>
     <th>IsFreightApplicable</th>
    
        </tr>
        
       
      </thead>
      
      <tbody> 
      
       <% 

			java.sql.Connection conn;
			java.sql.Statement stmt;
			java.sql.ResultSet result;
			
			java.sql.ResultSet result1;
			java.sql.PreparedStatement pst;


			conn = null;
			String dbName = "QDC";
			String serverip="164.52.218.134";
			String serverport="1433";
			String url = "jdbc:sqlserver://"+serverip+"\\SQLEXPRESS:"+serverport+";databaseName="+dbName+"";
			stmt = null;
			result = null;
			String an="456";
			String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
			String databaseUserName = "sa";
			String databasePassword = "Pione@123";
		try {
		    Class.forName(driver).newInstance();
		    conn = java.sql.DriverManager.getConnection(url, databaseUserName, databasePassword);
		    stmt = conn.createStatement();
		    result = null;
		    String pa,us;
		    result = stmt.executeQuery("select top 10 * from in_cds_prod_tmp ");
		
		    while (result.next()) { 
		    	 System.out.println(result.getString("ProdID")+"  "+result.getString("CatID") + " " + result.getString("ImgID"));
		    %>
      
       <tr>
      	<%-- <td id ="cellid"  onclick="cellclick()"> <%= result.getString("ProdID")%></td> --%>
      	
      	<td id ="cellid"  onclick="cellclick(<%= result.getString("ProdID")%>)"  > <%= result.getString("ProdID")%></td>
      	
		     <td> <%= result.getString("CatID")%></td>
		     
		     <td> <%= result.getString("ImgID")%></td>
		     <td> <%= result.getString("MfID")%></td>
		     <td> <%= result.getString("MfPN")%></td>
		     <td> <%= result.getString("ReplacedByManufacturerID")%></td>
		     
			<td> <%= result.getString("Title")%></td>
		     <td> <%= result.getString("UNSPSCSegment")%></td>
		     <td> <%= result.getString("UNSPSCFamily")%></td>
		     <td> <%= result.getString("UNSPSCClass")%></td>
		     <td> <%= result.getString("UNSPSCCommodity")%></td>
		     <td> <%= result.getString("DateAdded")%></td>
		     <td> <%= result.getString("DateModified")%></td>
		     <td> <%= result.getString("QOIPRlicense")%></td>
		     <td> <%= result.getString("IsBundle")%></td>
		     <td> <%= result.getString("SendBundleItemMethod")%></td>
		     <td> <%= result.getString("ProductLevelMargin")%></td>
		     <td> <%= result.getString("ReplacedByProductID")%></td>
		     <td> <%= result.getString("Active")%></td>
		     <td> <%= result.getString("HSNCode")%></td>
		     <td> <%= result.getString("HSNdescription")%></td>
		     <td> <%= result.getString("Regulated")%></td>
		     <td> <%= result.getString("ProductSource")%></td>
		     <td> <%= result.getString("ReplacedByManufacturer")%></td>
		       <td> <%= result.getString("ProductStatus")%></td>
		     <td> <%= result.getString("IsFreightApplicable")%></td>
		   
		          </tr>
          
			     <%   }
			
			    conn.close();
			} catch (Exception e) {
			    e.printStackTrace();
			}
			
			%>
      
      
      <!--  <tr > -->
      	<%-- <td id ="cellid"  onclick="cellclick()"> <%= result.getString("ProdID")%></td> --%>
      	
     

  <%--    <%  String va ="678 " ;%> --%>
     
     
     
         <!--  <td id ="cellid"  onclick="cellclick(999)"> 123</td>
          <td>888</td> -->
          
          
    <%--  <td> <%= result.getString("ImgID")%></td>
     <td> <%= result.getString("MfID")%></td>
     <td> <%= result.getString("MfPN")%></td>
     <td> <%= result.getString("ReplacedByManufacturerID")%></td>
     
	<td> <%= result.getString("Title")%></td>
     <td> <%= result.getString("UNSPSCSegment")%></td>
     <td> <%= result.getString("UNSPSCFamily")%></td>
     <td> <%= result.getString("UNSPSCClass")%></td>
     <td> <%= result.getString("UNSPSCCommodity")%></td>
     <td> <%= result.getString("DateAdded")%></td>
     <td> <%= result.getString("DateModified")%></td>
     <td> <%= result.getString("QOIPRlicense")%></td>
     <td> <%= result.getString("IsBundle")%></td>
     <td> <%= result.getString("SendBundleItemMethod")%></td>
     <td> <%= result.getString("ProductLevelMargin")%></td>
     <td> <%= result.getString("ReplacedByProductID")%></td>
     <td> <%= result.getString("Active")%></td>
     <td> <%= result.getString("HSNCode")%></td>
     <td> <%= result.getString("HSNdescription")%></td>
     <td> <%= result.getString("Regulated")%></td>
     <td> <%= result.getString("ProductSource")%></td>
     <td> <%= result.getString("ReplacedByManufacturer")%></td>
       <td> <%= result.getString("ProductStatus")%></td>
     <td> <%= result.getString("IsFreightApplicable")%></td> --%>
   
 <!--   </tr> -->
          
     

      </tbody> 
    </table>
   
  </div>
  
  
		<div>
		<br>
		</div>
		
		
	<!-- <script> 
	
		if (prodidval != null)
			
			{
			alert("value of xval 1 " + prodidval); -->
			
			<% 
			
			
			if (a){
				
			System.out.println(" titleval-----------------1----------------" + titleval);
			java.sql.Connection conn2;
			java.sql.Statement stmt2;
			
			java.sql.Statement stmt3;
			java.sql.ResultSet title;

			
			java.sql.ResultSet resultmarketdesc;
			java.sql.ResultSet mainspec;
		 	java.sql.ResultSet extendedspec;
		 	/*java.sql.ResultSet resultmarketdesc; */
			java.sql.ResultSet attributeresult;
			
			java.sql.PreparedStatement pst2;
			
			conn2 = null;
			stmt2 = null;
			String dbName2 = "CNET";
			String serverip2="164.52.218.134";
			String serverport2 ="1433";
			String url2 = "jdbc:sqlserver://"+serverip2+"\\SQLEXPRESS:"+serverport2+";databaseName="+dbName2+"";
			
			System.out.println(" -----------------2----------------");
			
			String driver2 = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
			String databaseUserName2 = "sa";
			String databasePassword2 = "Pione@123";
			
			
			try {
			    Class.forName(driver2).newInstance();
			    conn2 = java.sql.DriverManager.getConnection(url2, databaseUserName2, databasePassword2);
			    stmt2 = conn2.createStatement();
			    title = null;
			    mainspec=null;
			    attributeresult=null;
			    System.out.println(" -----------------3----------------");

			    title = stmt2.executeQuery(" select description from  cds_stdnee where ProdID ='2593215'");
			    //stmt2=null;
			    
			    
			    while (title.next()) { 
			    	
			    	System.out.println(" -----------------4----------------");
			    	titleval="";
			    	titleval= title.getString("description");
			    	 System.out.println("Title" + title.getString("description"));
			    	 
			    	 System.out.println("titleval " + titleval);
			    	 
			    	 //System.out.println(result.getString("ProdID")+"  "+result.getString("CatID") + " " + result.getString("ImgID"));
			    }
			    System.out.println(" -----------------44----------------");
			    
			    mainspec =stmt2.executeQuery("SELECT m.prodid,v.text AS Header,v2.text AS Body " +
			    		" FROM cds_Mspecee m " +
			    		" JOIN cds_mvocee v " +
			    		" ON m.hdrid = v.id " +
			    		" JOIN cds_mvocee v2 " +
			    		" ON m.bodyid  = v2.id " +
			    		" WHERE m.prodid  = '2593215'" + 
			    		" ORDER BY m. prodid," +
			    		" m.displayorder;");
			    System.out.println(" -----------------45----------------");
			   
			    
			 /*    attributeresult=stmt2.executeQuery("SELECT a.atrid,v.text AS Attribute,a.valid AS ValueID,a.unitid AS UnitID,v3.text AS Unit,COALESCE( v2.text +  ' ' + v3. text, v2. text) AS ValueUnit ,a. nnv " +
			    		" FROM   cds_atr  a " +
			    		" JOIN cds_vocee  v " +
			    		" ON  a.atrid  = v. id " +
			    		" JOIN  cds_vocee v2 " +
			    		" ON  a.valid  = v2. id " +
			    		" LEFT  JOIN cds_vocee  v3 " +
			    		" ON a .unitid  = v3 .id " +
			    		" WHERE   a. prodid = '2593215'" +
			    		" ORDER   BY a .atrid; ");
			    
			    
			    System.out.println(" -----------------46----------------"); */
			    %>
		
			    
	<!-- }
			}
		
		else{
			
			alert("in else");
		} -->
	
	
	

<!-- </script> -->
		
<div><br></div>

					<!-- Tab links -->
							<div class="tab">
								<button class="tablinks" onclick="openCity(event, 'tdes')">Title Description</button>
							  <button class="tablinks" onclick="openCity(event, 'mainspec')">Main Specification</button>
							  <button class="tablinks" onclick="openCity(event, 'extspec')">Extended Specification</button>
							  <button class="tablinks" onclick="openCity(event, 'markdesc')">Marketing Description</button>
							  <button class="tablinks" onclick="openCity(event, 'feat')">Features</button>
							  <button class="tablinks" onclick="openCity(event, 'witb')">Whats's in the box</button>
							  <button class="tablinks" onclick="openCity(event, 'acce')">Accessories</button>
							  <button class="tablinks" onclick="openCity(event, 'mi')">Multiple Images</button>
							  <button class="tablinks" onclick="openCity(event, 'logo')">Logo</button>
							  <button class="tablinks" onclick="openCity(event, 'pdf')">Pdf's</button>
							  <button class="tablinks" onclick="openCity(event, 'attb')">Attributes</button>
							  <button class="tablinks" onclick="openCity(event, 'enerl')">Energy Labels</button>
							</div>

							<!-- Tab content -->
							<div id="tdes" class="tabcontent">
							 <p><%= titleval %></p>
							</div>

							<div id="mainspec" class="tabcontent">
							<table border="1">
							
							<% 
							 while(mainspec.next())
							 	
							 {
								 System.out.println(" -----------------5----------------");
								 System.out.println("mainspec " + mainspec.getString("Header"));
								 
								 %>
								 <tr>
								 <th><%= mainspec.getString("Header")%> </th>
								 <td><%= mainspec.getString("body")%></td>
								 </tr>
								 
							<%
							 }
							%>
							 
							   
							</table>
							<!--  <p>Inside Extended Specification.</p> -->
							</div>
							
							<div id="extspec" class="tabcontent">
							
							<table border="1" width=100%>
									<tr><th>General</th></tr>
							<% 
							extendedspec=stmt2.executeQuery("SELECT e. prodid,v.text   AS Sector,v2.text  AS Header,v3.text  AS Body "+
									" FROM   cds_especee e "+
									" JOIN cds_evocee  v "+
									" ON e .sectid = v .id "+
									" JOIN cds_evocee  v2 "+
									" ON e .hdrid = v2 .id "+
									" JOIN cds_evocee  v3 "+
									" ON  e.bodyid =  v3.id "+
									" WHERE  e .prodid = '2593215' "+
									" ORDER  BY  e.prodid , "+
									" e .displayorder");
							
							
							while (extendedspec.next())
							{
							
								if( extendedspec.getString("Sector").equalsIgnoreCase("General"))
								{
									
									%>
									
									<tr>
									<th><%= extendedspec.getString("Header")%></th>
									<td><%= extendedspec.getString("Body")%></td>
									</tr>
									
									
									<%
									 System.out.println(" -----------------general----------------");
									 
									 System.out.println(extendedspec.getString("Header")); 
								}
								
							}	
							
							%> 
							</table>
							
							<table border="1" width=100%>
									<tr><th>Details</th></tr>
							<% 
							while (extendedspec.next())
							{
							
								System.out.println(" -----------------insed exten 1----------------");
								if (extendedspec.getString("Sector").equalsIgnoreCase("Details"))
								{
									%> 
									<tr>
									<th><%= extendedspec.getString("Header")%></th>
									<td><%= extendedspec.getString("Body")%></td>
									</tr>
									<%
									
									System.out.println(" -----------------Details----------------");
									System.out.println(extendedspec.getString("Header"));
								}
								 
							}	
							
							%> 
							</table>
							<table border="1" width=100%>
									<tr><th>Compatibility Information</th></tr>
									
							<%
							while (extendedspec.next())
							{
								System.out.println(" -----------------insed exten 2----------------");
								if (extendedspec.getString("Sector").equalsIgnoreCase("Compatibility Information"))
								{
									
									%> 
									<tr>
									<th><%= extendedspec.getString("Header")%></th>
									<td><%= extendedspec.getString("Body")%></td>
									</tr>
									
									<%
									System.out.println(" -----------------Compatibility Information----------------");
									System.out.println(extendedspec.getString("Header"));
								}
								
							}
							
							%>
							</table>
							 <!-- <p>Inside Extended Specification.</p> -->
							</div>
							
							<div id="markdesc" class="tabcontent">
							<table>
							<tr>
							<th>Key Selling Points </th>
							</tr>
							<tr>
							<td>There is no data<td>
							</tr>
							<tr>
							<th>Product features </th>
							</tr>
							<tr>
							<td>no data<td>
							</tr>
							
							</table>
							
							
							</div>
							
							<div id="feat" class="tabcontent">
							 <p>Inside Extended Specification.</p>
							</div>
							
							<div id="witb" class="tabcontent">
							 <p>Inside Extended Specification.</p>
							</div>
							
							<div id="acce" class="tabcontent">
							 <p>Inside Extended Specification.</p>
							</div>
							
							<div id="mi" class="tabcontent">
							 <p>Inside Extended Specification.</p>
							</div>
							
							<div id="logo" class="tabcontent">
							 <p>Inside Extended Specification.</p>
							</div>
							
							<div id="pdf" class="tabcontent">
							 <p>Inside Extended Specification.</p>
							</div>
							

							<div id="attb" class="tabcontent">
							
							<table border="1" width=100%>
							
							<tr>
								 <th>Atrid</th>
								 <th>Attribute</th>
								 <th>ValueID</th>
								 <th>UnitID</th>
								 <th>Unit</th>
								 <th>ValueUnit</th>
								 <th>nnv</th>
							</tr>	 
							
							<%
							
							attributeresult=stmt2.executeQuery("SELECT a.atrid,v.text AS Attribute,a.valid AS ValueID,a.unitid AS UnitID,v3.text AS Unit,COALESCE( v2.text +  ' ' + v3. text, v2. text) AS ValueUnit ,a. nnv " +
						    		" FROM   cds_atr  a " +
						    		" JOIN cds_vocee  v " +
						    		" ON  a.atrid  = v. id " +
						    		" JOIN  cds_vocee v2 " +
						    		" ON  a.valid  = v2. id " +
						    		" LEFT  JOIN cds_vocee  v3 " +
						    		" ON a .unitid  = v3 .id " +
						    		" WHERE   a. prodid = '2593215'" +
						    		" ORDER   BY a .atrid; ");
							
							
							while(attributeresult.next())
							 	
							 {
								 System.out.println(" -----------------5----------------");
								 System.out.println("attribute " + attributeresult.getString("atrid"));
								 
								 %>
								<tr>
								 <td> <%= attributeresult.getString("atrid") %></td>
								 <td> <%= attributeresult.getString("Attribute") %></td>
								 <td> <%= attributeresult.getString("ValueID") %></td>
								 <td> <%= attributeresult.getString("UnitID") %></td>
								 <td> <%= attributeresult.getString("Unit") %></td>
								 <td> <%= attributeresult.getString("ValueUnit") %></td>
								 <td> <%= attributeresult.getString("nnv") %></td>
								 </tr>
											
							<%
							 }
							
							 System.out.println(" -----------------6----------------");
							 conn2.close();
						}
							
							catch (Exception e) {
							    e.printStackTrace();
							}
							    
						}
							%>
							</table>
							
							
							 
							</div>
							
							<div id="enerl" class="tabcontent">
							  <p>Inside Marketing Description.</p>
							</div>
							
							<script>
								function openCity(evt, cityName) {
								  var i, tabcontent, tablinks;
								  tabcontent = document.getElementsByClassName("tabcontent");
								  for (i = 0; i < tabcontent.length; i++) {
								    tabcontent[i].style.display = "none";
								  }
								  tablinks = document.getElementsByClassName("tablinks");
								  for (i = 0; i < tablinks.length; i++) {
								    tablinks[i].className = tablinks[i].className.replace(" active", "");
								  }
								  document.getElementById(cityName).style.display = "block";
								  evt.currentTarget.className += " active";
								}
								</script>
	
<div><br><br><br></div>
						
				
							
	<!-- 	</form> -->
</body>
</html>