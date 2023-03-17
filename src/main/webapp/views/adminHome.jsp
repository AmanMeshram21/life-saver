<%@page import="org.fi.lifesaver.dto.DonorDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="org.fi.lifesaver.dto.HospitalDTO" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hospital Registration Form</title>
    <link rel="stylesheet" href="./css/styledonorform.css" />
  </head>

  <body>
  <%DonorDTO objDonor = (DonorDTO)request.getAttribute("showDonor"); %>
  <% int donorId = (int)request.getAttribute("donorId"); %>
    <section class="registration-container">
      <h2>Donor Registration</h2>
      <section class="details-section">
        <form action="/donor/showDonor" class="registration-form" method="get">
          <!-- Personal Details Section -->
          <h4>Donor Details</h4>
          <section class="personal-details">
            <div class="three-details-item">
              <label for="Name"> <p> Name </p> 
					<input type="text" id="Name" placeholder="<%= objDonor.getDonorName()%>">
			</label>
			<label for="fatherName"> <p>Father Name </p> 
					<input type="text" id="fatherName" placeholder="<%= objDonor.getFatherName()%>">
			</label>
			<label for="lastName"> <p>Last Name </p> 
					<input type="text" id="lastName" placeholder="<%= objDonor.getLastName()%>">
			</label>
			</div>
            <div class="three-details-item">
            <label for="DOB"> <p> Date of Birth </p> 
					<input type="text" id="DOB" placeholder="<%= objDonor.getAge()%>">
			</label>
              <label for="address">
                <p>Address</p>
                <input type="text" id="address" placeholder="<%= objDonor.getAddress()%>">
              </label>
              <label for="district">
                <p>District</p>
                <input type="text" id="district" placeholder="<%= objDonor.getDistrict()%>">
              </label>
              <label for="state">
                <p>State</p>
                <input type="text" id="state" placeholder="<%= objDonor.getState()%>">
              </label>
              
            </div>

            <div class="three-details-item">
              <label for="contactNo">
                <p>Contact-details</p>
                <input type="text" id="contactNo" placeholder="<%= objDonor.getContactNo()%>">
              </label>
              <label for="email">
                <p>Email</p>
              <input type="text" id="email" placeholder="<%= objDonor.getEmail()%>">
			</label>
             
            </div>
          </section>

          <hr />
          <h4>Other Details</h4>
          <section class="identity-details">
            <div class="three-details-item">
              <label for="stream">
                <p>Blood Group</p>
                <input type="text" id="email" placeholder="<%= objDonor.getBloodGroup()%>">
              </label>
            </div>
          </section>
          <button class="submit-btn">Submit</button>
        </form>
      </section>
    </section>
  </body>
</html>
