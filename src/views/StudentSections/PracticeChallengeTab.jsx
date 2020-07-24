import React from "react";
import { useContext } from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "components/CustomButtons/Button.js";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import classNames from "classnames";

import { Tab } from "@material-ui/core";
import { ShepherdTourContext } from "react-shepherd";
import "shepherd.js/dist/css/shepherd.css";

const useStyles = makeStyles(styles);
export default function Practicechlng(props) {
  const classes = useStyles();
  const tour = useContext(ShepherdTourContext);
  return (
    <div>
      {console.log(tour)}
      <link rel="stylesheet" href="shepherd.js/dist/css/shepherd.css" />
      <script src="shepherd.js/dist/js/shepherd.min.js"></script>
      <GridContainer>
        <GridItem
          xs={12}
          sm={12}
          md={12}
          style={{ backgroundColor: "#0091b4", textAlign: "center" }}
        >
          <h1 className={classes.title} style={{ color: "#ffffff" }}>
            Practice Challenge
          </h1>
          {console.log(classes.title)}
          <br />
          <br />
          <br />
          <Tab></Tab>
        </GridItem>
      </GridContainer>

      <div
        className={classNames(classes.main, classes.mainRaised)}
        style={{ margin: "-5% 9% 0% 10%" }}
      >
        <div className={classes.container}>
          {/* <ShepherdTour steps={newSteps} tourOptions={tourOptions}>
          <Content />
        </ShepherdTour> */}
          <img
            alt="Can't load"
            src={require("assets/img/prac2.gif")}
            style={{ width: "100%", height: "50%" }}
          ></img>
          <br></br>
          <center>
            <Button
              href="/studenthome/pc"
              color="primary"
              style={{ width: "55%", fontSize: "100%" }}
            >
              {" "}
              Get started
            </Button>
          </center>
        </div>
      </div>
    </div>
  );
}
