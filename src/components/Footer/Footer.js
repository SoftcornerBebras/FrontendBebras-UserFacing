/*eslint-disable*/
import React from "react";
// nodejs library to set properties for components
import PropTypes from "prop-types";
// nodejs library that concatenates classes
import classNames from "classnames";
// material-ui core components
import { makeStyles } from "@material-ui/core/styles";
import Grid from '@material-ui/core/Grid';
// @material-ui/icons
import Favorite from "@material-ui/icons/Favorite";
import styles from "assets/jss/material-kit-react/components/footerStyle.js";
  
const useStyles = makeStyles(styles);

export default function Footer(props) {
  const classes = useStyles();
  const { whiteFont } = props;
  const footerClasses = classNames({
    [classes.footer]: true,
    [classes.footerWhiteFont]: whiteFont
  });
  const aClasses = classNames({
    [classes.a]: true,
    [classes.footerWhiteFont]: whiteFont
  });
  return (
    <div>
      <link href="https://fonts.googleapis.com/css?family=Oswald|Special+Elite&display=swap" rel="stylesheet"></link>
      <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet"></link>
      <footer className={footerClasses} style={{
        "background":"linear-gradient(0deg, rgba(4,2,37,1) 0%, rgba(16,67,101,1) 45%, rgba(0,145,180,1) 95%)"
      }}>
      <div className={classes.container}>
        <Grid container spacing={4}>
        <Grid item xs>
              <b><h4 style={{ fontWeight: "bolder", fontFamily: "Oswald", fontSize: "20px"}}>ABOUT</h4></b>
              <p >CSpathshala  is an ACM India initiative to bring a modern computing curriculum to schools.
          </p>
        </Grid>
        <Grid item xs>
              <b><h4 style={{ fontWeight: "bolder", fontFamily: 'Oswald', fontSize: "20px"}}>SCHEDULE</h4></b>
              <p >Monday - Friday: 9.00 AM - 5.00 PM<br></br>
          Saturday- Sunday: Closed</p>
        </Grid>
        <Grid item xs >
              <b><h4 style={{ fontWeight: "bolder", fontFamily: "Oswald", fontSize: "20px"}}>CONTACT US</h4></b>
              <p >Address: Soft Corner, Karve Road, Pune<br></br>
Email: softcornercummins@gmail.com
              </p>
              <br></br>
              <a href="http://www.soft-corner.com/" style={{ "position": "absolute", "bottom": "0px", "color": "white" }}><p style={{ fontFamily: "Dancing Script",fontSize:"16px"}}>&copy; {1900 + new Date().getYear()} , made with{" "}
                <Favorite className={classes.icon} /> by{" "}
            Soft Corner for a better web.</p></a>
            </Grid>
            
      </Grid>
  </div>
    </footer>
    </div>
  );
}

Footer.propTypes = {
  whiteFont: PropTypes.bool
};
