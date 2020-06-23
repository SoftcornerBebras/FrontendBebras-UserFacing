import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import InputAdornment from "@material-ui/core/InputAdornment";
import { TextField } from "@material-ui/core";
// core components
import { useHistory } from "react-router-dom";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "components/CustomButtons/Button.js";
import Card from "components/Card/Card.js";
import CardBody from "components/Card/CardBody.js";
import CardHeader from "components/Card/CardHeader.js";
import CardFooter from "components/Card/CardFooter.js";
import ParticlesBg from "particles-bg";
import styles from "assets/jss/material-kit-react/views/loginPage.js";
import { userService } from "../../services/user.service.jsx";
import queryString from "query-string";
import { ThemeProvider, createMuiTheme } from "@material-ui/core/styles";
import { indigo } from "@material-ui/core/colors";
import Notiflix from "notiflix";
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
const useStyles = makeStyles(styles);
const theme = createMuiTheme({
  palette: {
    primary: indigo,
  },
  overrides: {
    MuiInput: {
      underline: {
        "&&&&:hover:before": {
          borderBottom: "1px solid #cfcccc",
        },
        "&:before": {
          borderBottom: `1px solid #cfcccc`,
          marginTop: "20px 0px",
        },
      },
    },
  },
});
export default function ForgotPassword(props) {
  const history = useHistory();
  const [cardAnimaton, setCardAnimation] = React.useState("cardHidden");
  const [password, setPassword] = React.useState("");
  const [confirmpassword, setconfirmpassword] = React.useState("");
  
  setTimeout(function () {
    setCardAnimation("");
  }, 700);
  const values = queryString.parse(props.location.search);
  const uidb64 = values.uidb64;
  const token = values.token;
  const classes = useStyles();
  React.useEffect(() => {
    if (uidb64 !== localStorage.getItem("uid")) {
      Notiflix.Block.Remove("body");
      Notiflix.Notify.Failure(
        "You aren't authorized to use this page, Please Try again".toUpperCase()
      );
      return;
    }
    if (token !== localStorage.getItem("token")) {
      Notiflix.Block.Remove("body");
      Notiflix.Notify.Failure(
        "You aren't authorized to use this page, Please Try again".toUpperCase()
      );

      return;
    }
  });
  const handleSubmit = (e) => {
    Notiflix.Block.Dots("body");
    e.preventDefault();
    if (!(confirmpassword && password)) {
      Notiflix.Block.Remove("body");
      return;
    }
    if (confirmpassword !== password) {
      Notiflix.Block.Remove("body");
      Notiflix.Notify.Warning(
        "Your passwords did not match. Please try again.".toUpperCase()
      );

      return;
    }
    userService.ConfirmResetPasswordView(password, uidb64, token).then(
      (user) => {
        Notiflix.Block.Remove("body");
        localStorage.clear();
        history.push("/login-page");
      },
      (error) => {
        Notiflix.Block.Remove("body");
      }
    );
  };

  return (
    <div className="element">
      <ParticlesBg type="polygon" bg={true} />
      <div className={classes.container}>
        <GridContainer justify="center">
          <GridItem xs={12} sm={12} md={4}>
            <Card raised="true" className={classes[cardAnimaton]}>
              <form className={classes.form} onSubmit={handleSubmit}>
                <CardHeader
                  style={{ backgroundColor: "#3D1172 ", color: "#FFFFFF" }}
                  className={classes.cardHeader}
                >
                  <div className={classes.socialLine}>
                    <Button
                      justIcon
                      href="#pablo"
                      target="_blank"
                      color="transparent"
                      onClick={(e) => e.preventDefault()}
                    >
                      <div
                        style={{ background: "white", borderRadius: "40px" }}
                      >
                        <i
                          style={{ padding: "20px", color: "black" }}
                          className={"fa fa-lock "}
                        />
                      </div>
                    </Button>
                  </div>
                  <h3>Reset Password</h3>
                </CardHeader>
                <CardBody>
                  <ThemeProvider theme={theme}>
                    <TextField
                      style={{ paddingBottom: "10px" }}
                      label="Enter new password"
                      name="password"
                      value={password}
                      //onChange={handleChange}
                      onChange={(event) => {
                        setPassword(event.target.value);
                      }}
                      type="password"
                      inputlabelprops={{
                        style: {
                          color: "#AAAAAA",
                          fontWeight: "400",
                          fontFamily:
                            '"Roboto", "Helvetica", "Arial", sans-serif',
                          fontSize: "14px",
                          letterSpacing: "unset",
                          opacity: "1",
                          top: "5px",
                        },
                      }}
                      InputProps={{
                        className: classes.input,
                        endAdornment: (
                          <InputAdornment position="end">
                            <span
                              className="material-icons"
                              style={{ color: "#757575" }}
                            >
                              lock
                            </span>
                          </InputAdornment>
                        ),
                      }}
                      required
                      fullWidth
                    />
                    <TextField
                      style={{ paddingBottom: "10px" }}
                      label="Confirm password"
                      value={confirmpassword}
                      //onChange={handleChange}
                      onChange={(event) => {
                        setconfirmpassword(event.target.value);
                      }}
                      name="confirmpassword"
                      type="password"
                      inputlabelprops={{
                        style: {
                          color: "#AAAAAA",
                          fontWeight: "400",
                          fontFamily:
                            '"Roboto", "Helvetica", "Arial", sans-serif',
                          fontSize: "14px",
                          letterSpacing: "unset",
                          opacity: "1",
                          top: "5px",
                        },
                      }}
                      InputProps={{
                        className: classes.input,
                        endAdornment: (
                          <InputAdornment position="end">
                            <span
                              className="material-icons"
                              style={{ color: "#757575" }}
                            >
                              lock
                            </span>
                          </InputAdornment>
                        ),
                      }}
                      required
                      fullWidth
                    />
                  </ThemeProvider>
                </CardBody>
                <CardFooter className={classes.cardFooter}>
                  <Button
                    type="submit"
                    style={{ backgroundColor: "#3D1172", color: "#ffffff" }}
                  >
                    Confirm
                  </Button>
                  <br></br>
                </CardFooter>
              </form>
              <center>
                <b>
                  <div>
                    <a href="/login-page">Back to login</a>
                  </div>
                </b>
              </center>
            </Card>
          </GridItem>
        </GridContainer>
      </div>
    </div>
  );
}
