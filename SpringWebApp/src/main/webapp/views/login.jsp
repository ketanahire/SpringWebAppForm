<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
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
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Error Message */
        h4 {
            color: red;
            text-align: center;
            font-size: 14px;
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
        }

        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Link Styling */
        .form-container a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
            display: block;
            text-align: center;
            margin-top: 15px;
        }

        .form-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Login</h2>
        
        <!-- Error Message -->
        <c:if test="${not empty errorMsg}">
            <h4>${errorMsg}</h4>
        </c:if>

        <!-- Login Form -->
        <form action="loginSubmit" method="post">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required />

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required />

            <input type="submit" value="Login" />
        </form>

        <!-- Registration Link -->
        <a href="regForm">If not registered, Click Here</a>
    </div>
</body>
</html>
