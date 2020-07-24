import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "components/CustomButtons/Button.js";
import Card from "components/Card/Card.js";
import CardBody from "components/Card/CardBody.js";
import CardHeader from "components/Card/CardHeader.js";
import Stepper from "@material-ui/core/Stepper";
import Step from "@material-ui/core/Step";
import StepLabel from "@material-ui/core/StepLabel";
import StepContent from "@material-ui/core/StepContent";
import Typography from "@material-ui/core/Typography";
import Quote from "components/Typography/Quote.js";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import { Tab } from "@material-ui/core";
import classNames from "classnames";
import TeacherManual from "./Teacher/TeacherManual.jsx";
const useStyles = makeStyles(styles);
const usesty1 = makeStyles((theme) => ({
  root: {
    width: "100%",
  },
  button: {
    marginTop: theme.spacing(1),
    marginRight: theme.spacing(1),
  },
  actionsContainer: {
    marginBottom: theme.spacing(2),
  },
  resetContainer: {
    padding: theme.spacing(3),
  },
}));
function getSteps() {
  return ["FAQ", "School Requirements", "Participants"];
}

function getStepContent(step) {
  switch (step) {
    case 0:
      return (
        <GridContainer justify="center">
          <GridItem xs={12} sm={12} md={12}>
            <Card>
              <CardHeader
                style={{ backgroundColor: "#3D1172", color: "#ffffff" }}
              >
                How do my students participate?
              </CardHeader>
              <CardBody>
                <Quote
                  text="You can register as a coordinator once registration link is open. You can enter as many students as you want to and will create a log-in for them. This way, we can collect important data for you and send you an in-depth report on the results. That includes grades, aptitude and certificates. Just follow the Coordinators’ Instructions; they will help you register. "
                  author=" "
                />
              </CardBody>
            </Card>
          </GridItem>
        </GridContainer>
      );
    case 1:
      return (
        <GridContainer justify="center">
          <GridItem xs={12} sm={12} md={12}>
            <Card>
              <CardHeader
                style={{ backgroundColor: "#3D1172", color: "#ffffff" }}
              >
                What does my school need to conduct this challenge?
              </CardHeader>
              <CardBody>
                <Quote
                  text="The only thing your school needs is a connection to the internet and some computers that the students can use to complete the challenge."
                  author=""
                />
              </CardBody>
            </Card>
          </GridItem>
        </GridContainer>
      );
    case 2:
      return (
        <GridContainer justify="center">
          <GridItem xs={12} sm={12} md={12}>
            <Card>
              <CardHeader
                style={{ backgroundColor: "#3D1172", color: "#ffffff" }}
              >
                Who should participate in this challenge?
              </CardHeader>
              <CardBody>
                <Quote
                  text="It is recommended that all students take the challenge, because one of the objectives of this challenge is to discover aptitude. The small tasks in this challenge start off relatively easy so every student can participate and get something out of it."
                  author=""
                />
              </CardBody>
            </Card>
          </GridItem>
        </GridContainer>
      );
    case 3:
      return (
        <GridContainer justify="center">
          <GridItem xs={12} sm={12} md={12}>
            <Card>
              <CardHeader color="primary">
                When will the challenge be held?
              </CardHeader>
              <CardBody>
                <Quote
                  text="A practice challenge is available for students so that they know what to expect. The official challenge can be conducted between 18th-30th November 2019"
                  author=""
                />
              </CardBody>
            </Card>
          </GridItem>
        </GridContainer>
      );
    default:
      return "Unknown step";
  }
}
export default function Teacher(props) {
  const clss1 = usesty1();
  const [activeStep, setActiveStep] = React.useState(0);
  const steps = getSteps();
  const handleNext = () => {
    setActiveStep((prevActiveStep) => prevActiveStep + 1);
  };

  const handleBack = () => {
    setActiveStep((prevActiveStep) => prevActiveStep - 1);
  };

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
            Teachers
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
          <br></br>
          <br></br>
          <GridContainer justify="center">
            <GridItem xs={12} sm={12} md={12}>
              <div>
                <Stepper activeStep={activeStep} orientation="vertical">
                  {steps.map((label, index) => (
                    <Step key={label}>
                      <StepLabel>{label}</StepLabel>
                      <StepContent>
                        <Typography component={"div"}>
                          {getStepContent(index)}
                        </Typography>
                        <div className={clss1.actionsContainer}>
                          <div>
                            <Button
                              disabled={activeStep === 0}
                              onClick={handleBack}
                              className={clss1.button}
                            >
                              Back
                            </Button>
                            <Button
                              variant="contained"
                              color="primary"
                              onClick={handleNext}
                              className={clss1.button}
                              disabled={activeStep === steps.length - 1}
                            >
                              Next
                            </Button>
                          </div>
                        </div>
                      </StepContent>
                    </Step>
                  ))}
                </Stepper>
              </div>
            </GridItem>
            <TeacherManual />

            <br></br>
            <br></br>
            <br></br>
          </GridContainer>
        </div>
      </div>
    </div>
  );
}
