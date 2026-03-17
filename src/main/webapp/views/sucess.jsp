<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Added Successfully</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- External CSS -->
    <link rel="stylesheet" href="style.css">
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
        <a class="navbar-brand fs-3 fw-bold" href="#">Telusko Job Portal</a>

        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Success Section -->
<div class="container mt-5 success-container">

    <div class="text-center mb-4">
        <h2 class="text-success">✅ Job Posted Successfully!</h2>
        <p>Your job has been added with the following details:</p>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card success-card">
                <div class="card-body">

                    <h4 class="card-title mb-3">
                        ${jobPost.postProfile}
                    </h4>

                    <p>
                        <strong>Description:</strong><br>
                        ${jobPost.postDesc}
                    </p>

                    <p>
                        <strong>Experience Required:</strong>
                        ${jobPost.reqExperience} years
                    </p>

                    <p><strong>Tech Stack:</strong></p>
                    <ul>
                        <c:forEach var="tech" items="${jobPost.postTechStack}">
                            <li>${tech}</li>
                        </c:forEach>
                    </ul>

                </div>

                <div class="card-footer text-center">
                    <a href="home" class="btn btn-primary">Go Home</a>
                    <a href="viewalljobs" class="btn btn-secondary">View All Jobs</a>
                </div>

            </div>

        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>