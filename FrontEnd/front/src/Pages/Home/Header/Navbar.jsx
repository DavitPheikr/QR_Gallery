import React from 'react';
import './Navbar.css';
import { Link } from "react-router-dom";



function Header(){
    return(
        <header className="header">

            <nav className = "nav container">

                <ul className = "nav_list"> 

                    <li className = "nav-logo-item">
                        <div className="logo">

                            <Link to="/">
                                <img src="./file.png" alt="logoHere" id = "myLogo"/>
                            </Link>

                        </div>
                    </li>

                    <li className = "nav-item">
                        <Link to="/about-us" id = "about-button">About Us</Link>
                    </li>

                    <li className = "nav-item">
                        <Link to="/sign-in" id = "signin-button">Sign In</Link>
                    </li>

                    
                </ul>
                
            </nav>

           
        </header>
    )
}

export default Header