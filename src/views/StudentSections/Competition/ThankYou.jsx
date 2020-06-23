import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import classNames from "classnames";
import { Tab } from "@material-ui/core";
import Paper from "@material-ui/core/Paper";
import Button from "@material-ui/core/Button";
import bg from "../../../images/backg.jpg";
import "../PracticeChallenge/Page.css";
import "../PracticeChallenge/pch.css";

const useStyles = makeStyles(styles);

export default function SimplePaper(props) {
  const classes = useStyles();

  return (
    <div>
      <GridContainer style={{ backgroundColor: "#0366E7" }}>
        <GridItem
          xs={12}
          sm={12}
          md={12}
          style={{ backgroundColor: "#0091b4", textAlign: "center" }}
        >
          <h1 className={classes.title} style={{ color: "#ffffff" }}>
            Thank You
          </h1>
          <br />
          <br />
          <br />
          <Tab></Tab>
        </GridItem>
      </GridContainer>
      <div
        className={classNames(classes.main, classes.mainRaised)}
        style={{ margin: "-5% 11% 0% 10%", paddingBottom: "1%" }}
      >
        <div className={classes.container}>
          <br></br>
          <br></br>
          <div style={{ margin: "10px" }}>
            <link
              href="https://fonts.googleapis.com/css?family=Dancing+Script|Pacifico&display=swap"
              rel="stylesheet"
            ></link>
            <Paper elevation={24} square={false} rounded={10}>
              <div
                style={{
                  backgroundImage: `url(${bg})`,
                  backgroundPosition: "center",
                  backgroundSize: "cover",
                  backgroundRepeat: "no-repeat",
                  height: "inherit",
                }}
              >
                <center>
                  <br></br>
                  <br></br>
                  <h1
                    style={{
                      fontFamily: " Pacifico, cursive",
                      fontSize: "500%",
                      color: "#191970",
                    }}
                  >
                    Thank You
                  </h1>
                  <br></br>
                  <h3 style={{ fontFamily: " Dancing Script, cursive" }}>
                    “When you know better you do better.” – Maya Angelou
                  </h3>
                  <br></br>
                  <Button
                    variant="outlined"
                    href="/studenthome/HomeMain"
                    color="primary"
                  >
                    Back to Home
                  </Button>
                  <br></br>
                  <br></br>
                </center>
              </div>
            </Paper>
          </div>
        </div>
      </div>
    </div>
  );
}
