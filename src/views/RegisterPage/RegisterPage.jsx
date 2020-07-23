import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import Stepper from "@material-ui/core/Stepper";
import Step from "@material-ui/core/Step";
import StepLabel from "@material-ui/core/StepLabel";
import Button from "@material-ui/core/Button";
import Typography from "@material-ui/core/Typography";
import Card from "components/Card/Card.js";
import CardContent from "@material-ui/core/CardContent";
import { userService } from "../../services/user.service.jsx";
import GridItem from "components/Grid/GridItem.js";
import { useHistory } from "react-router-dom";
import SchoolAddress from "./RegisterForm/SchoolAddress.jsx";
import SchoolDetails from "./RegisterForm/SchoolDetails.jsx";
import TeacherDetails from "./RegisterForm/TeacherDetails.jsx";
import imagesStyles from "assets/jss/material-kit-react/imagesStyles.js";
import ParticlesBg from "particles-bg";
import { cardTitle } from "assets/jss/material-kit-react.js";
import "../StudentSections/PracticeChallenge/Page.css";
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
Notiflix.Notify.Init({
  width: "40%",
  position: "left-bottom", // 'right-top' - 'right-bottom' - 'left-top' - 'left-bottom'
  distance: "10px",
  opacity: 1,
  borderRadius: "5px",
  rtl: false,
  timeout: 3000,
  messageMaxLength: 110,
  backOverlay: false,
  backOverlayColor: "rgba(0,0,0,0.5)",
  plainText: true,
  showOnlyTheLastOne: false,
  clickToClose: false,

  ID: "NotiflixNotify",
  className: "notiflix-notify",
  zindex: 4001,
  useGoogleFont: true,
  fontFamily: "Quicksand",
  fontSize: "13px",
  cssAnimation: true,
  cssAnimationDuration: 400,
  cssAnimationStyle: "fade", // 'fade' - 'zoom' - 'from-right' - 'from-top' - 'from-bottom' - 'from-left'
  closeButton: false,
  useIcon: true,
  useFontAwesome: false,
  fontAwesomeIconStyle: "basic", // 'basic' - 'shadow'
  fontAwesomeIconSize: "34px",

  success: {
    background: "#151515",
    textColor: "#fff",
    childClassName: "success",
    notiflixIconColor: "rgb(44,151,7)",
    fontAwesomeClassName: "fas fa-check-circle",
    fontAwesomeIconColor: "rgb(44,151,7)",
  },

  failure: {
    background: "#151515",
    textColor: "#fff",
    childClassName: "failure",
    notiflixIconColor: "rgb(212,4,56)",
    fontAwesomeClassName: "fas fa-times-circle",
    fontAwesomeIconColor: "rgb(212,4,56)",
  },

  warning: {
    background: "#151515",
    textColor: "#fff",
    childClassName: "warning",
    notiflixIconColor: "rgb(46,154,254)",
    fontAwesomeClassName: "fas fa-exclamation-circle",
    fontAwesomeIconColor: "rgb(46,154,254)",
  },

  info: {
    background: "#151515",
    textColor: "#fff",
    childClassName: "info",
    notiflixIconColor: "rgb(46,154,254)",
    fontAwesomeClassName: "fas fa-info-circle",
    fontAwesomeIconColor: "rgb(46,154,254)",
  },
});
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
const sty1 = {
  ...imagesStyles,
  cardTitle,
};
const usesty1 = makeStyles(sty1);

const useStyles = makeStyles((theme) => ({
  root: {
    width: "100%",
  },
  backButton: {
    marginRight: theme.spacing(1),
  },
  instructions: {
    marginTop: theme.spacing(1),
    marginBottom: theme.spacing(1),
  },
}));
function getSteps() {
  return ["School Address", "School Details", "Teacher Details"];
}

function getStepContent(
  stepIndex,
  address,
  school,
  user,
  handleAddressChange,
  handleSchoolChange,
  handleUserChange
) {
  switch (stepIndex) {
    case 0:
      return (
        <SchoolAddress
          address={address}
          onChangeAddress={handleAddressChange}
        />
      );
    case 1:
      return (
        <SchoolDetails school={school} onChangeSchool={handleSchoolChange} />
      );
    case 2:
      return <TeacherDetails user={user} onChangeUser={handleUserChange} />;
    default:
      return "Unknown step";
  }
}

