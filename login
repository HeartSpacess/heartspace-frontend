<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HeartSpace - Login</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Login to HeartSpace</h1>
  </header>

  <nav>
    <a href="signup.html">Sign Up</a>
    <a href="index.html">Home</a>
  </nav>

  <main>
    <form id="loginForm" class="auth-form">
      <label for="loginEmail">Email:</label>
      <input type="email" id="loginEmail" placeholder="Enter your email" required>

      <label for="loginPassword">Password:</label>
      <input type="password" id="loginPassword" placeholder="Enter your password" required>

      <button type="submit" class="button">Login</button>
    </form>
  </main>

  <script>
    const API_URL = "https://heartspace-backend.onrender.com"; // Change if needed

    document.getElementById('loginForm').addEventListener('submit', async (event) => {
      event.preventDefault();
      const email = document.getElementById('loginEmail').value;
      const password = document.getElementById('loginPassword').value;

      // Example POST request to login endpoint
      try {
        const response = await fetch(`${API_URL}/login`, {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ email, password })
        });
        if (!response.ok) {
          alert('Login failed. Please check your credentials.');
          return;
        }
        const data = await response.json();
        alert('Login successful!');
        // Example: store token, redirect to profile
        // localStorage.setItem('token', data.token);
        // window.location.href = 'profile.html';
      } catch (error) {
        alert('Error logging in.');
        console.error(error);
      }
    });
  </script>
</body>
</html>
