import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Grid from "@material-ui/core/Grid";
import styles from "assets/jss/material-kit-react/views/profilePage.js";
import classNames from "classnames";
import Button from "components/CustomButtons/Button.js";
import { Tab } from "@material-ui/core";
import profile from "../../../images/bebrassquirrel.jpg";
import { userService } from "../../../services/user.service";
import { useHistory } from "react-router-dom";
import "../PracticeChallenge/Page.css";
import "../PracticeChallenge/pch.css";
import Notiflix from "notiflix";
Notiflix.Block.Init({
  querySelectorLimit: 200,
  className: "notiflix-block",
  position: "absolute",
  zindex: 1000,
  backgroundColor: "rgba(0,0,0,0.5)",
  rtl: false,
  useGoogleFont: true,
  fontFamily: "Quicksand",
  cssAnimation: true,
  cssAnimationDuration: 300,
  svgSize: "95px",
  svgColor: "#ffffff",
  messageFontSize: "24px",
  messageMaxLength: 34,
  messageColor: "#ffffff",
});
export var data_of_results = null;
export var compName = null;
const useStyles = makeStyles(styles);
export default function StudentResCompList(props) {
  const history = useHistory();

  const classes = useStyles();
  const imageClasses = classNames(
    classes.imgRaised,
    classes.imgRoundedCircle,
    classes.imgFlui
  );
  const [userdata, setUserdata] = React.useState([]);

  const handleClickOpen = (cmpName) => () => {
    sessionStorage.setItem("competition", JSON.stringify(cmpName));
    history.push({
      pathname: "/studenthome/results",
    });
  };
  const handleLogin = () => {
    history.push("/login-page");
  };
  React.useEffect(() => {
    // code to run on component mount
    Notiflix.Block.Dots("body");
    userService.getCompetitionNameResultList().then(
      (user) => {
        Notiflix.Block.Remove("body");
        setUserdata(user);
      },
      (error) => {
        Notiflix.Block.Remove("body");
       
        console.log(error.response.data);
      }
    );
  }, []);
  return (
    <div className="element">
      <GridContainer style={{ backgroundColor: "#0366E7" }}>
        <GridItem
          xs={12}
          sm={12}
          md={12}
          style={{ backgroundColor: "#0091b4", textAlign: "center" }}
        >
          <h1 className={classes.title} style={{ color: "#ffffff" }}>
            Student Result
          </h1>
          <br />
          <br />
          <br />
          <Tab></Tab>
        </GridItem>
      </GridContainer>
      <div
        className={classNames(classes.main, classes.mainRaised)}
        style={{ margin: "-5% 11% 0% 10%" }}
      >
        <br></br>
        <br></br>
        <div className="whitebg">
          <div>
            <div>
              <Grid
                container
                direction="row"
                justify="space-evenly"
                alignItems="center"
                spacing={4}
              >
                {sessionStorage.getItem("Authenticated") &&
                  userdata.length !== 0 &&
                  userdata.map((value, index) => {
                    return (
                      <div key={index} className="resultcard">
                        <Grid item>
                          <div className={classes.profile}>
                            <div>
                              <img
                                src={profile}
                                alt="..."
                                className={imageClasses}
                              />
                            </div>
                            <div className={classes.name}>
                              <h3 className={classes.title}>{value}</h3>
                              <h6 style={{ color: "#000000" }}>
                                {" "}
                                “Competitions will come and go, <br></br> your
                                determination will stay with you forever.”{" "}
                              </h6>

                              <Button
                                variant="contained"
                                onClick={handleClickOpen(value)}
                                color="primary"
                              >
                                View Results
                              </Button>
                            </div>
                          </div>
                        </Grid>
                      </div>
                    );
                  })}
              </Grid>
            </div>
          </div>
          {!sessionStorage.getItem("Authenticated") && (
            <div className="compcard">
              <div>
                <div>
                  <GridContainer justify="center">
                    <GridItem>
                      <div className={classes.profile}>
                        <div>
                          <img
                            src={profile}
                            alt="..."
                            className={imageClasses}
                          />
                        </div>
                        <div className={classes.name}>
                          <h3 className={classes.title}>
                            You haven't logged in :(
                          </h3>
                          <h6
                            style={{ color: "#000000", fontFamily: "cursive" }}
                          >
                            {" "}
                            Please Login to View the resultsof the competitions
                            which you have participated for{" "}
                          </h6>
                          <Button
                            variant="contained"
                            onClick={handleLogin}
                            color="primary"
                          >
                            Login
                          </Button>
                        </div>
                      </div>
                    </GridItem>
                  </GridContainer>
                </div>
              </div>
            </div>
          )}
          {sessionStorage.getItem("Authenticated") && userdata.length === 0 && (
            <div className="compcard">
              <div>
                <div>
                  <GridContainer justify="center">
                    <GridItem>
                      <div className={classes.profile}>
                        <div>
                          <img
                            src={profile}
                            alt="..."
                            className={imageClasses}
                          />
                        </div>
                        <div className={classes.name}>
                          <h3 className={classes.title}>
                            You haven't given any competitions :(
                          </h3>
                          <h6
                            style={{ color: "#000000", fontFamily: "cursive" }}
                          >
                            {" "}
                            Not Able to show Results,Please ask your coordinator
                            to enroll you in the upcoming competitions :({" "}
                          </h6>
                        </div>
                      </div>
                    </GridItem>
                  </GridContainer>
                </div>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
