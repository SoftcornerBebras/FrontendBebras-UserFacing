import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import CompetitionRelated from "./Analysis/CompetitionRelated.jsx";
const useStyles = makeStyles(styles);
export default function Analysis1(props) {
  const classes = useStyles();

  return (
    <div>
      <GridContainer style={{ backgroundColor: "#0366E7" }}>
        <GridItem
          xs={12}
          sm={12}
          md={12}
          style={{ backgroundColor: "#000000", textAlign: "center" }}
        >
          <h1 className={classes.title} style={{ color: "#FFFFFF" }}>
            Analysis
          </h1>
        </GridItem>
      </GridContainer>
      <CompetitionRelated />
    </div>
  );
}
