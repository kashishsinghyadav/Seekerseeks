<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Seeking</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- External CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style1.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-warning bg-warning">
    <div class="container">
        <a class="navbar-brand fw-bold fs-3" href="#">Job Portal</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="viewalljobs">All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="https://telusko.com/">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Section -->
<div class="container mt-5 dashboard-container">

    <div class="text-center mb-5">
        <h1 class="dashboard-title">Welcome to Job Portal</h1>
        <p class="dashboard-subtitle">Choose an action below</p>
    </div>

    <div class="row g-4">

        <!-- View Jobs Card -->
        <div class="col-md-6">
            <div class="card dashboard-card text-center">
                <div class="card-body">
                    <h4 class="card-title mb-3">Explore Jobs</h4>
                    <a href="/viewalljobs" class="btn btn-primary btn-lg dashboard-btn">
                        View All Jobs
                    </a>
                </div>
            </div>
        </div>

        <!-- Add Job Card -->
        <div class="col-md-6">
            <div class="card dashboard-card text-center">
                <div class="card-body">
                    <h4 class="card-title mb-3">Post a Job</h4>
                    <a href="/addjob" class="btn btn-success btn-lg dashboard-btn">
                        Add Job
                    </a>
                </div>
            </div>
        </div>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>