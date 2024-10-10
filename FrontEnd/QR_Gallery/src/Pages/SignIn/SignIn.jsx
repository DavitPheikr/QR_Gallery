  import React from 'react';
  import './SignIn.css'; // Assuming the CSS file is in the same directory
  import { Link } from "react-router-dom";

  function SignIn() {
    return (
      
      <div className = "upperContainer">

        <header className="sign-in-header">
          <Link to="/">
            <img src="./Logo.jpg" alt="Camera Icon" className="camera-icon" />
          </Link>
        </header>

        
          <div className="form-container">

            <h1>Sign in</h1>
            <p>Welcome back!</p>

            <form action="#" method="post">
              <div className="input-group">
                <input type="email" name="email" placeholder="Email Address" required />
              </div>
              <div className="input-group">
                <input type="password" name="password" placeholder="Password" required />
              </div>

              <h2 id="noAccount1">Do not have an account?</h2>
              <Link to="/sign-up">
                <h2 id="noAccount2">Sign Up!</h2>
              </Link>

              <button type="submit" className="signinBttn">Log in</button>
            </form>
          </div>
        

        <footer className="myFooter">
          <p>Bla bla bla bla bla bla</p>
          <p><a href="mailto:QRgallery@gmail.com">QRgallery@gmail.com</a></p>
          <p><a href="https://something.com">something.com</a></p>
        </footer>
      </div>
    );
  }

  export default SignIn;
