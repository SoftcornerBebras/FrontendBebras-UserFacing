import React from "react";
// nodejs library that concatenates classes
import classNames from "classnames";
// nodejs library to set properties for components
import PropTypes from "prop-types";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import IconButton from "@material-ui/core/IconButton";
import Button from "@material-ui/core/Button";
import Hidden from "@material-ui/core/Hidden";
import Drawer from "@material-ui/core/Drawer";
// @material-ui/icons
import Menu from "@material-ui/icons/Menu";
import { Route, Switch } from "react-router-dom";
import { Link } from "react-router-dom";
import { Tab } from "@material-ui/core";
import AccountBoxIcon from "@material-ui/icons/AccountBox";
import Footer from "components/Footer/Footer.js";
// @material-ui/icons
// core components

import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";

// @material-ui/icons
import { Home } from "@material-ui/icons";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
// core components
import { userService } from "../../services/user.service.jsx";
import { useHistory } from "react-router-dom";
import CustomDropdown from "components/CustomDropdown/CustomDropdown.js";
import StudentResCompList from "views/StudentSections/StudentResult/CompetitionList";
import StudentAnalysis from "views/StudentSections/Analysis.jsx";
import Results from "views/StudentSections/Results.jsx";
import Teacher from "views/StudentSections/Teacher.jsx";
import Contact from "views/StudentSections/ContactUs/Contact.jsx";
import Competition from "views/StudentSections/Competitions.jsx";
import AgeGroupSection from "views/StudentSections/PracticeChallenge/AgeGroupSection.jsx";
import HomeMain from "views/StudentSections/HomeMain.jsx";
import Practicechlng from "views/StudentSections/PracticeChallengeTab.jsx";
import ThankYou from "views/StudentSections/Competition/ThankYou.jsx";
// core components
import headerLinksStyle from "assets/jss/material-kit-react/components/headerLinksStyle.js";
import styles from "assets/jss/material-kit-react/components/headerStyle.js";
const useStyles = makeStyles(styles);
const usty = makeStyles(headerLinksStyle);
export default function StudentHeader(props) {
  const classes = useStyles();
  const cls1 = usty();
  const history = useHistory();

  const [mobileOpen, setMobileOpen] = React.useState(false);
  React.useEffect(() => {
    // if(!sessionStorage.getItem("Authenticated"))
    // {
    //   history.push('/login-page');
    // }
    if (props.changeColorOnScroll) {
      window.addEventListener("scroll", headerColorChange);
    }
    return function cleanup() {
      if (props.changeColorOnScroll) {
        window.removeEventListener("scroll", headerColorChange);
      }
    };
  });
  const handleDrawerToggle = () => {
    setMobileOpen(!mobileOpen);
  };
  const headerColorChange = () => {
    const { color, changeColorOnScroll } = props;
    const windowsScrollTop = window.pageYOffset;
    if (windowsScrollTop > changeColorOnScroll.height) {
      document.body
        .getElementsByTagName("header")[0]
        .classList.remove(classes[color]);
      document.body
        .getElementsByTagName("header")[0]
        .classList.add(classes[changeColorOnScroll.color]);
    } else {
      document.body
        .getElementsByTagName("header")[0]
        .classList.add(classes[color]);
      document.body
        .getElementsByTagName("header")[0]
        .classList.remove(classes[changeColorOnScroll.color]);
    }
  };
  const color = "info";
  const brand = "Bebras Challenge";
  const fixed = true;
  // const absolute=true;
  const { leftLinks, absolute } = props;
  const appBarClasses = classNames({
    [classes.appBar]: true,
    [classes[color]]: color,
    [classes.absolute]: absolute,
    [classes.fixed]: fixed,
  });
  const brandComponent = <Button className={classes.title}>{brand}</Button>;
  return (
    <div className="kidslandbg">
      <AppBar className={appBarClasses}>
        <Toolbar className={classes.container}>
          {leftLinks !== undefined ? brandComponent : null}
          <div className={classes.flex}>
            {leftLinks !== undefined ? (
              <Hidden smDown implementation="css">
                {leftLinks}
              </Hidden>
            ) : (
              brandComponent
            )}
          </div>
          <Hidden smDown implementation="css">
            <List className={cls1.list}>
              <ListItem className={cls1.listItem}>
                <img
                  alt="Can't load "
                  src={require("assets/img/Bebras_india_logo.png")}
                  style={{ align: "left", width: "50px", height: "50px" }}
                ></img>
                <Link to="/studenthome/HomeMain" style={{ color: "white" }}>
                  <Button
                    //DEFAULT PRIMARY
                    className={cls1.navLink}
                    target="_blank"
                  >
                    <Home /> Home
                  </Button>
                </Link>
              </ListItem>
              <ListItem className={cls1.listItem}>
                <Link to="/studenthome/teacher" style={{ color: "white" }}>
                  <Button target="_blank" className={cls1.navLink}>
                    {" "}
                    Teachers
                  </Button>
                </Link>
              </ListItem>
              <ListItem className={cls1.listItem}>
                <Link
                  to="/studenthome/practicechallenge"
                  style={{ color: "white" }}
                >
                  <Button target="_blank" className={cls1.navLink}>
                    {" "}
                    Practice Challenge
                  </Button>
                </Link>
              </ListItem>
              <ListItem className={cls1.listItem}>
                <Link to="/studenthome/competition" style={{ color: "white" }}>
                  <Button target="_blank" className={cls1.navLink}>
                    {" "}
                    Competitions
                  </Button>
                </Link>
              </ListItem>
              <ListItem className={cls1.listItem}>
                <Link
                  to="/studenthome/resultcomplist"
                  style={{ color: "white" }}
                >
                  <Button target="_blank" className={cls1.navLink}>
                    {" "}
                    Result
                  </Button>
                </Link>
              </ListItem>
              <ListItem className={cls1.listItem}>
                <Link to="/studenthome/analysis" style={{ color: "white" }}>
                  <Button target="_blank" className={cls1.navLink}>
                    {" "}
                    Analysis
                  </Button>
                </Link>
              </ListItem>
              <ListItem className={cls1.listItem}>
                <Link to="/studenthome/contact" style={{ color: "white" }}>
                  <Button target="_blank" className={cls1.navLink}>
                    {" "}
                    Contact
                  </Button>
                </Link>
              </ListItem>
              {!sessionStorage.getItem("Authenticated") && (
                <ListItem className={cls1.listItem}>
                  <Button
                    href="/login-page"
                    style={{ backgroundColor: "#e91e63" }}
                    className={cls1.navLink}
                  >
                    Login
                  </Button>
                </ListItem>
              )}
              {sessionStorage.getItem("Authenticated") && (
                <ListItem className={cls1.listItem}>
                  <CustomDropdown
                    noLiPadding
                    buttonProps={{
                      className: classes.navLink,
                      color: "transparent",
                    }}
                    buttonIcon={AccountBoxIcon}
                    dropdownList={[
                      <Link
                        to="/"
                        className={cls1.dropdownLink}
                        onClick={(event) => event.preventDefault()}
                      >
                        <b>{JSON.parse(sessionStorage.getItem("loginID"))}</b>
                      </Link>,
                      <Link
                        className={cls1.dropdownLink}
                        to="/studenthome/HomeMain"
                        onClick={() => {
                          console.log("will go");
                          userService.logoutStudent().then(
                            (user) => {
                              sessionStorage.clear();
                              history.push("/studenthome/HomeMain");
                            },
                            (error) => {}
                          );
                        }}
                      >
                        Log Out
                      </Link>,
                    ]}
                  />
                </ListItem>
              )}
            </List>
          </Hidden>
          <Hidden mdUp>
            <IconButton
              color="inherit"
              aria-label="open drawer"
              onClick={handleDrawerToggle}
            >
              <Menu />
            </IconButton>
          </Hidden>
        </Toolbar>
        <Hidden mdUp implementation="js">
          <Drawer
            variant="temporary"
            anchor={"right"}
            open={mobileOpen}
            classes={{
              paper: classes.drawerPaper,
            }}
            onClose={handleDrawerToggle}
          >
            <div className={classes.appResponsive}>
              {leftLinks}
              <List className={cls1.list}>
                <ListItem className={cls1.listItem}>
                  <img
                    alt="Can't load "
                    src={require("assets/img/Bebras_india_logo.png")}
                    style={{ align: "left", width: "50px", height: "50px" }}
                  ></img>
                  <Link to="/studenthome/HomeMain" style={{ color: "#0091b4" }}>
                    <Button className={cls1.navLink} target="_blank">
                      <Home /> Home
                    </Button>
                  </Link>
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <Link to="/studenthome/teacher" style={{ color: "#0091b4" }}>
                    <Button target="_blank" className={cls1.navLink}>
                      {" "}
                      Teachers
                    </Button>
                  </Link>
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <Link
                    to="/studenthome/practicechallenge"
                    style={{ color: "#0091b4" }}
                  >
                    <Button target="_blank" className={cls1.navLink}>
                      {" "}
                      Practice Challenge
                    </Button>
                  </Link>
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <Link
                    to="/studenthome/competition"
                    style={{ color: "#0091b4" }}
                  >
                    <Button target="_blank" className={cls1.navLink}>
                      {" "}
                      Competitions
                    </Button>
                  </Link>
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <Link
                    to="/studenthome/resultcomplist"
                    style={{ color: "#0091b4" }}
                  >
                    <Button target="_blank" className={cls1.navLink}>
                      {" "}
                      Result
                    </Button>
                  </Link>
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <Link to="/studenthome/analysis" style={{ color: "#0091b4" }}>
                    <Button target="_blank" className={cls1.navLink}>
                      {" "}
                      Analysis
                    </Button>
                  </Link>
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <Link to="/studenthome/contact" style={{ color: "#0091b4" }}>
                    <Button target="_blank" className={cls1.navLink}>
                      {" "}
                      Contact
                    </Button>
                  </Link>
                </ListItem>
                {!sessionStorage.getItem("Authenticated") && (
                  <ListItem className={cls1.listItem}>
                    <Button
                      href="/login-page"
                      style={{ backgroundColor: "#e91e63" }}
                      className={cls1.navLink}
                    >
                      Login
                    </Button>
                  </ListItem>
                )}
                {sessionStorage.getItem("Authenticated") && (
                  <ListItem className={cls1.listItem}>
                    <CustomDropdown
                      noLiPadding
                      buttonProps={{
                        className: classes.navLink,
                        color: "transparent",
                      }}
                      buttonIcon={AccountBoxIcon}
                      dropdownList={[
                        <Link
                          to="/"
                          className={cls1.dropdownLink}
                          onClick={(event) => event.preventDefault()}
                        >
                          <b>{JSON.parse(sessionStorage.getItem("loginID"))}</b>
                        </Link>,
                        <Link
                          className={cls1.dropdownLink}
                          to="/studenthome/HomeMain"
                          onClick={() => {
                            userService.logoutStudent().then(
                              (user) => {
                                sessionStorage.clear();
                                history.push("/studenthome/HomeMain");
                              },
                              (error) => {}
                            );
                          }}
                        >
                          Log Out
                        </Link>,
                      ]}
                    />
                  </ListItem>
                )}
              </List>
            </div>
          </Drawer>
        </Hidden>
      </AppBar>
      <GridContainer>
        <GridItem
          xs={12}
          sm={12}
          md={12}
          style={{ backgroundColor: "#0091b4", textAlign: "center" }}
        >
          <br />
          <Tab></Tab>
        </GridItem>
      </GridContainer>
      <div>
        <Switch>
          <Route path="/studenthome/HomeMain" component={HomeMain} />
          <Route path="/studenthome/teacher" component={Teacher} />
          <Route
            path="/studenthome/practicechallenge"
            component={Practicechlng}
          />
          <Route path="/studenthome/pc" component={AgeGroupSection} />
          <Route path="/studenthome/competition" component={Competition} />
          <Route path="/studenthome/results" component={Results} />
          <Route path="/studenthome/contact" component={Contact} />
          <Route path="/studenthome/thankyou" component={ThankYou} />
          <Route
            path="/studenthome/resultcomplist"
            component={StudentResCompList}
          />
          <Route path="/studenthome/analysis" component={StudentAnalysis} />
        </Switch>
      </div>
      <Footer />
    </div>
  );
}

StudentHeader.defaultProp = {
  color: "info",
};

StudentHeader.propTypes = {
  color: PropTypes.oneOf([
    "primary",
    "info",
    "success",
    "warning",
    "danger",
    "transparent",
    "white",
    "rose",
    "dark",
  ]),
  rightLinks: PropTypes.node,
  leftLinks: PropTypes.node,
  brand: PropTypes.string,
  fixed: PropTypes.bool,
  absolute: PropTypes.bool,
  changeColorOnScroll: PropTypes.shape({
    height: PropTypes.number.isRequired,
    color: PropTypes.oneOf(["info"]).isRequired,
  }),
};
