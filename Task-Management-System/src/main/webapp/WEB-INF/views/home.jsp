<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Management Application</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #1c1c1c; /* Dark background */
            color: #ffffff; /* White text */
        }

        .container {
            position: relative; /* Relative position for absolute child elements */
            margin-top: 100px;
            text-align: center;
            z-index: 1; /* Ensure content is above background */
        }

        .heading {
            font-size: 36px;
            margin-bottom: 20px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .sub-heading {
            font-size: 20px;
            margin: 10px 0 30px;
            opacity: 0.8; /* Slightly faded for a subtle effect */
        }

        .btn {
            background-color: #28a745; /* Green button */
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 30px;
            font-size: 20px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .btn:hover {
            background-color: #218838; /* Darker green on hover */
            transform: translateY(-2px); /* Lift effect */
        }

        /* Background Image */
        .bg-image {
            background-image: url('https://source.unsplash.com/1600x900/?tasks,work'); /* Example image */
            background-size: cover;
            background-position: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0; /* Behind content */
            filter: blur(5px); /* Slight blur for focus */
        }

        /* Video Section */
        .video-container {
            margin: 20px auto;
            max-width: 800px;
            border-radius: 15px;
            overflow: hidden; /* Prevent overflow */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .video-container video {
            width: 100%;
            height: auto;
        }

        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            padding: 10px 0;
            background-color: #333; /* Dark footer */
            text-align: center;
        }

        footer a {
            color: #ffffff;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        footer a:hover {
            color: #28a745; /* Green on hover */
        }
    </style>
</head>
<body>

<!-- Background Image -->
<div class="bg-image"></div>

<div class="container">
    <h1 class="heading">Welcome to Task Management Application</h1>
    <p class="sub-heading">Manage your tasks easily and efficiently.</p>
    
    <form action="tasks" method="get">
        <button class="btn">Go to Tasks <i class="fas fa-tasks"></i></button>
    </form>

</div>

<footer>
    <p>&copy; 2024 Task Management App. <a href="#">Privacy Policy</a></p>
</footer>

</body>
</html>
