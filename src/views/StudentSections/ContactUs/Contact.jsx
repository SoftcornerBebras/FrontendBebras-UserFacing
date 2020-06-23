import React from "react";
// @material-ui/core components
// @material-ui/icons
// core components
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import classNames from "classnames";
import { Tab } from "@material-ui/core";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import { useHistory } from "react-router-dom";
import Grid from "@material-ui/core/Grid";
import InputAdornment from "@material-ui/core/InputAdornment";
import { People, AlternateEmail, Email, Subject } from "@material-ui/icons";
import TextField from "@material-ui/core/TextField";
import { indigo } from "@material-ui/core/colors";
import Button from "@material-ui/core/Button";
import "./contact.css";
import { userService } from "../../../services/user.service.jsx";
import {
  ThemeProvider,
  makeStyles,
  createMuiTheme,
} from "@material-ui/core/styles";
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
const useStyles = makeStyles(styles);
export default function Enroll(props) {
  const history = useHistory();
  const [name, setName] = React.useState("");
  const [email, setEmail] = React.useState("");
  const [subject, setSubject] = React.useState("");
  const [query, setQuery] = React.useState("");
 

  

  const classes = useStyles();
  const handleSubmit = (e) => {
    e.preventDefault();
    Notiflix.Block.Dots("body");
    if (!(name && email && subject && query)) {
      Notiflix.Block.Remove("body");
      return;
    }

    userService.contactUs(name, email, subject, query).then(
      (user) => {
        Notiflix.Block.Remove("body");
        history.push("/studenthome/HomeMain");
      },
      (error) => {
        Notiflix.Block.remove("body");
        history.push("/studenthome/contact");
      }
    );
  };
  return (
    <div className="element">
      <link
        rel="stylesheet"
        href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
      />
      <GridContainer>
        <GridItem
          xs={12}
          sm={12}
          md={12}
          style={{ backgroundColor: "#0091b4", textAlign: "center" }}
        >
          <h1 className={classes.title} style={{ color: "#ffffff" }}>
            Contact Us
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
        {/* <div className={classes.container}> */}
        <div className="whitebg" style={{ padding: "3%" }}>
          <br></br>
          <br></br>
          <Grid container spacing={3}>
            <Grid item xs>
              <div>
                <h1>Get in touch!</h1>
                <form onSubmit={handleSubmit}>
                  <ThemeProvider theme={theme}>
                    <TextField
                      style={{ margin: "20px 0px" }}
                      required
                      fullWidth
                      name="query"
                      id="mui-theme-provider-standard-input"
                      onChange={(event) => {
                        setName(event.target.value);
                      }}
                      label="Enter your Name"
                      className={classes.margin}
                      multiline
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
                        style: {
                          fontSize: "20px",
                        },
                        className: classes.input,
                        endAdornment: (
                          <InputAdornment position="end">
                            <People />
                          </InputAdornment>
                        ),
                      }}
                    />
                    <TextField
                      style={{ margin: "20px 0px" }}
                      required
                      fullWidth
                      name="query"
                      id="mui-theme-provider-standard-input"
                      onChange={(event) => {
                        setEmail(event.target.value);
                      }}
                      label="Enter your email"
                      className={classes.margin}
                      multiline
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
                        style: {
                          fontSize: "20px",
                        },
                        className: classes.input,
                        endAdornment: (
                          <InputAdornment position="end">
                            <AlternateEmail />
                          </InputAdornment>
                        ),
                      }}
                    />
                    <TextField
                      style={{ margin: "20px 0px" }}
                      required
                      fullWidth
                      multiline
                      name="query"
                      id="mui-theme-provider-standard-input"
                      onChange={(event) => {
                        setSubject(event.target.value);
                      }}
                      label="Enter your subject"
                      className={classes.margin}
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
                        style: {
                          fontSize: "20px",
                        },
                        className: classes.input,
                        endAdornment: (
                          <InputAdornment position="end">
                            <Subject />
                          </InputAdornment>
                        ),
                      }}
                    />
                    <TextField
                      style={{ margin: "20px 0px" }}
                      required
                      fullWidth
                      name="query"
                      id="mui-theme-provider-standard-input"
                      onChange={(event) => {
                        setQuery(event.target.value);
                      }}
                      label="Enter your query"
                      className={classes.margin}
                      multiline
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
                        style: {
                          fontSize: "20px",
                        },
                        className: classes.input,
                        endAdornment: (
                          <InputAdornment position="end">
                            <Email />
                          </InputAdornment>
                        ),
                      }}
                    />
                  </ThemeProvider>
                  <div style={{ marginTop: "30px" }}>
                    <Button
                      type="submit"
                      variant="contained"
                      fullWidth
                      color="primary"
                    >
                      Send Message
                    </Button>
                  </div>
                </form>
              </div>
            </Grid>
            {/* <Grid item xs></Grid> */}
            <Grid item xs>
              <Grid container spacing={2}>
                <Grid item xs={12}>
                  <div>
                    <h2>Find us:</h2>
                  </div>
                </Grid>
                <Grid item xs={12}>
                  <div>
                    <ul className="contact-social">
                      <li>
                        <a href="/err404">
                          <i className="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a href="/err404">
                          <i className="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a href="/err404">
                          <i className="fa fa-google-plus"></i>
                        </a>
                      </li>
                      <li>
                        <a href="/err404">
                          <i className="fa fa-linkedin"></i>
                        </a>
                      </li>
                      <li>
                        <a href="/err404">
                          <i className="fa fa-pinterest"></i>
                        </a>
                      </li>
                      <li>
                        <a href="/err404">
                          <i className="fa fa-youtube"></i>
                        </a>
                      </li>
                      <li>
                        <a href="/err404">
                          <i className="fa fa-vimeo-square"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                </Grid>
                <Grid item xs={12}>
                  <div>
                    <h2> Please feel free to contact us!</h2>
                  </div>
                </Grid>
                <Grid item xs={12}>
                  <ul
                    style={{ listStyleType: "none" }}
                    className="contact-info"
                  >
                    <li>
                      <i className="fa fa-map-marker"></i>Address: Soft Corner,
                      Karve road, Pune
                    </li>
                    <li>
                      <i className="fa fa-mobile"></i>Phone: 000 - 111 - 222
                    </li>
                    <li>
                      <i className="fa fa-fax"></i>Fax: 000 - 111 - 222
                    </li>
                    <li>
                      <i className="fa fa-envelope"></i>Email:
                      contact@soft-corner.com
                    </li>
                  </ul>
                </Grid>
                <Grid item xs={12}>
                  <div className="video-widget">
                    <iframe
                      title="Contact"
                      width="100%"
                      height="600"
                      src="https://maps.google.com/maps?width=100%&height=600&hl=en&q=Soft%20Corner%2C%20Kothrud%2C%20Pune%2C%20Maharashtra%2C%20India+(Your%20Business%20Name)&ie=UTF8&t=&z=21&iwloc=B&output=embed"
                      frameBorder="0"
                      scrolling="no"
                      marginHeight="0"
                      marginWidth="0"
                    >
                      <a href="https://www.mapsdirections.info/en/journey-planner.htm">
                        www.mapsdirections.info
                      </a>
                    </iframe>
                  </div>
                </Grid>
              </Grid>
            </Grid>
          </Grid>
        </div>

       
      </div>
    </div>
  );
}
