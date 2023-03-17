<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Donor Registration Form</title>
    <link rel="stylesheet" href="./css/styledonorform.css" />
  </head>

  <body>
    <section class="registration-container">
      <h2>Registration</h2>
      <section class="details-section">
        <form action="/donor/savedonor" class="registration-form" method="post">
          <!-- Personal Details Section -->
          <h4>Personal Details</h4>
          <section class="personal-details">
            <div class="three-details-item">
            <label for="name">
                <p>DonorId</p>
                <input
                  type="number"
                  name="donorId"
                  id="donorId"
                  placeholder="Enter your Id"
                />
              </label>
              <label for="name">
                <p>Name</p>
                <input
                  type="text"
                  name="Name"
                  id="name"
                  placeholder="Enter your name"
                />
              </label>
              <label for="fName">
                <p>Father's Name</p>
                <input
                  type="text"
                  name="fatherName"
                  id="fName"
                  placeholder="Enter father name"
                />
              </label>
              <label for="lName">
                <p>Last Name</p>
                <input
                  type="text"
                  name="lastName"
                  id="lName"
                  placeholder="Enter last name"
                />
              </label>
            </div>

            <div class="three-details-item">
              <label for="DOB">
                <p>Date of Birth</p>
                <input
                  type="number"
                  name="DOB"
                  id="DOB"
                  placeholder="Enter your DOB"
                />
              </label>
              <label for="email">
                <p>Email</p>
                <input
                  type="email"
                  name="email"
                  id="email"
                  placeholder="Enter your email"
                />
              </label>
              <label for="password">
                <p>Password</p>
                <input
                  type="password"
                  name="password"
                  id="password"
                  placeholder="Enter your Password"
                />
              </label>
            </div>

            <div class="three-details-item">
              <label for="address">
                <p>Address</p>
                <input
                  type="text"
                  name="address"
                  id="address"
                  placeholder="Enter your Address"
                />
              </label>
              
              <label for="district">
                <p>District</p>
                <input
                  type="text"
                  name="district"
                  id="district"
                  placeholder="Enter district"
                />
              </label>
              <label for="state">
                <p>State</p>
                <input
                  type="text"
                  name="state"
                  id="state"
                  placeholder="Enter state"
                />
              </label>
            </div>

            <div class="three-details-item">
              <label for="contactNo">
                <p>Contact No</p>
                <input
                  type="number"
                  name="contactNo"
                  id="contactNo"
                  placeholder="Enter mobile number"
                />
              </label>
              
            </div>
          </section>

          <hr />

          <!-- Identity Details Section -->
          <h4>Other Details</h4>
          <section class="identity-details">
            <div class="three-details-item">
              <label for="stream">
                <p>Blood Group</p>
                <input
                  type="text"
                  name="bloodGroup"
                  id="stream"
                  placeholder="Enter your Blood Group"
                />
              </label>
            </div>
          </section>
          <button class="submit-btn" >Submit</button>
        </form>
      </section>
    </section>
  </body>
</html>
