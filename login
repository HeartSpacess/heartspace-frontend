<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HeartSpace - Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e3f2fd;
            color: #333;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #1976d2;
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #1565c0;
            padding: 10px;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            text-align: center;
        }
        .section {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            text-align: left;
        }
        .button {
            background-color: #1565c0;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .button:hover {
            background-color: #0d47a1;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <header>
        HeartSpace 💙 - Login
    </header>
    <nav>
        <a href="index.html">Home</a>
        <a href="forums.html">Forums</a>
        <a href="quizzes.html">Quizzes</a>
        <a href="confessions.html">Confessions</a>
        <a href="experts.html">Expert Advice</a>
        <a href="login.html">Login</a>
        <a href="signup.html">Sign Up</a>
        <a href="guest.html">Guest Mode</a>
        <a href="friends.html">Find Friends</a>
        <a href="mood.html">Share Mood</a>
    </nav>
    <div class="container">
        <div class="section">
            <h2>Login to Your Account</h2>
            <form>
                <input type="text" placeholder="Username or Email" required>
                <input type="password" placeholder="Password" required>
                <button class="button">Login</button>
            </form>
        </div>
    </div>
</body>
</html>
