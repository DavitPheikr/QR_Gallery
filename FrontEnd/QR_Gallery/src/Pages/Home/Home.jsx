import React from 'react';
import './Home.css';
import { Link } from "react-router-dom";
import Body from "./Body/Body.jsx"
import Header from "./Header/Navbar.jsx"
import Footer from "./Footer/Footer.jsx"

function Home() {
    
    return (
        <>
            <Header/>
            <Body/>
            <Footer/>   

        </>

    );
}

export default Home;