function RegisterPage() {
  const history = useHistory();

  const classes = useStyles();
  const [activeStep, setActiveStep] = React.useState(0);

  const [address, setAddress] = React.useState({
    country: "India",
    state: "",
    district: "",
    line1: "",
    line2: "",
    city: "",
    pincode: "",
  });
  const [school, setSchool] = React.useState({
    schoolName: "",
    schoolType: "",
    UDISEcode: "",
    contact: "",
    schoolGroupID: "",
    classes: [],
  });
  const [user, setUser] = React.useState({
    username: "",
    password: "",
    gender: "",
    phone: "",
    birthdate: "",
    email: "",
  });
  const steps = getSteps();
  const cls2 = usesty1();
  const handleNext = (e) => {
    e.preventDefault();
    if (activeStep === 0) {
      if (
        !address.country ||
        !address.state ||
        !address.district ||
        !address.line1 ||
        !address.line2 ||
        !address.city ||
        !address.pincode
      ) {
        Notiflix.Notify.Warning(
          "Cannot proceed to the next step, please fill all the address details".toUpperCase()
        );
        // alert("can't proceed to the next step, please fill all the details")
      } else {
        setActiveStep((prevActiveStep) => prevActiveStep + 1);
      }
    }
    if (activeStep === 1) {
      if (
        !school.schoolName ||
        !school.schoolType ||
        !school.UDISEcode ||
        !school.schoolGroupID ||
        !school.contact ||
        school.classes.length === 0
      ) {
        Notiflix.Notify.Warning(
          "Cannot proceed to the next step, please fill all the school details".toUpperCase()
        );
        // alert("can't proceed to the next step, please fill all the details")
      } else {
        if (school.UDISEcode.length !== 11) {
          Notiflix.Notify.Warning(
            "UDISE CODE should be 11 digits".toUpperCase()
          );
          return;
        }
        setActiveStep((prevActiveStep) => prevActiveStep + 1);
      }
    }
    if (activeStep === steps.length - 1) {
      if (
        !user.username ||
        !user.password ||
        !user.birthdate ||
        !user.gender ||
        !user.phone ||
        !user.email
      ) {
        Notiflix.Notify.Warning(
          "Cannot proceed , please fill all the teacher details".toUpperCase()
        );
        // alert("can't finish, please fill all the details")
      } else {
        delete address.countrynames;
        delete address.statenames;
        delete address.districtnames;
        delete school.schoolGroupNames;
        //schoolgroup
         
    if(school.contact.charAt(0)!=="+")
    { var phonenumber = "+" + school.contact;
    school.contact = phonenumber;
    } 
    if(user.phone.charAt(0)!=="+")
    {  phonenumber = "+" +  user.phone;;
    user.phone = phonenumber;
      
    } 
        
        user.school = school.schoolName;
        
        const sttate = { school: school, address: address };

        sessionStorage.setItem("registerschool", JSON.stringify(sttate));
        userService.registerSchool().then(
          (school) => {
            user.school = school;
            sessionStorage.setItem("registeruser", JSON.stringify(user));
            userService
              .register()
              .then((user) => {
                history.push("/login-page");
              })
              .catch((error) => {});
          },
          (error) => {}
        );
      }
    }
  };

  const handleAddressChange = (addr) => {
    setAddress(addr);
  };
  const handleSchoolChange = (sch) => {
    setSchool(sch);
  };
  const handleUserChange = (user) => {
    setUser(user);
  };

  const handleBack = () => {
    setActiveStep((prevActiveStep) => prevActiveStep - 1);
  };

  const handleReset = () => {
    setActiveStep(0);
  };

  return (
    <div>
      <ParticlesBg type="polygon" bg={true} />
      <GridContainer justify="center">
        <GridItem xs={12} md={6}>
          <Card>
            <img
              alt=""
              style={{
                height: "180px",
                width: "100%",
                display: "block",
                backgroundColor: "#3D1172",
                color: "#ffffff",
              }}
              className={cls2.imgCardTop}
            />
            <div
              className={cls2.imgCardOverlay}
              style={{ textAlign: "center" }}
            >
              <br></br>
              <h1 style={{ color: "#ffffff" }}>Registration</h1>
            </div>
            {/* <CardHeader  style={{backgroundColor:"#3F51B5",color:"#ffffff" }}>Registration</CardHeader> */}
            <CardContent>
              <br></br>
              <br></br>
              <div>
                <Stepper activeStep={activeStep} alternativeLabel>
                  {steps.map((label) => (
                    <Step key={label}>
                      <StepLabel>{label}</StepLabel>
                    </Step>
                  ))}
                </Stepper>
                <div>
                  {activeStep === steps.length ? (
                    <div>
                      <Typography
                        component={"div"}
                        className={classes.instructions}
                      >
                        All steps completed
                      </Typography>
                      <Button onClick={handleReset}>Reset</Button>
                    </div>
                  ) : (
                    <div>
                      <form onSubmit={handleNext}>
                        <Typography
                          className={classes.instructions}
                          component={"div"}
                        >
                          {getStepContent(
                            activeStep,
                            address,
                            school,
                            user,
                            handleAddressChange,
                            handleSchoolChange,
                            handleUserChange
                          )}
                        </Typography>

                        <div>
                          <Button
                            disabled={activeStep === 0}
                            onClick={handleBack}
                            className={classes.backButton}
                          >
                            Back
                          </Button>
                          <Button
                            variant="contained"
                            color="primary"
                            type="submit"
                          >
                            {activeStep === steps.length - 1
                              ? "Finish"
                              : "Next"}
                          </Button>
                        </div>
                      </form>
                    </div>
                  )}
                  <br></br>
                  <br></br>
                </div>
              </div>
            </CardContent>
          </Card>
        </GridItem>
      </GridContainer>
    </div>
  );
}

export default RegisterPage;
