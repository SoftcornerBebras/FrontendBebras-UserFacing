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
import { BrowserRouter as Router } from "react-router-dom";
import { Link } from "react-router-dom";
import { Tab } from "@material-ui/core";
import AccountBoxIcon from "@material-ui/icons/AccountBox";
import Footer from "components/Footer/Footer.js";

import { userService } from "../../services/user.service";
import { useHistory } from "react-router-dom";

import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";

// @material-ui/icons
import { Apps, GetApp } from "@material-ui/icons";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
// core components
import CustomDropdown from "components/CustomDropdown/CustomDropdown.js";
import TeacherRegistration from "../TeacherSections/TeacherRegistration.jsx";

import StudentRegistration from "../TeacherSections/StudentRegistration.jsx";
import Download from "../TeacherSections/Download.jsx";
import DetailsDownload from "../TeacherSections/Download/DetailsDownload.jsx";
import Certificate from "../TeacherSections/Download/Certificate.jsx";
import Analysis from "../TeacherSections/Analysis.jsx";
import EnrollStudentCompetition from "../TeacherSections/EnrollStudentCompetition.jsx";
import ResultsPage from "../TeacherSections/ResultsPage.jsx";
import BulkRegistration from "../TeacherSections/BulkRegistration.jsx";
// core components
import headerLinksStyle from "assets/jss/material-kit-react/components/headerLinksStyle.js";
import styles from "assets/jss/material-kit-react/components/headerStyle.js";
const useStyles = makeStyles(styles);
const usty = makeStyles(headerLinksStyle);
export default function TeacherHeader(props) {
  const classes = useStyles();
  const cls1 = usty();
  const history = useHistory();
  const [mobileOpen, setMobileOpen] = React.useState(false);
  React.useEffect(() => {
    if (!sessionStorage.getItem("Authenticated")) {
      history.push("/login-page");
    }
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
  const absolute = true;
  const { leftLinks } = props;
  const appBarClasses = classNames({
    [classes.appBar]: true,
    [classes[color]]: color,
    [classes.absolute]: absolute,
    [classes.fixed]: fixed,
  });
  const brandComponent = <Button className={classes.title}>{brand}</Button>;
  return (
    <div>
      <Router>
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
              <List className={cls1.list} style={{ background: "blue" }}>
                <ListItem className={cls1.listItem}>
                  <img
                    alt="Can't load "
                    src={require("assets/img/Bebras_india_logo.png")}
                    style={{ align: "left", width: "50px", height: "50px" }}
                  ></img>
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <CustomDropdown
                    noLiPadding
                    buttonText="Registration"
                    buttonProps={{
                      className: classes.navLink,
                      color: "transparent",
                    }}
                    buttonIcon={Apps}
                    dropdownList={[
                      <Link
                        to="/teachernew/IndividualReg"
                        className={cls1.dropdownLink}
                      >
                        Student
                      </Link>,
                      <Link
                        to="/teachernew/BulkReg"
                        className={cls1.dropdownLink}
                      >
                        Bulk Registration
                      </Link>,
                      <Link
                        to="/teachernew/TeacherReg"
                        className={cls1.dropdownLink}
                      >
                        Teacher
                      </Link>,
                    ]}
                  />
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <CustomDropdown
                    noLiPadding
                    buttonText="Download"
                    buttonProps={{
                      className: cls1.navLink,
                      color: "transparent",
                    }}
                    buttonIcon={GetApp}
                    dropdownList={[
                      <Link
                        to="/teachernew/Download"
                        className={cls1.dropdownLink}
                      >
                        Download
                      </Link>,
                    ]}
                  />
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <Link
                    to="/teachernew/ResultTeacher"
                    style={{ color: "white" }}
                  >
                    <Button target="_blank" className={cls1.navLink}>
                      {" "}
                      Results
                    </Button>
                  </Link>
                </ListItem>
                <ListItem className={cls1.listItem}>
                  <Link
                    to="/teachernew/EnrollStudent"
                    style={{ color: "white" }}
                  >
                    <Button target="_blank" className={cls1.navLink}>
                      Enroll for competition
                    </Button>
                  </Link>
                </ListItem>

                <ListItem className={cls1.listItem}>
                  <Link to="/teachernew/Analysis" style={{ color: "white" }}>
                    <Button target="_blank" className={cls1.navLink}>
                      Analysis
                    </Button>
                  </Link>
                </ListItem>
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
                        to="/studenthome/HomeMain"
                        className={cls1.dropdownLink}
                        onClick={() => {
                          userService.logout().then(
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
                <List className={cls1.list} style={{ background: "blue" }}>
                  <ListItem className={cls1.listItem}>
                    <img
                      alt="Can't load"
                      src={require("assets/img/Bebras_india_logo.png")}
                      style={{ align: "left", width: "50px", height: "50px" }}
                    ></img>
                  </ListItem>
                  <ListItem className={cls1.listItem}>
                    <CustomDropdown
                      noLiPadding
                      buttonText="Registration"
                      buttonProps={{
                        className: classes.navLink,
                        color: "transparent",
                      }}
                      buttonIcon={Apps}
                      dropdownList={[
                        <Link
                          to="/teachernew/IndividualReg"
                          className={cls1.dropdownLink}
                          style={{ color: "#0091b4" }}
                        >
                          Student
                        </Link>,
                        <Link
                          to="/teachernew/BulkReg"
                          className={cls1.dropdownLink}
                          style={{ color: "#0091b4" }}
                        >
                          Bulk Registration
                        </Link>,
                        <Link
                          to="/teachernew/TeacherReg"
                          className={cls1.dropdownLink}
                          style={{ color: "#0091b4" }}
                        >
                          Teacher
                        </Link>,
                      ]}
                    />
                  </ListItem>
                  <ListItem className={cls1.listItem}>
                    <CustomDropdown
                      noLiPadding
                      buttonText="Download"
                      buttonProps={{
                        className: cls1.navLink,
                        color: "transparent",
                      }}
                      buttonIcon={GetApp}
                      dropdownList={[
                        <Link
                          to="/teachernew/Download"
                          className={cls1.dropdownLink}
                          style={{ color: "#0091b4" }}
                        >
                          Download
                        </Link>,
                      ]}
                    />
                  </ListItem>
                  <ListItem className={cls1.listItem}>
                    <Link
                      to="/teachernew/ResultTeacher"
                      style={{ color: "#0091b4" }}
                    >
                      <Button target="_blank" className={cls1.navLink}>
                        {" "}
                        Results
                      </Button>
                    </Link>
                  </ListItem>
                  <ListItem className={cls1.listItem}>
                    <Link
                      to="/teachernew/EnrollStudent"
                      style={{ color: "#0091b4" }}
                    >
                      <Button target="_blank" className={cls1.navLink}>
                        {" "}
                        Enroll for competition
                      </Button>
                    </Link>
                  </ListItem>
                  <ListItem className={cls1.listItem}>
                    <Link
                      to="/teachernew/Analysis"
                      style={{ color: "#0091b4" }}
                    >
                      <Button target="_blank" className={cls1.navLink}>
                        Analysis
                      </Button>
                    </Link>
                  </ListItem>
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
                          to="/studenthome/HomeMain"
                          className={cls1.dropdownLink}
                          onClick={() => {
                            userService.logout().then(
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
        <div
          style={{
            backgroundImage:
              "linear-gradient(to bottom, #0191b4, #1fa9c8, #36c2db, #4ddbee, #65f5ff)",
          }}
        >
          <Switch>
            <Route
              path="/teachernew/IndividualReg"
              component={StudentRegistration}
            />
            <Route path="/teachernew/BulkReg" component={BulkRegistration} />
            <Route
              path="/teachernew/TeacherReg"
              component={TeacherRegistration}
            />

            <Route path="/teachernew/ResultTeacher" component={ResultsPage} />
            <Route path="/teachernew/Analysis" component={Analysis} />
            <Route path="/teachernew/Download" component={Download} />
            <Route
              path="/teachernew/DetailsDownload"
              component={DetailsDownload}
            />
            <Route path="/teachernew/Certificate" component={Certificate} />
            <Route
              path="/teachernew/EnrollStudent"
              component={EnrollStudentCompetition}
            />
          </Switch>
        </div>
        <Footer />
      </Router>
    </div>
  );
}

TeacherHeader.defaultProp = {
  color: "info",
};

TeacherHeader.propTypes = {
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
  // this will cause the sidebar to change the color from
  // props.color (see above) to changeColorOnScroll.color
  // when the window.pageYOffset is heigher or equal to
  // changeColorOnScroll.height and then when it is smaller than
  // changeColorOnScroll.height change it back to
  // props.color (see above)
  changeColorOnScroll: PropTypes.shape({
    height: PropTypes.number.isRequired,
    color: PropTypes.oneOf(["info"]).isRequired,
  }),
};
