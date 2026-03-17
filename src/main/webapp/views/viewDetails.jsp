<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>

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

        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link active" href="viewalljobs">All Jobs</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Job List -->
<div class="container mt-5">

    <h2 class="text-center mb-4">Available Job Posts</h2>

    <!-- Empty State -->
    <c:if test="${empty jobPosts}">
        <div class="text-center">
            <h5>No jobs available 🚫</h5>
            <a href="addjob" class="btn btn-primary mt-3">Add First Job</a>
        </div>
    </c:if>

    <!-- Job Cards -->
    <div class="row g-4">

        <c:forEach var="jobPost" items="${jobPosts}">

            <div class="col-md-6 col-lg-4">

                <div class="card h-100 job-card">
                    <div class="card-body">

                        <!-- Title -->
                        <h5 class="card-title mb-3">
                                ${jobPost.postProfile}
                        </h5>

                        <!-- Description -->
                        <p class="card-text">
                            <strong>Description:</strong><br>
                                ${jobPost.postDesc}
                        </p>

                        <!-- Experience -->
                        <p class="card-text">
                            <strong>Experience:</strong>
                                ${jobPost.reqExperience} years
                        </p>

                        <!-- Tech Stack -->
                        <p class="mb-1"><strong>Tech Stack:</strong></p>
                        <ul>
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </c:forEach>
                        </ul>

                    </div>

                    <!-- Footer -->
                    <div class="card-footer text-center">
                        <a href="viewjob?postId=${jobPost.postId}" class="btn btn-primary btn-sm">
                            View Details
                        </a>
                    </div>

                </div>

            </div>

        </c:forEach>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>