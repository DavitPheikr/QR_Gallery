import React from 'react';
import './SignUp.css'; // Assuming styles are in the same directory
import { Link } from "react-router-dom";

const CreateAccount = () => {
  return (
    <div className="upper-container">

      <div className='left-container'>
        <div className="form-container">
          <form action="#" method="post">
            <div className="input-group">
              <input type="text" name="full-name" placeholder="Full Name" required />
            </div>
            <div className="input-group">
              <input type="text" name="username" placeholder="@Username" required />
            </div>
            <div className="input-group">
              <input type="email" name="email" placeholder="Email Address" required />
            </div>
            <div className="input-group">
              <input type="email" name="re-email" placeholder="Re-Email Address" required />
            </div>
            <div className="input-group">
              <input type="password" name="password" placeholder="Email Password" required />
            </div>
            <div className="input-group checkbox-group">
              <input type="checkbox" name="agreement" required />
              <label htmlFor="agreement">Terms and Conditions</label>
            </div>
            <button className='signup' type="submit">Create Account</button>
            <p className="signin">
              Already Have An Account? <Link to="/sign-in">Sign In</Link>
            </p>
          </form>
        </div>
      </div>

      <div className='right-container'>
        <div className="error-container">
          <p>If something is invalid, show errors here</p>
          <Link to = "/">
                <img src="./Logo.jpg" alt="Camera Icon" className="camera-icon" />
          </Link>
        </div>
      </div>

      <div className="signup-footer">
        <footer className="myFooter">
          <p>Bla bla bla bla bla bla</p>
          <p><a href="mailto:QRgallery@gmail.com">QRgallery@gmail.com</a></p>
          <p><a href="https://something.com">something.com</a></p>
        </footer>
      </div>

    </div>
  );
};

export default CreateAccount;
