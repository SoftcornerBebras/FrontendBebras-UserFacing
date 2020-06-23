import React from "react";
// nodejs library that concatenates classes
import classNames from "classnames";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "components/CustomButtons/Button.js";
import Parallax from "components/Parallax/Parallax.js";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import { Tab } from "@material-ui/core";
// Sections for this page
import BebrasInformation from "./LandingPageSections/BebrasInformation.jsx";
import Toppers from "./LandingPageSections/Toppers.jsx";
const useStyles = makeStyles(styles);
export default function HomeMain(props) {
  const classes = useStyles();
  return (
    <div>
      <Parallax image={require("assets/img/schoolhome.gif")}>
        <div className={classes.container}>
          <GridContainer>
            <GridItem xs={12} sm={12} md={6}>
              <h1 className={classes.title}>
                We care about children education
              </h1>
              <h4>
                Come all, let{"'"}s learn about computational thinking and
                problem solving skills. And the best part?{" "}
                <strong>It’s free!</strong>
              </h4>
              <br />
              <Button
                color="danger"
                size="lg"
                href="https://www.youtube.com/watch?v=nbbfz-xXSOc"
                target="_blank"
                rel="noopener noreferrer"
              >
                <i className="fas fa-play" />
                Watch video
              </Button>
            </GridItem>
          </GridContainer>
        </div>
      </Parallax>
      <div
        className={classNames(classes.main, classes.mainRaised)}
        style={{ margin: "-5% 9% 0% 10%" }}
      >
        <div className={classes.container}>
          <BebrasInformation />
          <Toppers />
          <Tab></Tab>
        </div>
      </div>
    </div>
  );
}
