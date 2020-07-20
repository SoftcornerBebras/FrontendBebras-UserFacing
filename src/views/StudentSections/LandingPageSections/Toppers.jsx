import React from "react";
// nodejs library that concatenates classes
import classNames from "classnames";
// @material-ui/core components
import { userService } from "services/user.service";
import { makeStyles } from "@material-ui/core/styles";
import { rollIn, slideInDown } from "react-animations";
import Radium, { StyleRoot } from "radium";
import Carousel from "react-slick";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
// import Card from "components/Card/Card.js";
import Card from '@material-ui/core/Card';
import styles from "assets/jss/material-kit-react/views/landingPageSections/teamStyle.js";
import profilePageStyle from "assets/jss/material-kit-react/views/profilePage.js";
import girl from "assets/img/faces/f4.PNG";
import girl1 from "assets/img/faces/f1.PNG";
import girl2 from "assets/img/faces/f2.PNG";
import girl3 from "assets/img/faces/f3.PNG";
import boy from "assets/img/faces/f5.PNG";
import boy1 from "assets/img/faces/f6.PNG";
import boy2 from "assets/img/faces/f7.PNG";
import boy3 from "assets/img/faces/f8.PNG";
import { Tab } from "@material-ui/core";
const useStyles = makeStyles(styles);
const usesty = makeStyles(profilePageStyle);
export default function Toppers() {
  const classes = useStyles();
  const girls = [girl, girl1, girl2, girl3];
  const boys = [boy, boy1, boy2, boy3];
  const [userdata, setUserdata] = React.useState([]);
  const [competitionName, setCompetitionName] = React.useState("");
  const [countSlides, setCountSlides] = React.useState(1);
  const cls1 = usesty();
  const imageClasses = classNames(
    classes.imgRaised,
    classes.imgRoundedCircle,
    classes.imgFluid
  );
  //getAgeGroupToppers
  React.useEffect(() => {
    userService.getAgeGroupToppers().then(
      (user) => {
        setUserdata(user.toppers);
        setCompetitionName(user.competitionName);
        if (user.toppers.length < 2) {
          setCountSlides(1);
        } else {
          setCountSlides(2);
        }
      },
      (error) => {
        console.log(error.response);
      }
    );
  }, []);
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
  const settings = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: countSlides,
    slidesToScroll: 1,
    autoplay: true,
  };
  if (userdata.length < 2) {
    return (
      <div>
        <div className={classes.section}>
          <StyleRoot>
            <div style={styles.slideInDown}>
              <h2 className={classes.title}>Toppers nation wide</h2>
              <center>
                <h4 style={{ color: "black" }}>for</h4>
              </center>
              <h3 className={classes.title}>{competitionName}</h3>
            </div>
          </StyleRoot>
          <div style={{ padding: " 0px 20px" }}>
            <GridContainer justify="center">
              <GridItem xs={12} sm={12} md={12}>
                <Carousel {...settings}>
                  {userdata.map((item, index) => {
                    return (
                      <GridItem xs={12} sm={12} md={10} key={item}>
                        <StyleRoot>
                          <div style={styles.rollIn}>
                            <div
                              className="whitebg"
                              style={{
                                width: "50%",
                                margin: "0% 25%",
                                clipPath:
                                  "polygon(0% 0%, 100% 0%, 100% 75%, 75% 75%, 75% 100%, 50% 75%, 0% 75%)",
                              }}
                            >
                              <Tab style={{ backgroundColor: "#FFFFFF" }}></Tab>
                              <div
                                className="compcard"
                                style={{
                                  backgroundColor: "#ABE9CD",
                                  backgroundImage:
                                    "linear-gradient(315deg, #ABE9CD 0%, #3EADCF 74%)",
                                }}
                              >
                                <div className={cls1.profile}>
                                  <div>
                                    <img
                                      src={
                                        item.gender === "Female"
                                          ? girls[
                                          Math.floor(
                                            Math.random() * girls.length
                                          )
                                          ]
                                          : boys[
                                          Math.floor(
                                            Math.random() * boys.length
                                          )
                                          ]
                                      }
                                      alt="..."
                                      className={imageClasses}
                                    />
                                  </div>
                                  <div className={cls1.name}>
                                    <Card
                                      style={{
                                        backgroundColor: "#ABE9CD",
                                        backgroundImage:
                                          "linear-gradient(315deg, #ABE9CD 0%, #3EADCF 74%)",
                                        clipPath:
                                          "polygon(0% 0%, 100% 0%, 100% 75%, 75% 75%, 75% 100%, 50% 75%, 0% 75%)",
                                      }}
                                    >
                                      <GridItem
                                        className={classes.itemGrid}
                                        md={4}
                                      ></GridItem>
                                      <h4
                                        className={classes.cardTitle}
                                        style={{
                                          color: "black",
                                          fontWeight: "900",
                                          fontSize: "200%",
                                          marginBottom: "-2px",
                                        }}
                                      >
                                        {item.studentName}
                                      </h4>
                                      <h4
                                        className={classes.smallTitle}
                                        style={{
                                          color: "black",
                                          fontWeight: "500",
                                          marginBottom: "-2px",
                                        }}
                                      >
                                        Rank : {item.rank} Score : {item.score}
                                      </h4>
                                      <h4
                                        className={classes.smallTitle}
                                        style={{
                                          color: "black",
                                          fontWeight: "500",
                                          marginBottom: "-2px",
                                        }}
                                      >
                                        {item.AgeGroup}
                                      </h4>
                                      <h4
                                        className={classes.smallTitle}
                                        style={{
                                          color: "black",
                                          fontWeight: "500",
                                          marginBottom: "20%"
                                        }}
                                      >
                                        School:{item.schoolName}
                                      </h4>
                                     
                                    </Card>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </StyleRoot>
                      </GridItem>
                    );
                  })}
                </Carousel>
              </GridItem>
            </GridContainer>
          </div>
        </div>
      </div>
    );
  } else {
    return (
      <div>
        <div className={classes.section}>
          <StyleRoot>
            <div style={styles.slideInDown}>
              <h2 className={classes.title}>Toppers nation wide</h2>
              <center>
                <h4 style={{ color: "black" }}>for</h4>
              </center>
              <h3 className={classes.title}>{competitionName}</h3>
            </div>
          </StyleRoot>
          <div style={{ padding: " 0px 20px" }}>
            <GridContainer justify="center">
              <GridItem xs={12} sm={12} md={12}>
                <Carousel {...settings}>
                  {userdata.map((item, index) => {
                    return (
                      <GridItem xs={12} sm={12} md={10} key={item}>
                        <StyleRoot>
                          <div style={styles.rollIn}>
                            <div
                              className="whitebg"
                              style={{
                                clipPath:
                                  "polygon(0% 0%, 100% 0%, 100% 75%, 75% 75%, 75% 100%, 50% 75%, 0% 75%)",
                              }}
                            >
                              <Tab style={{ backgroundColor: "#FFFFFF" }}></Tab>
                              <div
                                className="compcard"
                                style={{
                                  backgroundColor: "#ABE9CD",
                                  backgroundImage:
                                    "linear-gradient(315deg, #ABE9CD 0%, #3EADCF 74%)",
                                }}
                              >
                                <div className={cls1.profile}>
                                  <div>
                                    <img
                                      src={
                                        item.gender === "Female"
                                          ? girls[
                                          Math.floor(
                                            Math.random() * girls.length
                                          )
                                          ]
                                          : boys[
                                          Math.floor(
                                            Math.random() * boys.length
                                          )
                                          ]
                                      }
                                      alt="..."
                                      className={imageClasses}
                                    />
                                  </div>
                                  <div className={cls1.name}>
                                    <Card
                                      style={{
                                        backgroundColor: "#ABE9CD",
                                        backgroundImage:
                                          "linear-gradient(315deg, #ABE9CD 0%, #3EADCF 74%)",
                                        clipPath:
                                          "polygon(0% 0%, 100% 0%, 100% 75%, 75% 75%, 75% 100%, 50% 75%, 0% 75%)",
                                      }}
                                    >
                                      <GridItem
                                        className={classes.itemGrid}
                                        md={4}
                                      ></GridItem>
                                      <h4
                                        className={classes.cardTitle}
                                        style={{
                                          color: "black",
                                          fontWeight: "900",
                                          fontSize: "200%",
                                          marginBottom: "-2px",
                                        }}
                                      >
                                        {item.studentName}
                                      </h4>
                                      <h4
                                        className={classes.smallTitle}
                                        style={{
                                          color: "black",
                                          fontWeight: "500",
                                          marginBottom: "-2px",
                                        }}
                                      >
                                        Rank : {item.rank} Score : {item.score}
                                      </h4>
                                      <h4
                                        className={classes.smallTitle}
                                        style={{
                                          color: "black",
                                          fontWeight: "500",
                                          marginBottom: "-2px",
                                        }}
                                      >
                                        {item.AgeGroup}
                                      </h4>
                                      <h4
                                        className={classes.smallTitle}
                                        style={{
                                          color: "black",
                                          fontWeight: "500",
                                          marginBottom: "20%"
                                        }}
                                      >
                                        School:{item.schoolName}
                                      </h4>

                                    </Card>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </StyleRoot>
                      </GridItem>
                    );
                  })}
                </Carousel>
              </GridItem>
            </GridContainer>
          </div>
        </div>
      </div>

    )
  }
}
