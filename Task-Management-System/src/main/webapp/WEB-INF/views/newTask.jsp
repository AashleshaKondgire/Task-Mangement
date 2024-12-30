<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Create New Task</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
    background-color: #111; /* Dark background */
    color: #f1f1f1; /* Light text */
    font-family: 'Roboto', sans-serif; /* Modern font */
}

.navbar-vertical {
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 220px;
    background: #000; /* Solid black */
    padding-top: 20px;
    box-shadow: 4px 0 8px rgba(0, 0, 0, 0.5);
    transition: all 0.3s ease-in-out;
}

.navbar-vertical .navbar-brand {
    font-size: 1.8rem;
    font-weight: bold;
    color: #fff; /* White text */
    margin-left: 20px;
    letter-spacing: 2px;
}

.navbar-vertical .nav-item {
    margin: 15px 0;
}

.navbar-vertical .nav-link {
    color: #ccc; /* Light gray text */
    font-size: 1.2rem;
    padding: 15px;
    display: flex;
    align-items: center;
    transition: all 0.3s ease;
}

.navbar-vertical .nav-link:hover {
    background-color: #333; /* Darker hover */
    color: #fff;
    transform: translateX(5px);
}

.navbar-vertical .nav-link i {
    margin-right: 10px; /* Space for icons */
}

.main-content {
    margin-left: 240px;
    padding: 30px;
    background-color: #222; /* Darker background */
    min-height: 100vh;
}

.form-container {
    margin-top: 50px;
    padding: 40px;
    background: #1c1c1c; /* Dark background */
    border-radius: 10px;
    box-shadow: 0 12px 20px rgba(0, 0, 0, 0.5);
    transition: transform 0.3s ease;
    animation: fadeInUp 1s ease-in-out;
}

h3 {
    color: #fff;
    text-align: center;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 2px;
}

label {
    font-weight: bold;
    color: #ccc;
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


.btn-action {
    background-color: #ffffff; /* Modern blue */
    color: #000000;
    border: none;
    border-radius: 50px;
    padding: 12px 30px;
    font-size: 1.2rem;
    font-weight: bold;
    display: block;
    width: 100%;
    margin: 10px 0;
    transition: all 0.3s ease-in-out;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.btn-action:hover {
    background-color: #f1f1f1;
    transform: translateY(-5px);
}

.btn-primary {
    background-color: #198754; /* Modern green */
    border: none;
    border-radius: 50px;
    padding: 12px 30px;
    font-size: 1.2rem;
    font-weight: bold;
    transition: all 0.3s ease-in-out;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
}

.btn-primary:hover {
    background-color: #146c43;
    transform: translateY(-5px);
}

footer {
    margin-top: 50px;
    padding: 20px;
    background-color: #000;
    color: #f1f1f1;
    text-align: center;
}

footer a {
    color: #0d6efd;
    text-decoration: none;
    transition: color 0.3s ease-in-out;
}

footer a:hover {
    color: #fff;
    text-decoration: underline;
}

/* Animations */
@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(100px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
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
                <div class="col-md-6">
                    <div class="form-container">
                        <h3>Create a Task</h3>
                        <form action="/tasks/create" method="POST">
                            <div class="form-group">
                                <label for="title">Task Title</label>
                                <input type="text" class="form-control" id="title" name="title" placeholder="Enter task title" required>
                            </div>
                            <div class="form-group">
                                <label for="description">Task Description</label> 
                                <textarea class="form-control" id="description" name="description" rows="4" placeholder="Enter task description" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="priority">Priority</label>
                                <input type="text" class="form-control" id="priority" name="priority" placeholder="Enter priority" required>
                            </div>
                            <div class="form-group">
                                <label for="status">Status</label>
                                <select class="form-control" id="status" name="status">
                                    <option value="OPEN">Open</option>
                                    <option value="CLOSED">Closed</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="dueDate">Due Date</label>
                                <input type="date" class="form-control" id="dueDate" name="dueDate" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-plus-circle"></i> Create Task</button>
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
