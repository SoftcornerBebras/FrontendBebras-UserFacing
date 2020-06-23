import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "components/CustomButtons/Button.js";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import classNames from "classnames";

import { Tab } from "@material-ui/core";
const useStyles = makeStyles(styles);
export default function Practicechlng(props) {
  const classes = useStyles();
  return (
    <div>
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
          <img
            alt="Can't load"
            src={require("assets/img/practicecha.gif")}
            style={{ width: "100%", height: "inherit" }}
          ></img>
          <Button href="/studenthome/pc" color="primary">
            {" "}
            Get started
          </Button>
        </div>
      </div>
    </div>
  );
}
