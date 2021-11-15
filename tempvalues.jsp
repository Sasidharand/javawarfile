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
  <link href="./assets/css/tab.min.css" rel="stylesheet" />
  <style>.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons that are used to open the tab content */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
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
}</style>
  <script>
function load(){
					
					
					document.getElementById('cn').style.display = "none";
					document.getElementById('qo').style.display = "none";
				
					
					}
</script>
<script>
function cellclick(){

/* var Row = document.getElementById("rowid");
var Cells = document.getElementsByID("cellid"); */

var x = document.getElementById("dtBasicExample").rows[0].cells[0].innerHTML;
alert(x);

}
</script>

</head>
<body onload="load()">
<form>  

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
    <table id="dtBasicExample" class="table table-striped table-bordered table-sm w-auto" cellspacing="0" width="100%">
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
      
       <tr id="rowid">
      	<td id ="cellid"  onclick="cellclick()"> <%= result.getString("ProdID")%></td>
      	
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
      </tbody> 
    </table>
   
  </div>
  
  
		<div>
		<br>
		</div>
		
		
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
							 <p>Inside tdes.</p>
							</div>

							<div id="mainspec" class="tabcontent">
							 <p>Inside Extended Specification.</p>
							</div>
							
							<div id="extspec" class="tabcontent">
							 <p>Inside Extended Specification.</p>
							</div>
							
							<div id="markdesc" class="tabcontent">
							 <p>Inside Extended Specification.</p>
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
							  <p>Inside Marketing Description.</p>
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

							// Get the element with id="defaultOpen" and click on it
							document.getElementById("defaultOpen").click();
							</script>
  
  
</div>
<div><br></div>
</form>
</body>
</html>