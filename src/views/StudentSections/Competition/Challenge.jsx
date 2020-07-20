import React from "react";
import classNames from "classnames";
import { makeStyles } from "@material-ui/core/styles";
import Stepper from "@material-ui/core/Stepper";
import Step from "@material-ui/core/Step";
import StepButton from "@material-ui/core/StepButton";
import Button from "@material-ui/core/Button";
import GeneralQuestion from "./GeneralQuestion.jsx";
import { StepConnector } from "@material-ui/core";
import { MuiThemeProvider, createMuiTheme } from "@material-ui/core/styles";
import StepLabel from "@material-ui/core/StepLabel";
import CircleTimer, { timeRemaining } from "./CircularExamTimer";
import { useHistory } from "react-router-dom";
import { StyleRoot } from "radium";
import Grid from "@material-ui/core/Grid";
import { userService } from "services/user.service.jsx";
import Dialog from "@material-ui/core/Dialog";
import DialogActions from "@material-ui/core/DialogActions";
import DialogContent from "@material-ui/core/DialogContent";
import DialogContentText from "@material-ui/core/DialogContentText";
import DialogTitle from "@material-ui/core/DialogTitle";
import "../PracticeChallenge/Page.css";
import "../PracticeChallenge/pch.css";
import styles from "assets/jss/material-kit-react/components/stepperHead.js";
import Notiflix from "notiflix";

const useStylesHead = makeStyles(styles);
const useStyles = makeStyles((theme) => ({
  root: {
    width: "100%",
  },
  button: {
    marginRight: theme.spacing(1),
  },
  backButton: {
    marginRight: theme.spacing(1),
  },
  completed: {
    display: "inline-block",
    color: "green",
  },
  instructions: {
    marginTop: theme.spacing(1),
    marginBottom: theme.spacing(1),
  },
  connectorLine: {
    borderWidth: "8px",
  },

  icon: {},
}));
// const styles = {
//   fadeIn: {
//     animation: "x 3s",
//     animationName: Radium.keyframes(fadeIn, "fadeIn"),
//   },
// };
const muiTheme = createMuiTheme({
  overrides: {
    MuiStepIcon: {
      root: {
        color: "grey", // or 'rgba(0, 0, 0, 1)'
        "&$active": {
          color: "#008FB3",
        },
        "&$completed": {
          color: "#4caf50",
        },
      },
    },
  },
});

