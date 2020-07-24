import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import styles from "assets/jss/material-kit-react/views/profilePage.js";
import classNames from "classnames";
import Button from "components/CustomButtons/Button.js";
import { Tab } from "@material-ui/core";
import profile from "../../images/bebrassquirrel.jpg";
import { userService } from "../../services/user.service";
import { useHistory } from "react-router-dom";
import CompetitionRelated from "./Analysis/CompetitionRelated.jsx";
import UserIdRelated from "./Analysis/UserIdRelated.jsx";
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
  svgColor: "#FFFFFF",
  messageFontSize: "24px",
  messageMaxLength: 34,
  messageColor: "#FFFFFF",
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

  const handleLogin = () => {
    history.push("/login-page");
  };
  React.useEffect(() => {
    // code to run on component mount
    userService.getCompetitionNameResultList().then(
      (user) => {
        setUserdata(user);
      },
      (error) => {}
    );
  }, []);
  return (
    <div className="element">
      <GridContainer style={{ backgroundColor: "#0366E7" }}>
        <GridItem
          xs={12}
          sm={12}
          md={12}
          style={{ backgroundColor: "#0091B4", textAlign: "center" }}
        >
          <h1 className={classes.title} style={{ color: "#FFFFFF" }}>
            Student Analysis
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
          {sessionStorage.getItem("Authenticated") && userdata.length !== 0 && (
            <div>
              <UserIdRelated />
              <CompetitionRelated />
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
                            Not Able to show Analysis,Please Try again:({" "}
                          </h6>
                        </div>
                      </div>
                    </GridItem>
                  </GridContainer>
                </div>
              </div>
            </div>
          )}
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
                            Please Login to View the Analysis of the
                            competitions which you have participated for{" "}
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
        </div>
      </div>
    </div>
  );
}
