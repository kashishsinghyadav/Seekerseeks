<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Post Job</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- External CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style1.css">
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
        <a class="navbar-brand fs-3 fw-bold" href="#">Telusko Job Portal</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="https://telusko.com/">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Form Section -->
<div class="container mt-5 addjob-container">
    <div class="row justify-content-center">
        <div class="col-md-7">

            <div class="card addjob-card">
                <div class="card-body">

                    <h2 class="text-center mb-4">Post a New Job</h2>

                    <form action="handleForm" method="post">

                        <!-- Post ID -->
                        <div class="mb-3">
                            <label class="form-label">Post ID</label>
                            <input type="text" class="form-control" name="postId" required>
                        </div>

                        <!-- Profile -->
                        <div class="mb-3">
                            <label class="form-label">Post Profile</label>
                            <input type="text" class="form-control" name="postProfile" required>
                        </div>

                        <!-- Description -->
                        <div class="mb-3">
                            <label class="form-label">Post Description</label>
                            <textarea class="form-control" name="postDesc" rows="3" required></textarea>
                        </div>

                        <!-- Experience -->
                        <div class="mb-3">
                            <label class="form-label">Required Experience</label>
                            <input type="number" class="form-control" name="reqExperience" required>
                        </div>

                        <!-- Tech Stack -->
                        <div class="mb-4">
                            <label class="form-label">Tech Stack</label>
                            <select multiple class="form-select" name="postTechStack">

                                <option>Java</option>
                                <option>JavaScript</option>
                                <option>Spring Boot</option>
                                <option>React</option>
                                <option>Angular</option>
                                <option>Node.js</option>
                                <option>Python</option>
                                <option>Django</option>
                                <option>Flask</option>
                                <option>Docker</option>
                                <option>Kubernetes</option>
                                <option>AWS</option>
                                <option>Azure</option>
                                <option>DevOps</option>
                                <option>Machine Learning</option>

                            </select>
                        </div>

                        <!-- Buttons -->
                        <div class="d-flex justify-content-between">
                            <a href="home" class="btn btn-secondary">Back</a>
                            <button type="submit" class="btn btn-primary">Submit Job</button>
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>