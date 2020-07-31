import React from "react";
// nodejs library that concatenates classes
import classNames from "classnames";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
// @material-ui/icons
import Button from "components/CustomButtons/Button.js";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Divider from "@material-ui/core/Divider";
import profile from "../../../images/bebrassquirrel.jpg";
import Dialog from "@material-ui/core/Dialog";
import DialogActions from "@material-ui/core/DialogActions";
import DialogContent from "@material-ui/core/DialogContent";
import DialogContentText from "@material-ui/core/DialogContentText";
import DialogTitle from "@material-ui/core/DialogTitle";
import styles from "assets/jss/material-kit-react/views/profilePage.js";
import { userService } from "../../../services/user.service.jsx";
import { useHistory } from "react-router-dom";
import "../PracticeChallenge/Page.css";
import "../PracticeChallenge/pch.css";
const useStyles = makeStyles(styles);
export default function CompetitionTab(props) {
  const history = useHistory();
  const classes = useStyles();
  const imageClasses = classNames(
    classes.imgRaised,
    classes.imgRoundedCircle,
    classes.imgFlui
  );

  const [open, setOpen] = React.useState(false);
  const [scroll, setScroll] = React.useState("paper");
  const [userdata, setUserdata] = React.useState([]);
  const [competitionName, setCompetitionName] = React.useState("");

  const handleClickOpen = (scrollType, cmpName) => () => {
    setOpen(true);
    setScroll(scrollType);
    setCompetitionName(cmpName.competitionname);
  };
  const handleLogin = () => {
    history.push("/login-page");
  };
  const handleclosepopup = () => {
    setOpen(false);
  };
  const handleClose = () => {
    setOpen(false);
    userService.getCompetitionQues(competitionName).then(
      (user) => {
        let userd = user;
        sessionStorage.setItem("data", JSON.stringify(userd));
        sessionStorage.setItem(
          "competitionName",
          JSON.stringify(competitionName)
        );

        history.push("/challenge");
      },
      (error) => {
        console.log(error);
      }
    );
  };

  const descriptionElementRef = React.useRef(null);
  React.useEffect(() => {
    // code to run on component mount

    userService.getCompetitionList().then(
      (user) => {
        setUserdata(user);
      },
      (error) => {}
    );
  }, []);
  React.useEffect(() => {
    if (open) {
      const { current: descriptionElement } = descriptionElementRef;
      if (descriptionElement !== null) {
        descriptionElement.focus();
      }
    }
  }, [open]);
  return (
    <div>
      <br></br>
      <br></br>
      <div className="whitebg">
        {sessionStorage.getItem("Authenticated") &&
          userdata.length !== 0 &&
          userdata.map((value, index) => {
            return (
              <div key={index} className="compcard">
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
                              {value.competitionname}
                            </h3>
                            <h6 style={{ color: "#000000" }}>
                              {" "}
                              “Start Date ” – {value.startDate} “ End Date ” –{" "}
                              {value.endDate} “ test Duration ” -{" "}
                              {value.testDuration} {value.status}{" "}
                            </h6>

                            {!value.attempted ? (
                              <Button
                                variant="contained"
                                onClick={handleClickOpen("paper", value)}
                                color="primary"
                              >
                                Start
                              </Button>
                            ) : (
                              <strong>
                                <span style={{ color: "red" }}>
                                  You have already attempted this test!!{" "}
                                </span>
                              </strong>
                            )}
                          </div>
                        </div>
                      </GridItem>
                    </GridContainer>
                  </div>
                </div>
              </div>
            );
          })}

        {!sessionStorage.getItem("Authenticated") && (
          <div className="compcard">
            <div>
              <div>
                <GridContainer justify="center">
                  <GridItem>
                    <div className={classes.profile}>
                      <div>
                        <img src={profile} alt="..." className={imageClasses} />
                      </div>
                      <div className={classes.name}>
                        <h3 className={classes.title}>
                          You haven't logged in :(
                        </h3>
                        <h6 style={{ color: "#000000", fontFamily: "cursive" }}>
                          {" "}
                          Please Login to View the competitions which you have
                          registered for{" "}
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
                        <img src={profile} alt="..." className={imageClasses} />
                      </div>
                      <div className={classes.name}>
                        <h3 className={classes.title}>
                          The competitions might be upcoming :)
                        </h3>
                        <h6 style={{ color: "#000000", fontFamily: "cursive" }}>
                          {" "}
                          Let's wait for it to start, If you haven't registered
                          ,please contact you Coordinator(Teacher).{" "}
                        </h6>
                      </div>
                    </div>
                  </GridItem>
                </GridContainer>
              </div>
            </div>
          </div>
        )}
        <Dialog
          open={open}
          onClose={handleclosepopup}
          scroll={scroll}
          aria-labelledby="scroll-dialog-title"
          aria-describedby="scroll-dialog-description"
        >
          <DialogTitle id="scroll-dialog-title">
            PLEASE READ THE INSTRUCTIONS
          </DialogTitle>
          <DialogContent dividers={scroll === "paper"}>
            <DialogContentText
              id="scroll-dialog-description"
              ref={descriptionElementRef}
              tabIndex={-1}
              component={"div"}
            >
              <ul component={"div"}>
                <li>
                  Each participating student will need a computer connected to
                  the internet.
                </li>
                <Divider light />
                <li>
                  If your school has limited lab space, you can run it on
                  multiple days. If you decide to do so, please try to limit the
                  interaction between students who have completed the Bebras India challenge
                  already and those who still have to complete it.
                </li>
                <Divider light />
                <li>
                  Hope You have taken practice challenges available .They will
                  help you familiarize with the tasks and format.
                </li>
              </ul>
              <Divider light />
              <ul>
                <li>
                  The format of the challenge is there are 9-15 multiple-choice
                  questions.{" "}
                </li>
                <Divider light />
                <li>
                  {" "}
                  Ask ypur Coordinator to Supervise the challenge. The system
                  will give each student exactly some fixed minutes to answer
                  the questions. The timer will start as soon as you click start
                  Test
                </li>
                <Divider light />
                <li>
                  {" "}
                  Ask your Teachers can provide scrap paper and pens/pencils for
                  solving the problems.
                </li>
              </ul>
              <Divider light />
              <ul>
                <li>
                  Make sure you submit the test of every student on time. We
                  will reward the students with a certificate.
                </li>
                <Divider light />
                <li>
                  The solutions will be discussed with your class by your
                  Teachers.{" "}
                </li>
                <Divider light />
                <li>
                  They are available online after participation and give
                  detailed information about the connections to Computer
                  Science.
                </li>
              </ul>
            </DialogContentText>
          </DialogContent>
          <DialogActions>
            <Button onClick={handleClose} color="primary">
              START THE TEST
            </Button>
          </DialogActions>
        </Dialog>
      </div>
    </div>
  );
}
