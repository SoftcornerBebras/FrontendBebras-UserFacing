import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import InputAdornment from "@material-ui/core/InputAdornment";
import { TextField } from "@material-ui/core";
import { userService } from "../../services/user.service.jsx";
// core components
import { ThemeProvider, createMuiTheme } from "@material-ui/core/styles";
import { indigo } from "@material-ui/core/colors";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "components/CustomButtons/Button.js";
import Card from "components/Card/Card.js";
import CardBody from "components/Card/CardBody.js";
import CardHeader from "components/Card/CardHeader.js";
import CardFooter from "components/Card/CardFooter.js";
import ParticlesBg from "particles-bg";
import styles from "assets/jss/material-kit-react/views/loginPage.js";
import { useHistory } from "react-router-dom";
import AccountCircle from "@material-ui/icons/AccountCircle";
import Notiflix from "notiflix";
import FormControl from '@material-ui/core/FormControl';
import Visibility from '@material-ui/icons/Visibility';
import VisibilityOff from '@material-ui/icons/VisibilityOff';
import IconButton from '@material-ui/core/IconButton';
import Input from '@material-ui/core/Input';
import InputLabel from '@material-ui/core/InputLabel';
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

export default function LoginPage(props) {
  const history = useHistory();
  const [values, setValues] = React.useState({
    amount: '',
    password: '',
    weight: '',
    weightRange: '',
    showPassword: false,
  });
  const handleClickShowPassword = () => {
    setValues({ ...values, showPassword: !values.showPassword });
  };

  const handleMouseDownPassword = (event) => {
    event.preventDefault();
  };
  const [cardAnimaton, setCardAnimation] = React.useState("cardHidden");
  const [loginID, setLoginID] = React.useState("");
  const [password, setPassword] = React.useState("");
  setTimeout(function () {
    setCardAnimation("");
  }, 700);
  const classes = useStyles();
  const handleSubmit = (e) => {
    Notiflix.Block.Dots("body");
    e.preventDefault();
    if (!(loginID && password)) {
      return;
    }
    userService.login(loginID, password).then(
      (user) => {
        Notiflix.Block.Remove("body");
        if (user === "Coordinator") {
          sessionStorage.setItem("Authenticated", true);
          history.push({
            pathname: "/teachernew",

            state: { detail: "detail" },
          });
        } else {
          history.push("/studenthome");
          sessionStorage.setItem("Authenticated", true);
        }
      },
      (error) => {
        Notiflix.Block.Remove("body");
        history.push("/login-page");
      }
    );
  };

  return (
    <div className="element">
      <ParticlesBg type="polygon" bg={true}></ParticlesBg>
      <div className={classes.container} style={{ paddingBottom: "0px" }}>
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
                  <h3>Login</h3>
                </CardHeader>
                <CardBody>
                  <ThemeProvider theme={theme}>
                    <TextField
                      style={{ paddingBottom: "10px" }}
                      name="email"
                      label="LoginID"
                      onChange={(event) => {
                        setLoginID(event.target.value);
                      }}
                      required
                      fullWidth
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
                            <AccountCircle style={{ color: "#757575", "margin-right": "12px" }} />
                          </InputAdornment>
                        ),
                      }}
                    />
                    <FormControl style={{ "width": "100%" }}>
                      <InputLabel htmlFor="standard-adornment-password">Password *</InputLabel>
                      <Input
                        required
                        fullWidth
                        id="standard-adornment-password"
                        type={values.showPassword ? 'text' : 'password'}
                        label="Password"
                        name="password"
                        onChange={(event) => {
                          setPassword(event.target.value);
                        }}
                        endAdornment={
                          <InputAdornment position="end">
                            <IconButton
                              aria-label="toggle password visibility"
                              onClick={handleClickShowPassword}
                              onMouseDown={handleMouseDownPassword}
                            >
                              {values.showPassword ? <Visibility /> : <VisibilityOff />}
                            </IconButton>
                          </InputAdornment>
                        }
                      />
                    </FormControl>
                  </ThemeProvider>
                </CardBody>
                <CardFooter className={classes.cardFooter}>
                  <Button
                    type="submit"
                    style={{ backgroundColor: "#3D1172", color: "#ffffff" }}
                  >
                    Get started
                  </Button>
                  <br></br>
                </CardFooter>
              </form>
              <center>
                <div>
                  <a
                    href="/#"
                    onClick={(e) => {
                      e.preventDefault();
                      if (!loginID) {
                        Notiflix.Notify.Warning(
                          "Please enter loginID".toUpperCase()
                        );
                        return;
                      } else {
                        // handleClick1()
                        userService.ResetPasswordView(loginID).then(
                          (user) => {
                            //history.push('/forgot-password')
                          },
                          (error) => {}
                        );
                      }
                    }}
                    style={{ fontFamily: "bold" }}
                  >
                    Forgot password?
                  </a>
                </div>
                <div>
                  <a
                    href="/studenthome/HomeMain"
                    style={{ fontFamily: "bold" }}
                  >
                    Back to home
                  </a>
                </div>
                <div>
                  <a href="/Register-Page" style={{ fontFamily: "bold" }}>
                    Register Here
                  </a>
                </div>
              </center>

              <br></br>
            </Card>
          </GridItem>
        </GridContainer>
      </div>
    </div>
  );
}
