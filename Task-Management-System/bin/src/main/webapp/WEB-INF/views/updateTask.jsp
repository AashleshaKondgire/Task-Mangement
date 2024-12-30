<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Edit Task</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
    background: linear-gradient(135deg, #2e2e2e, #1a1a1a); /* Dark gray gradient background */
    font-family: 'Roboto', sans-serif; /* Modern font */
    color: #f5f5f5; /* Light text color */
}

/* Vertical Navbar with Black and White Gradient */
.navbar-vertical {
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 220px;
    background: linear-gradient(135deg, #000, #3d3d3d); /* Black gradient background */
    padding-top: 20px;
    box-shadow: 4px 0 10px rgba(0, 0, 0, 0.5); /* Soft shadow */
}

.navbar-vertical .navbar-brand {
    font-size: 1.8rem;
    font-weight: bold;
    color: #fff;
    margin-left: 20px;
}

.navbar-vertical .nav-item {
    margin: 10px 0;
}

.navbar-vertical .nav-link {
    color: #ccc;
    font-size: 1.2rem;
    padding: 15px;
    display: block;
    width: 100%;
    transition: all 0.3s ease;
}

.navbar-vertical .nav-link:hover {
    background-color: #444; /* Hover effect */
    color: #fff;
    transform: translateX(10px);
}

/* Modern icons (Font Awesome) */
.navbar-vertical .nav-link i {
    margin-right: 10px;
    font-size: 1.2rem;
}

/* Main content styling */
.main-content {
    margin-left: 240px;
    padding: 20px;
    background-color: #1a1a1a;
    min-height: 100vh;
}

/* Form container styling */
.form-container {
    background: #2e2e2e;
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.6);
    max-width: 600px;
    margin: 50px auto;
}

.form-container:hover {
    transform: scale(1.02);
    transition: transform 0.3s ease-in-out;
}

h3 {
    text-align: center;
    font-weight: bold;
    color: #f5f5f5;
    margin-bottom: 30px;
    letter-spacing: 1.5px;
}

/* Form input fields */
label {
    font-weight: bold;
    color: #ddd;
}

.form-control {
    background-color: #333;
    color: #fff;
    border: 1px solid #555;
    border-radius: 10px;
    padding: 15px;
    height: 50px; /* Set a fixed height for consistent sizing */
    line-height: 20px; /* Set a line height to ensure text is vertically centered */
    font-size: 1rem; /* Set font size for consistency */
    box-sizing: border-box; /* Ensures padding and border are included in total height */
}

.form-control:focus {
    border-color: #777;
    outline: none;
}

/* Button styles */
.btn-action {
    background-color: #ffffff;
    color: #000000;
    border: none;
    border-radius: 50px;
    padding: 12px 30px;
    font-size: 1.2rem;
    font-weight: bold;
    display: block;
    width: 100%;
    margin: 10px 0;
    transition: all 0.3s ease;
}

.btn-action:hover {
    background-color: #0056b3;
    transform: translateY(-5px);
}

/* Success button */
.btn-success {
    background-color: #28a745;
    color: #fff;
    border: none;
    border-radius: 50px;
    padding: 12px 30px;
    font-size: 1.2rem;
    font-weight: bold;
    transition: all 0.3s ease;
}

.btn-success:hover {
    background-color: #218838;
}

/* Footer styling */
footer {
    margin-top: 30px;
    background-color: #000;
    color: #f5f5f5;
    padding: 20px;
    text-align: center;
    border-top: 3px solid #007bff;
}

footer a {
    color: #007bff;
    text-decoration: none;
    transition: color 0.3s ease;
}

footer a:hover {
    color: #fff;
    text-decoration: underline;
}

/* Icons using Font Awesome */
footer .social-icons i {
    font-size: 1.5rem;
    margin: 0 10px;
    color: #007bff;
}

footer .social-icons i:hover {
    color: #fff;
    transition: color 0.3s ease;
}

    </style>
</head>
<body>

    <!-- Vertical Navbar -->
    <nav class="navbar-vertical">
        <a class="navbar-brand" href="#">Tasks</a>
        <ul class="navbar-nav">
            <li class="nav-item">
                <button class="btn-action" onclick="location.href='/tasks'"><i class="fas fa-tasks"></i> View Tasks</button>
            </li>
            <li class="nav-item">
                <button class="btn-action" onclick="location.href='/tasks/create'"><i class="fas fa-plus-circle"></i> Create Task</button>
            </li>
        </ul>
    </nav>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="form-container">
                        <h3>Update Task</h3>
                        <form action="/tasks/edit/${task.id}" method="POST">
                            <div class="form-group">
                                <label for="title">Task Title</label>
                                <input type="text" class="form-control" id="title" name="title" value="${task.title}" required>
                            </div>
                            <div class="form-group">
                                <label for="priority">Priority</label>
                                <input type="text" class="form-control" id="priority" name="priority" value="${task.priority}" required>
                            </div>
                            <div class="form-group">
                                <label for="status">Status</label>
                                <select class="form-control" id="status" name="status">
                                    <option value="OPEN" ${task.status == 'OPEN' ? 'selected' : ''}>Open</option>
                                    <option value="CLOSED" ${task.status == 'CLOSED' ? 'selected' : ''}>Closed</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="dueDate">Due Date</label>
                                <input type="date" class="form-control" id="dueDate" name="dueDate" value="${task.dueDate}" required>
                            </div>
                            <button type="submit" class="btn btn-success btn-block"><i class="fas fa-save"></i> Save Changes</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap and JS scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
