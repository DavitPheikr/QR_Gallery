import React from 'react';
import { Link } from "react-router-dom";
import './AboutUs.css'    
function AboutUs() {
    return (

        <div className = "about-container">
           
            <header className = "imprint-header">
                <Link to = "/">
                    <img src = "./Logo.jpg" alt = "logoHere" className = "myLogo"></img>
                </Link>
                <h2 classname= "imprintTitle">Imprint Page</h2>
            </header>

            <body className = "about-body-container">

        
                    <div className = "person-box">
                        <img src = "./Logo.jpg"></img>
                        <p className = "person-name">Davit Pheikrishvili</p>
                        <p className = "person-email">dpheikrishvili@constructor.university</p>
                    </div>

                    <div className = "person-box">
                    <img src = "./Logo.jpg"></img>
                    <p className = "person-name">Giorgi Ambokadze</p>
                    <p className = "person-email">gambokadze@constructor.university</p>
                    </div>

                    <div className = "person-box">
                    <img src = "./Logo.jpg"></img>
                    <p className = "person-name">Ana Naveriani</p>
                    <p className = "person-email">anaveriani@constructor.university</p>
                    </div>
             
                    <div className = "person-box">
                    <img src = "./Logo.jpg"></img>
                    <p className = "person-name">Alexandre Kutateladze</p>
                    <p className = "person-email">akutateladze@constructor.university</p>
                    </div>


                    <div className = "imprint-text">
                        <p>
                            This website is student lab work and does not necessarily reflect Constructor University opinions. 
                            Constructor University does not endorse this site, nor is it checked by Constructor University 
                            regularly, nor is it part of the official Constructor University web presence. 
                            For each external link existing on this website, we initially have checked that the target page 
                            does not contain contents which is illegal wrt. German jurisdiction. However, as we have no influence on such contents, this may change without our notice. Therefore we deny any responsibility for the websites referenced through our external links from here. 
                            No information conflicting with GDPR is stored in the server.

                        </p>
                    </div>



            </body>
            

        </div>
    );
}

export default AboutUs;
