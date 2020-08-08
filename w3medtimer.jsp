<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<title>Secure Health IOT - Add Medicine Timer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<style>
/* Set the height of the grid so that left and right col can be 100% (adjust as needed) */
.w3-row {height: 600px}
    
/* Set a 100% height to left and right col */
.w3-col.m2, w3-col.m2 {height: 100%;}
    
/* On small screens, set grid height to 'auto' */
@media screen and (max-width: 601px) {
  .w3-row {height:auto;} 
}
</style>
<body>
<%
if(session.getAttribute("doctorname")==null){
response.sendRedirect("w3index.jsp");

}
%>

<div class="w3-topnav w3-large w3-blue">
  <a href="w3doctorhome.jsp">Secure Health IOT</a>
  

 <!--   <a href="#">About</a>-->
     <div class="w3-right">
     <a href="w3doctorhome.jsp">Home</a>
    <a href="w3logout.jsp">Logout</a>
    </div>
</div>

<div >    
  <div class="w3-row">
  
    <div class="w3-col m2 w3-light-grey">
    
      <p><a href="w3viewpt.jsp">View Patient Information</a></p>
       <p><a href="w3getpr.jsp">View Patient Health Record</a></p>
        <p><a href="w3getcpr.jsp">View Patient Currrent Record</a></p>
         <p><a href="w3updatepr.jsp">Update Patient Health Record</a></p>
            <p><a href="w3medtimer.jsp">Add Patient Medicine Timer</a></p>
                 <p><a href="w3viewpmedr.jsp">View Patient Medecine Consumed</a></p>
                  <p><a href="w3viewpmallerr.jsp">View Patient Medecine Allergic</a></p>
      <!--
      <p><a href="w3addpatient.jsp">Add Patient</a></p>
     <p><a href="w3viewdoctor.jsp">View Doctor</a></p>
     <p><a href="w3viewpatient.jsp">View Patient</a></p>
      -->
    </div>
    
    <div class="w3-col m8 w3-container"> 
       <h1>Welcome!! <%=session.getAttribute("doctorname") %></h1>
      <!--
      <p class="w3-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
      -->

      <div class="w3-card-4">
      <div class="w3-container w3-blue" >
  <h2>Set Timer For Medicine</h2>
    </div>
      <form name="form" method="post" action="w3mdt.jsp" class="w3-container">

       <label>Patient ID</label>
  <input class="w3-input" type="text" name="textfield1" placeholder="PT1">

  <label>Consumtion Time</label>
  <input class="w3-input" type="text" name="textfield2" placeholder="mm:hh,mm:hh,...">
<!--
  <label>Patient Weight</label>
  <input class="w3-input" type="number" name="numfield1" placeholder="kgs">

  <label>Patient Height</label>
  <input class="w3-input" type="number" name="numfield2" placeholder="cms">

  
  <label>Patient BMI</label>
  <input class="w3-input" type="number" name="numfield5" onfocus="calculateBmi()">

  -->

<!--
  <label>Pulse</label>
  <input class="w3-input" type="number" name="numfield3" placeholder="min" >

  <label>Blood Pressure</label>
  <input class="w3-input" type="number" name="numfield4" placeholder="mm of hg">
-->
<!--
  <label>Blood Group</label>
  <select class="w3-select" name="option">
  <option value="" disabled selected>Choose your option</option>
  <option value="A+">A+</option>
  <option value="A-">A-</option>
  <option value="B+">B+</option>
  <option value="B-">B-</option>
  <option value="O+">O+</option>
   <option value="O-">O-</option>
    <option value="AB+">AB+</option>
     <option value="AB-">AB-</option>
</select>
-->
<!--
  <label>Number of Consumption:</label>
<input id="no_of_fields" type="text" class="w3-input" />

<div id="input_set">
  <p>
    <label for="my_input"></label>
  </p>
  <button  class="w3-button w3-blue" id="btn" href="#" type="button">Add</button>
</div>
-->

</br>


  <input type="submit" name="Submit" value="Submit" class="w3-btn w3-blue-grey">





      </form>
     </div>

    </div>

    
    <div class="w3-col m2 w3-light-grey w3-padding">
    <!--
      <div class="w3-card-2 w3-padding">
        <p>ADS</p>
      </div><br>
      <div class="w3-card-2 w3-padding">
        <p>ADS</p>
      </div>
    </div>
    -->
  </div>
</div>
</div>
<footer class="w3-container w3-blue w3-center">
  <h5>Project by B.E.</h5>
  <p>Abhishek Vaidya, Avinash Patil, Nilesh Patil, Mayur Patil, Shubham Patil</p>
</footer>

      <script>
//<!--

//function calculateBmi() {
//var weight = document.form.numfield1.value;
//var height = document.form.numfield2.value;
//if(weight > 0 && height > 0){ 
//var finalBmi = weight/(height/100*height/100)
//document.form.numfield5.value = finalBmi;
//}
//}
var wrapper_div = document.getElementById('input_set');
var btn = document.getElementById('btn');

btn.addEventListener('click', function() {
  var n = document.getElementById("no_of_fields").value;
  var fieldset = document.createElement('div'),
    newInput;
  for (var k = 0; k < n; k++) {

    newInput = document.createElement('input');
    newInput.value = '';
    newInput.type = 'text';
    newInput.placeholder = "Time" + k +" : mm/hr";
    newInput.name="timer"+k;
    fieldset.appendChild(newInput);
    fieldset.appendChild(document.createElement('br'));
  }

  wrapper_div.insertBefore(fieldset, this);
  document.getElementById("btn").style.visibility = "hidden";

}, false);

//-->
</script>

</body>
</html> 