<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <section class="registration-container">
      <h2>Hospital Registration</h2>
      <section class="details-section">
        <form action="/hospital/hospitalform" class="registration-form" method="post">
          <!-- Personal Details Section -->
          <h4>Hospital Details</h4>
          <section class="personal-details">
            <div class="three-details-item">
              <label for="name">
                <p>Name</p>
                <input
                  type="text"
                  name="Name"
                  id="name"
                  placeholder="Enter Hospital name"
                />
            </div>

            <div class="three-details-item">
              <label for="hospitaladdress">
                <p>Hospital address</p>
                <input
                  type="text"
                  name="hospitaladdress"
                  id="hospitaladdress"
                  placeholder="Enter address"
                />
              </label>
              <label for="district">
                <p>District</p>
                <input
                  type="text"
                  name="district"
                  id="district"
                  placeholder="Enter District"
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
                <p>Contact-details</p>
                <input
                  type="tel"
                  name="contactNo"
                  id="contactNo"
                  placeholder="Enter mobile number"
                />
              </label>
              <label for="email">
                <p>Email</p>
                <input
                  type="email"
                  name="email"
                  id="email"
                  placeholder="Enter Hospital's mail-id"
                />
              </label>

             
            </div>
          </section>

          <hr />
          </section>
          <button class="submit-btn">Submit</button>
        </form>
      </section>
    </section>
  </body>
</html>
