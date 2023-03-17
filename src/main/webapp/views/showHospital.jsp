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
  <%HospitalDTO objHospital = (HospitalDTO)request.getAttribute("showHospital"); %>
  <% int hospitalId = (int)request.getAttribute("hospitalId"); %>
    <section class="registration-container">
      <h2>Hospital Registration</h2>
      <section class="details-section">
        <form action="/hospital/showHospital" class="registration-form" method="get">
          <!-- Personal Details Section -->
          <h4>Hospital Details</h4>
          <section class="personal-details">
            <div class="three-details-item">
              <label for="hospitalName"> <p> Hospital Name </p> 
					<input type="text" id="hospitalName" placeholder="<%= objHospital.getHospitalName()%>">
			</label>
			</div>
            <div class="three-details-item">
              <label for="hospitaladdress">
                <p>Hospital address</p>
                <input type="text" id="hospitaladdress" placeholder="<%= objHospital.getAddress()%>">
              </label>
              <label for="district">
                <p>District</p>
                <input type="text" id="district" placeholder="<%= objHospital.getDistrict()%>">
              </label>
              <label for="state">
                <p>State</p>
                <input type="text" id="state" placeholder="<%= objHospital.getState()%>">
              </label>
              
            </div>

            <div class="three-details-item">
              <label for="contactNo">
                <p>Contact-details</p>
                <input type="text" id="contactNo" placeholder="<%= objHospital.getContactNo()%>">
              </label>
              <label for="email">
                <p>Email</p>
              <input type="text" id="email" placeholder="<%= objHospital.getEmail()%>">
			</label>
             
            </div>
          </section>

          <hr />
          <button class="submit-btn">Submit</button>
        </form>
      </section>
    </section>
  </body>
</html>
