<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>HeartSpace - Login</title>
  <style>
    body {
      margin: 0;
      background-color: white;
      font-family: Arial, sans-serif;
    }
    header {
      background-color: #1976d2;
      color: white;
      padding: 20px;
      text-align: center;
    }
    header h1 {
      margin: 0;
      font-size: 28px;
    }
    main {
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 40px 20px;
    }
    .login-card {
      background-color: #f9f9f9;
      width: 320px;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
      text-align: left;
    }
    .login-card h2 {
      text-align: center;
      margin-top: 0;
      color: #1976d2;
      margin-bottom: 20px;
    }
    .login-form label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    .login-form input {
      width: 100%;
      padding: 8px;
      margin-bottom: 15px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .button {
      display: inline-block;
      background-color: #1976d2;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }
    .button:hover {
      background-color: #125aa6;
    }
    .signup-link {
      text-align: center;
      margin-top: 10px;
    }
    .signup-link a {
      text-decoration: none;
      color: #1976d2;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <header>
    <h1>Welcome Back to HeartSpace</h1>
  </header>
  <main>
    <div class="login-card">
      <h2>Login to Your Account</h2>
      <form id="loginForm" class="login-form">
        <!-- Email or Phone -->
        <label for="identifier">Email or Phone</label>
        <input 
          type="text" 
          id="identifier" 
          placeholder="Enter your email or phone" 
          required
        >

        <!-- Password -->
        <label for="password">Password</label>
        <input 
          type="password" 
          id="password" 
          placeholder="Enter your password" 
          required
        >
        
        <button type="submit" class="button">Login</button>
      </form>
      <div class="signup-link">
        <p>New here? <a href="signup.html">Create an account</a></p>
      </div>
    </div>
  </main>

  <script>
    const API_URL = "https://heartspace-backend.onrender.com"; // Change if needed

    document.getElementById('loginForm').addEventListener('submit', async (event) => {
      event.preventDefault();

      const identifier = document.getElementById('identifier').value;
      const password = document.getElementById('password').value;

      try {
        // Example POST request to login endpoint
        // The backend should accept either email or phone in one field
        const response = await fetch(`${API_URL}/login`, {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ identifier, password })
        });
        
        if (!response.ok) {
          alert('Login failed. Please check your credentials.');
          return;
        }
        
        const data = await response.json();
        alert('Login successful!');
        // Optionally redirect to profile or home page
        // window.location.href = 'profile.html';
      } catch (error) {
        alert('Error logging in.');
        console.error(error);
      }
    });
  </script>
</body>
</html>
