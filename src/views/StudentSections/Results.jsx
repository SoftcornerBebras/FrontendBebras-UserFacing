import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import classNames from "classnames";
import { Tab } from "@material-ui/core";
import StudentResult from "./StudentResult/StudentResult.jsx";
const useStyles = makeStyles(styles);
export default function Results(props) {
  const classes = useStyles();
  return (
    <div>
      <GridContainer>
        <GridItem
          xs={12}
          sm={12}
          md={12}
          style={{ backgroundColor: "#0091B4", textAlign: "center" }}
        >
          <h1 className={classes.title} style={{ color: "#FFFFFF" }}>
            Result
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
        <div>
          <br></br>
          <br></br>
          <StudentResult />
        </div>
      </div>
    </div>
  );
}