var quesdata = {};
export default function Challenge(props) {
  const history = useHistory();
  const [data, setData] = React.useState(null);
  const classesHead = useStylesHead();
  const classes = useStyles();
  const color = "#ffffff";
  const absolute = true;
  const fixed = true;
  const appBarClasses = classNames({
    [classesHead.appBar]: true,
    [classesHead[color]]: color,
    [classesHead.absolute]: absolute,
    [classesHead.fixed]: fixed,
  });
  // var second = 0;
  const newCompleted = new Set();
  let lastcompletedStep = 0;
  const [open, setOpen] = React.useState(false);
  const [second, setSecond] = React.useState(0);
  React.useEffect(() => {
    console.log("Came ");

    window.onbeforeunload = function () {
      if (sessionStorage.getItem("seconds")) {
        sessionStorage.removeItem("seconds");
      }

      sessionStorage.setItem("seconds", JSON.stringify(timeRemaining));
      return "Your work will be lost.";
    };

    Notiflix.Block.Dots("body");
    window.addEventListener("popstate", () => {
      if (sessionStorage.getItem("seconds")) {
        sessionStorage.removeItem("seconds");
      }

      sessionStorage.setItem("seconds", JSON.stringify(timeRemaining));
      window.history.go(1);
    });
    userService
      .getCompetitionQues(JSON.parse(sessionStorage.getItem("competitionName")))
      .then(
        (user) => {
          setData(user);
          if (sessionStorage.getItem("seconds")) {
            setSecond(JSON.parse(sessionStorage.getItem("seconds")));
          } else {
            var hms = user.timeduration;
            var a = hms.split(":"); // split it at the colons
            var seconds = +a[0] * 60 * 60 + +a[1] * 60 + +a[2];
            setSecond(seconds);
          }
          for (let i = 0; i < user.questions.length; i++) {
            if (user.questions[i].answered) {
              newCompleted.add(i);
              if (i === user.questions.length - 1) {
                // eslint-disable-next-line
                lastcompletedStep = i;
              } else {
                lastcompletedStep = i + 1;
              }
            }
            Notiflix.Block.Remove("body");
          }
        },
        (error) => {
          Notiflix.Block.Remove("body");
          console.log(error);
        }
      );
  }, [second]);

  const getSteps = () => {
    let st = new Array(quesdata.questions.length);
    for (let i = 0; i < st.length; i++) {
      st[i] = "question " + i;
    }
    return st;
  };
  const handleClickOpen = () => {
    setOpen(true);
    
  };

  const handleClose = () => {
    setOpen(false);
  };

  const handleCloseEndTest = () => {
    setOpen(false);
    console.log(newCompleted.size)
    sessionStorage.removeItem("seconds");
    history.push({
      pathname: "/testend",
      state: {
        completedSteps: completed.size,
        totalSteps: getSteps().length,
        timeRemaining: timeRemaining,
        studentEnrollmentID: data.studentEnrollmentID,
      },
    });
  };

  quesdata = JSON.parse(sessionStorage.getItem("data"));
  const [activeStep, setActiveStep] = React.useState(lastcompletedStep);
  const [completed, setCompleted] = React.useState(newCompleted);
  const steps = getSteps();
  const totalSteps = () => {
    return getSteps().length;
  };

  const isLastStep = () => {
    return activeStep === totalSteps() - 1;
  };

  const handleNext = () => {
    const newCompleted = new Set(completed);
    userService.doCompetitionStudentResponse().then(
      (status) => {
        //write logic to move to next question
        var response=JSON.parse(sessionStorage.getItem("datastudentresponse"))
        if(response.option!==""){
        newCompleted.add(activeStep);
        setCompleted(newCompleted);
        }
        var activestep = (activeStep + 1) % getSteps().length;
        setActiveStep(activestep);
        if (isLastStep()) {
          handleClickOpen();
        }
      },
      (error) => {
        console.log(error);
      }
    );
  };
  const handleBack = () => {
    setActiveStep((prevActiveStep) => prevActiveStep - 1);
  };

  const handleStep = (step) => () => {
    setActiveStep(step);
  };

  function isStepComplete(step) {
    return completed.has(step);
  }

  return (
    second !== 0 &&
    data !== null && (
      <div className={classes.root} style={{ backgroundColor: "#ffffff" }}>
        <StyleRoot>
          <div style={styles.fadeIn}>
            <MuiThemeProvider theme={muiTheme}>
              <Stepper
                alternativeLabel
                nonLinear
                activeStep={activeStep}
                className={appBarClasses}
                connector={
                  <StepConnector
                    classes={{
                      line: classes.connectorLine,
                    }}
                  />
                }
                style={{ backgroundColor: "#ffffff" }}
              >
                {steps.map((label, index) => {
                  const stepProps = {};
                  const buttonProps = {};
                  return (
                    <Step
                      key={label}
                      {...stepProps}
                      classes={{ completed: classes.completed }}
                    >
                      <StepButton
                        onClick={handleStep(index)}
                        completed={isStepComplete(index)}
                        {...buttonProps}
                      >
                        <StepLabel
                          StepIconProps={{ classes: { root: classes.icon } }}
                        ></StepLabel>
                      </StepButton>
                    </Step>
                  );
                })}
              </Stepper>
            </MuiThemeProvider>
            <br></br>
            <br></br>
            <br></br>
            <Grid container spacing={1}>
              <Grid item xs>
                <div className="competitionSkill">
                  <br></br>
                  <br></br>
                  <b>
                    <p>
                      CS Skill: {data.questions[activeStep].question_cs_skills}
                    </p>
                  </b>
                  <b>
                    <p>Domain: {data.questions[activeStep].question_domain}</p>
                  </b>
                  <b>
                    <p>Marks: {data.questions[activeStep].question_marks}</p>
                  </b>
                </div>
              </Grid>
              <Grid item xs>
                <div className="competitionNumber">
                  <br></br>
                  <h1 style={{ marginLeft: "30%" }}>{activeStep + 1}</h1>
                </div>
              </Grid>
              <Grid item xs>
                <div style={{ marginTop: "10px" }}>
                  <CircleTimer timer={second} />
                  <br />
                  <br />
                </div>
              </Grid>
            </Grid>
          </div>
        </StyleRoot>
        <div>
          {
            <div style={{ fontColor: "#000000" }}>
              <GeneralQuestion
                data={{
                  questionsren: data.questions[activeStep],
                  studentEnrollmentId: data.studentEnrollmentID,
                }}
                key={"" + activeStep}
              />
              <div>
                <br />
                <br />
                <Button
                  disabled={activeStep === 0}
                  onClick={handleBack}
                  className={classes.button}
                  style={{
                    width: "30%",
                    backgroundColor: "#008FB3",
                    color: "#ffffff",
                    marginLeft: "50px",
                  }}
                >
                  Back
                </Button>
                <Button
                  variant="contained"
                  color="primary"
                  onClick={handleNext}
                  className={classes.button}
                  size="large"
                  style={{
                    float: "right",
                    width: "30%",
                    backgroundColor: "#008FB3",
                    marginRight: "50px",
                  }}
                >
                  {activeStep === steps.length - 1 ? "Finish" : "Save and Next"}
                </Button>
              </div>
            </div>
          }
        </div>
        <br />
        <br />
        <br />
        <Dialog
          open={open}
          onClose={handleClose}
          aria-labelledby="alert-dialog-title"
          aria-describedby="alert-dialog-description"
        >
          <DialogTitle id="alert-dialog-title">{"End Test?"}</DialogTitle>
          <DialogContent>
            <DialogContentText id="alert-dialog-description">
              Do you really want to end the test?
            </DialogContentText>
          </DialogContent>
          <DialogActions>
            <Button onClick={handleClose} color="primary">
              NO
            </Button>
            <Button onClick={handleCloseEndTest} color="primary" autoFocus>
              YES
            </Button>
          </DialogActions>
        </Dialog>
      </div>
    )
  );
}
