<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        /* Form Container */
        .form-container {
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        h4 {
            text-align: center;
            font-size: 14px;
        }

        h4.success {
            color: green;
        }

        h4.error, h4.same-email {
            color: red;
        }

        /* Input Fields */
        .form-container input[type="text"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        /* Submit Button */
        .form-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Link Styling */
        .form-container a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }

        .form-container a:hover {
            text-decoration: underline;
        }

        /* Additional Text */
        .additional-text {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
            color: #555;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Register</h2>
        <!-- Success Message -->
        <c:if test="${not empty successMsg}">
            <h4 class="success">${successMsg}</h4>
        </c:if>
        <!-- Error Message -->
        <c:if test="${not empty errorMsg}">
            <h4 class="error">${errorMsg}</h4>
        </c:if>
        <c:if test="${not empty sameEmail}">
            <h4 class="same-email">${sameEmail}</h4>
        </c:if>

        <!-- Registration Form -->
        <form action="regSubmit" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required />

            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required />

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required />

            <label for="phoneno">Phone Number:</label>
            <input type="text" id="phoneno" name="phoneno" required />

            <input type="submit" value="Register" />
        </form>

        <!-- Additional Text -->
        <div class="additional-text">
            If already registered, <a href="loginPage">Click Here</a>
        </div>
    </div>
</body>
</html>
