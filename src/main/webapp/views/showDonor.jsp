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
    <title>Donor Form</title>
    <style type="text/css">
    * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

body {
  width: 100%;
  background-image: url("../images/background.jpg");
  display: flex;
  justify-content: center;
  align-items: center;
}

.registration-container {
  background: #fff;
  border-radius: 0.5rem;
  padding: 1rem;
  margin: 1rem;
}

.registration-container h2 {
  font-weight: bold;
  font-size: 1.4rem;
  margin-bottom: 1rem;
  position: relative;
}

.registration-container h2::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 0;
  height: 3px;
  width: 20%;
  border-radius: 2px;
  background-color: #e65b00;
}

.three-details-item {
  display: flex;
  flex-wrap: wrap;
}

hr {
  width: 70%;
  height: 1px;
  background-color: #d2d2d2;
  margin: 1rem 0;
  border: none;
}

.personal-details,
.identity-details {
  margin: 0.2rem 0;
}

.personal-details label,
.identity-details label {
  margin: 0.5rem 1rem;
  font-size: 0.9rem;
  font-weight: 600;
}

.three-details-item input {
  outline: none;
  font-size: 0.8rem;
  border-radius: 0.2rem;
  border: 1px solid rgb(113, 101, 101);
  padding: 0.1rem;
  background-color: transparent;
}

.submit-btn {
  border: none;
  background-color: #e65b00;
  color: white;
  padding: 0.3rem 1rem;
  display: block;
  width: 50%;
  margin: 0.6rem auto;
  border-radius: 2rem;
  font-size: 1.1rem;
}
    
    </style>
  </head>

  <body>
  <%DonorDTO objDonor = (DonorDTO)request.getAttribute("showDonor"); %>
  <% int donorId = (int)request.getAttribute("donorId"); %>
    <section class="registration-container">
      <h2>Donor </h2>
      <section class="details-section">
      
      <form action="/hospital/showHospital" class="registration-form" method="get">
          <!-- Personal Details Section -->
          <h4>Hospital Details</h4>
          <section class="personal-details">
            <div class="three-details-item">
              <label for="donorId"> <p> donorID </p> 
					<input type="number"  placeholder="<%= objDonor.getDonorId()%>">
			</label>
			</div>
            <div class="three-details-item">
              <label for="donorName">
                <p>Donor Name</p>
                <input type="text"  placeholder="<%= objDonor.getDonorName()%>">
              </label>
              <label for="fatherName">
                <p>Father Name</p>
                <input type="text"  placeholder="<%= objDonor.getFatherName()%>">
              </label>
              <label for="lastName">
                <p>Last Name</p>
                <input type="text"  placeholder="<%= objDonor.getLastName()%>">
              </label>
              
            </div>

            <div class="three-details-item">
            <label for="contactNo">
                <p>Contact No</p>
                <input type="number"  placeholder="<%= objDonor.getLastName() %>">
              </label>
              <label for="email">
                <p>Email</p>
              <input type="text"  placeholder="<%= objDonor.getEmail()%>">
			</label>
             <label for="DOB">
                <p>Age</p>
                <input type="email" placeholder="<%= objDonor.getAge()%>">
              </label>
            </div>
            
            <div class="three-details-item">
            <label for="address">
                <p>Address</p>
                <input type="text"  placeholder="<%= objDonor.getLastName() %>">
              </label>
              <label for="district">
                <p>district</p>
              <input type="text"  placeholder="<%= objDonor.getDistrict()%>">
			</label>
             <label for="state">
                <p>State</p>
                <input type="text" placeholder="<%= objDonor.getState()%>">
              </label>
               <label for="bloodDonor">
                <p>Blood Group</p>
                <input type="text" placeholder="<%= objDonor.getBloodGroup()%>">
              </label>
            </div>
            
          </section>

          <hr />
        </form>
      </section>
    </section>
  </body>
</html>
