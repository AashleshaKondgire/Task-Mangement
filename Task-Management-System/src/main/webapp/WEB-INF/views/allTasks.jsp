<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Task Management</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
    background-color: #000000;
    font-family: 'Roboto', sans-serif;
    color: #ffffff;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.main-content {
    padding: 40px;
    text-align: center;
}

h1 {
    color: #ffffff;
    text-shadow: 1px 1px 4px rgba(255, 255, 255, 0.3);
    font-size: 3rem;
    margin-bottom: 40px;
    text-transform: uppercase;
    letter-spacing: 3px;
    animation: fadeInDown 1s ease-in-out;
}

.task-table {
    margin-top: 30px;
    background-color: rgba(255, 255, 255, 0.05);
    border-radius: 20px;
    box-shadow: 0 8px 20px rgba(255, 255, 255, 0.1);
    overflow: hidden;
    animation: slideInUp 1s ease-in-out;
    border: 1px solid #ffffff20;
}

.table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}

.table th {
    background-color: #333333;
    color: #f1f1f1;
    padding: 15px;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 2px;
    border-bottom: 2px solid #444444;
}

.table td {
    padding: 15px;
    color: #ffffff;
    background-color: #111111;
    border-bottom: 1px solid #444444;
    font-size: 1rem;
}

.table-hover tbody tr:hover {
    background-color: #222222;
    transition: background-color 0.3s ease-in-out;
}

.btn-sm {
    padding: 10px 20px;
    border-radius: 30px;
    font-size: 0.9rem;
    font-weight: 500;
    color: #ffffff;
    border: none;
}

.btn-warning {
    background-color: #f1c40f;
    transition: background-color 0.3s ease-in-out;
}

.btn-warning:hover {
    background-color: #f39c12;
}

.btn-danger {
    background-color: #e74c3c;
    transition: background-color 0.3s ease-in-out;
}

.btn-danger:hover {
    background-color: #c0392b;
}

/* Create Task/View Tasks button */
.action-btn {
    margin-top: 30px;
    background-color: #ffffff;
    color: #000000;
    font-size: 1.2rem;
    padding: 15px 30px;
    border-radius: 50px;
    box-shadow: 0 5px 15px rgba(255, 255, 255, 0.1);
    border: none;
    transition: all 0.3s ease-in-out;
}

.action-btn:hover {
    background-color: #f1f1f1;
    transform: translateY(-5px);
}

.action-btn:focus {
    outline: none;
}

/* Footer */
footer {
    margin-top: auto;
    padding: 20px;
    background-color: #111111;
    color: #f1f1f1;
    text-align: center;
    font-size: 1rem;
}

footer a {
    color: #f1c40f;
    text-decoration: none;
    transition: color 0.3s ease-in-out;
}

footer a:hover {
    color: #ffffff;
}

/* Animations */
@keyframes fadeInDown {
    from {
        opacity: 0;
        transform: translateY(-50px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes slideInUp {
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


    <!-- Main Content -->
    <div class="main-content">
        <h1 class="text-center">Your Tasks</h1>
        
        <!-- Action Button -->
        <div class="text-center">
            <button class="action-btn" onclick="location.href='/tasks/create'"><i class="fas fa-plus"></i> Create Task</button>
            <button class="action-btn" onclick="location.href='/tasks'"><i class="fas fa-list"></i> View Tasks</button>
        </div>

        <div class="table-responsive task-table">
            <table class="table table-hover table-bordered">    
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Priority</th>
                        <th>Status</th>
                        <th>Due Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="task" items="${tasks}">
                        <tr>
                            <td>${task.id}</td>
                            <td>${task.title}</td>
                            <td>${task.priority}</td>
                            <td>${task.status}</td>
                            <td>${task.dueDate}</td>
                            <td>
                                <a href="/tasks/edit/${task.id}" class="btn btn-success btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                <a href="/tasks/delete/${task.id}" class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i> Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap and JS scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
