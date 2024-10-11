import React from 'react';
import './Body.css';
import { Link } from "react-router-dom";
import images from "./images";
import CustomSlider from "./custom.slider.jsx";



function Body(){

    const slides = {
        
    }
    return(
        <body className = "body-container">

            <div className = "left-section">
                <div className = "text">
                    <h2 id = "explore-text"> Swipe To</h2>
                    <h2 id = "explore-text2"> Explore</h2>
                </div>
                    <div className = "App">
                        <CustomSlider>
                        {images.map((image, index) => {
                          return <img key={index} src={image.imgURL} alt={image.imgAlt} />;
                        })}
                        </CustomSlider>
                        
                    </div>            
            </div>

                
            

            <div className = "right-section">
                <h2 ClassName = "qr-text"> Unlock Your World</h2>
                <h2 ClassName = "qr-text">Scan to Connect</h2>

                <div className = "qr-box">
                    <img src="./QRcode.jpg" alt="Explore" widht = "200" height = "200"/>
                </div>
            </div>

        </body>
    )
}

export default Body;