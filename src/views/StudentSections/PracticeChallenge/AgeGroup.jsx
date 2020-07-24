import React from "react";
// nodejs library that concatenates classes
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import { rollIn, slideInDown } from "react-animations";
import Radium, { StyleRoot } from "radium";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Card from "@material-ui/core/Card";
import styles from "assets/jss/material-kit-react/views/landingPageSections/teamStyle.js";
//import styles from "assets/jss/material-kit-react/views/componentsSections/carouselStyle.js";
import Aryabhata from "assets/img/faces/aryabht.PNG";
import Bhaskara from "assets/img/faces/Bhaskara.PNG";
import other from "assets/img/faces/Chanakya.PNG";
import Ramanujan from "assets/img/faces/Ramanujan.jpg";
import Mahavira from "assets/img/faces/Mahavira.jpg";
import { userService } from "services/user.service.jsx";
import { useHistory } from "react-router-dom";
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
  svgColor: "#FFFFFF",
  messageFontSize: "24px",
  messageMaxLength: 34,
  messageColor: "#FFFFFF",
});
const useStyles = makeStyles(styles);
var img = "";
export default function AgeGroup() {
  const history = useHistory();
  const classes = useStyles();
  const [cmplist, setCmplist] = React.useState([]);
  const styles = {
    rollIn: {
      animation: "x 1s",
      animationName: Radium.keyframes(rollIn, "rollIn"),
    },
    slideInDown: {
      animation: "x 1s",
      animationName: Radium.keyframes(slideInDown, "slideInDown"),
    },
  };
  React.useEffect(() => {
    // code to run on component mount
    Notiflix.Block.Dots("body");
    userService.getPracticeChallengeList().then(
      (user) => {
        Notiflix.Block.Remove("body");
        setCmplist(user);
      },
      (error) => {
        Notiflix.Block.Remove("body");
        console.log(error.response.data);
        Notiflix.Notify.Failure(`${error.response.data}  `.toUpperCase());
      }
    );
    // eslint-disable-next-line
  }, []);

  return (
    <div className={classes.section}>
      <StyleRoot>
        <div style={styles.slideInDown}>
          <h2 className={classes.title}>
            Please click on the image of your age group
          </h2>
        </div>
      </StyleRoot>
      <div style={{ padding: "0px 20px" }} className="element">
        <GridContainer>
          {cmplist.map((value, index) => {
            if (value.includes("Aryabhata")) {
              img = Aryabhata;
            } else if (value.includes("Brahmagupta")) {
              img = other;
            } else if (value.includes("Ramanujan")) {
              img = Ramanujan;
            } else if (value.includes("Mahavira")) {
              img = Mahavira;
            } else {
              img = Bhaskara;
            }

            return (
              <GridItem md={6} key={value}>
                <StyleRoot>
                  <div style={styles.rollIn}>
                    {" "}
                    {/* <Link color="secondary" to={"/pcpage"}> */}
                    <Card
                      plain="true"
                      onClick={() =>
                        userService.getPracticeChallengeQues(value).then(
                          (user) => {
                            Notiflix.Block.Dots(".element");
                            history.push({
                              pathname: "/pcpage",

                              state: { data: user },
                            });
                            Notiflix.Block.Remove("body");
                          },
                          (error) => {
                            Notiflix.Block.Remove(".element");
                            console.log(error.response.data);
                            alert(`${error.response.data}  `);
                          }
                        )
                      }
                    >
                      <GridItem className={classes.itemGrid}>
                        <img
                          src={img}
                          alt="..."
                          style={{
                            height: "50%",
                            width: "50%",
                            borderRadius: "50%",
                            margin: " 0% 0%",
                            cursor: "pointer",
                          }}
                        />
                      </GridItem>
                      <h4 className={classes.cardTitle}>
                        {value}
                        <br />
                      </h4>
                    </Card>{" "}
                    {/* </Link> */}
                  </div>
                </StyleRoot>
              </GridItem>
            );
          })}
        </GridContainer>
      </div>
    </div>
  );
}
