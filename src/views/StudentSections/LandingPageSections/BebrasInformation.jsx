import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import LiveHelpIcon from "@material-ui/icons/LiveHelp";
import Card from "components/Card/Card.js";
import WbIncandescentIcon from "@material-ui/icons/WbIncandescent";
import CardActionArea from "@material-ui/core/CardActionArea";
import CardContent from "@material-ui/core/CardContent";
import CardMedia from "@material-ui/core/CardMedia";
import Typography from "@material-ui/core/Typography";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import InfoArea from "components/InfoArea/InfoArea.js";
import AccessAlarmsIcon from "@material-ui/icons/AccessAlarms";
import Carousel from "react-slick";
import styles from "assets/jss/material-kit-react/views/landingPageSections/productStyle.js";
// import { Button } from "@material-ui/core";
import './registerbutton.scss';
const useStyles = makeStyles(styles);

export default function BebrasInformation() {
  const settings = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 3,
    slidesToScroll: 1,
  };

  const classes = useStyles();
  return (
    <div className={classes.section}>
      <div>
        <GridContainer justify="center" style={{paddingTop:"10px"}}>
          <GridItem xs={12} sm={12} md={4}>
            {/* <Button variant="contained" href="/Register-Page" color="secondary" fullwidth>Register your school now</Button> */}
            {!sessionStorage.getItem("Authenticated") && (   <a href="/Register-Page">
              <div className="boxbutton">
                Register your school now
          </div>
            </a> )}
          </GridItem>
        </GridContainer>
        <GridContainer justify="center">
          <GridItem xs={12} sm={12} md={4}>
            <img
              alt="Can't load "
              src={require("assets/img/Bebras_india_logo.png")}
              style={{
                width: "inherit",
                height: "inherit",
                top: "0px",
                left: "0px",
              }}
            ></img>
          </GridItem>

          <div style={{ width: "65%" }}>
            <GridItem
              xs={12}
              sm={12}
              md={12}
              style={{
                backgroundColor: "#63a4ff",
                backgroundImage:
                  "linear-gradient(315deg, #63a4ff 0%, #83eaf1 74%)",
                borderRadius: "15px 50px",
              }}
            >
              <h2 className={classes.title}>Bebras challenge</h2>
              <h5
                className={classes.description}
                style={{
                  fontFamily: "'Roboto Slab', 'Times New Roman', 'serif'",
                  fontWeight: "700",
                  color: "#3C4858",
                }}
              >
                Bebras is an international student Computational Thinking
                Challenge organised in over 60 countries and designed to get
                students all over the world excited about computing. The
                challenge is a great way to learn about computational thinking
                and problem solving skills. The Bebras challenges are made of a
                set of short problems called Bebras tasks. The tasks are fun,
                engaging and based on problems that Computer Scientists enjoy
                solving. The tasks require logical thinking and can be solved
                without prior knowledge of computational thinking. The aim is to
                solve as many as you can in the allotted time.
              </h5>
            </GridItem>
          </div>
        </GridContainer>
        <GridContainer>
          <GridItem xs={12} sm={12} md={6}>
            <br></br>
            <br></br>
            <br></br>

            <div
              style={{
                borderRadius: "59% 41% 48% 52% / 30% 51% 49% 70%",
                backgroundColor: "#d19592",
                backgroundImage:
                  "linear-gradient(315deg, #63a4ff 0%, #83eaf1 74%)",
                width: "83%",
                height: "76%",
              }}
            >
              <InfoArea
                title=" Bebras is an international initiative aiming to promote Informatics (Computer Science, or Computing) and computational thinking among school students at all ages. Participants are usually supervised by teachers who may integrate the Bebras challenge in their teaching activities. The challenge is performed at schools using computers or mobile devices."
                description=" "
                icon={LiveHelpIcon}
                iconColor="rose"
                vertical
              />
            </div>
          </GridItem>
          <GridItem xs={12} sm={12} md={6}>
            <Card className={classes.root} style={{ width: "100%" }}>
              <CardActionArea>
                <CardMedia
                  style={{ height: 0, paddingTop: "100%" }}
                  image={require("assets/img/reading_a_book.svg")}
                  title="Contemplative Reptile"
                />
                <CardContent>
                  <Typography gutterBottom variant="h5" component="h2">
                    What is Bebras?
                  </Typography>
                  <Typography
                    variant="body2"
                    color="textSecondary"
                    component="p"
                  ></Typography>
                </CardContent>
              </CardActionArea>
            </Card>
          </GridItem>
          <GridItem xs={12} sm={12} md={6}>
            <Card className={classes.root} style={{ width: "100%" }}>
              <CardActionArea>
                <CardMedia
                  style={{ height: 0, paddingTop: "100%" }}
                  image={require("assets/img/brainstorming_.svg")}
                  title="Contemplative Reptile"
                />
                <CardContent>
                  <Typography gutterBottom variant="h5" component="h2">
                    What is computational thinking?
                  </Typography>
                  <Typography
                    variant="body2"
                    color="textSecondary"
                    component="p"
                  ></Typography>
                </CardContent>
              </CardActionArea>
            </Card>
          </GridItem>
          <GridItem xs={12} sm={12} md={6}>
            <br></br>
            <br></br>
            <br></br>

            <div
              style={{
                borderRadius: "59% 41% 48% 52% / 30% 51% 49% 70%",
                backgroundColor: "#f4f5f6",
                backgroundImage:
                  "linear-gradient(315deg, #f4f5f6 0%, #9b4dca 74%)",
                width: "83%",
                height: "76%",
                marginLeft: "15%",
              }}
            >
              <InfoArea
                title="Computational thinking involves using a set of problem-solving skills and techniques that software engineers use to write programs and apps. The Bebras challenge promotes problem solving skills and Informatics concepts including the ability to break down complex tasks into simpler components, algorithm design, pattern recognition, pattern generalisation and abstraction."
                description=""
                icon={WbIncandescentIcon}
                iconColor="warning"
                vertical
              />
            </div>
          </GridItem>
          <GridItem xs={12} sm={12} md={6} style={{ justifyContent: "center" }}>
            <br></br>
            <br></br>
            <br></br>
            <div
              style={{
                borderRadius: "59% 41% 48% 52% / 30% 51% 49% 70%",
                backgroundColor: "#007ea7",
                backgroundImage:
                  "linear-gradient(315deg, #007ea7 0%, #80ced7 74%)",
                width: "83%",
                height: "76%",
              }}
            >
              <InfoArea
                title="The second week of November is declared as World-Wide BEBRAS week for solving tasks. Some countries extended it to two weeks. Many countries run all-year-round Bebras activities like participants awarding events, second round of the challenge, summer campus, teacher workshops, collecting statistics and writing research papers."
                description=""
                icon={AccessAlarmsIcon}
                iconColor="gray"
                vertical
              />
            </div>
          </GridItem>
          <GridItem xs={12} sm={12} md={6}>
            <Card className={classes.root} style={{ width: "100%" }}>
              <CardActionArea>
                <CardMedia
                  style={{ height: 0, paddingTop: "100%" }}
                  image={require("assets/img/undraw_booking_33fn.svg")}
                  title="Contemplative Reptile"
                />
                <CardContent>
                  <Typography gutterBottom variant="h5" component="h2">
                    Dates
                  </Typography>
                </CardContent>
              </CardActionArea>
            </Card>
          </GridItem>
        </GridContainer>
        <GridContainer>
          <GridItem xs={12} sm={12} md={12}>
            <Card>
              <Carousel {...settings}></Carousel>
            </Card>
          </GridItem>
        </GridContainer>
      </div>
    </div>
  );
}
