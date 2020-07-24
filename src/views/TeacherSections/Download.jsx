import React from "react";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Typography from "@material-ui/core/Typography";
import { Tab } from "@material-ui/core";
import ButtonBase from "@material-ui/core/ButtonBase";
const usesty1 = makeStyles((theme) => ({
  root: {
    display: "flex",
    flexWrap: "wrap",
    minWidth: 300,
    width: "100%",
  },
  image: {
    position: "relative",
    height: 200,
    [theme.breakpoints.down("xs")]: {
      width: "100% !important", // Overrides inline-style
      height: 100,
    },
    "&:hover, &$focusVisible": {
      zIndex: 1,
      "& $imageBackdrop": {
        opacity: 0.15,
      },
      "& $imageMarked": {
        opacity: 0,
      },
      "& $imageTitle": {
        border: "4px solid currentColor",
      },
    },
  },
  focusVisible: {},
  imageButton: {
    position: "absolute",
    left: 0,
    right: 0,
    top: 0,
    bottom: 0,
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
    color: theme.palette.common.white,
  },
  imageSrc: {
    position: "absolute",
    left: 0,
    right: 0,
    top: 0,
    bottom: 0,
    backgroundSize: "cover",
    backgroundPosition: "center 40%",
  },
  imageBackdrop: {
    position: "absolute",
    left: 0,
    right: 0,
    top: 0,
    bottom: 0,
    backgroundColor: theme.palette.common.black,
    opacity: 0.4,
    transition: theme.transitions.create("opacity"),
  },
  imageTitle: {
    position: "relative",
    padding: `${theme.spacing(2)}px ${theme.spacing(4)}px ${
      theme.spacing(1) + 6
    }px`,
  },
  imageMarked: {
    height: 3,
    width: 18,
    backgroundColor: theme.palette.common.white,
    position: "absolute",
    bottom: -2,
    left: "calc(50% - 9px)",
    transition: theme.transitions.create("opacity"),
  },
}));
export default function Download(props) {
  const cls1 = usesty1();
  return (
    <div>
      <br />
      <br />
      <br />
      <br></br>
      <br></br>
      <br></br>
      <br></br>
      <GridContainer justify="center">
        <GridItem xs={12} sm={12} md={2}>
          <br></br>
          <br></br>
          <br></br>
          <br></br>
          <br></br>
          <br></br>
        </GridItem>
        <GridItem xs={12} sm={12} md={5}>
          <div className={cls1.root}>
            <ButtonBase
              href="/teachernew/DetailsDownload"
              focusRipple
              className={cls1.image}
              focusVisibleClassName={cls1.focusVisible}
              style={{
                width: "40%",
                backgroundImage:
                  "radial-gradient(circle, #2C3531, #373F3B, #414945, #4D5350, #585E5B)",
                border: "2px ridge #2C3531",
                borderRadius: "28px",
              }}
            >
              <span
                className={cls1.imageSrc}
                style={{
                  backgroundImage:
                    "radial-gradient(circle, #2C3531, #373F3B, #414945, #4D5350, #585E5B)",
                }}
              />
              <span className={cls1.imageBackdrop} />
              <span className={cls1.imageButton}>
                <Typography
                  component="span"
                  variant="subtitle1"
                  className={cls1.imageTitle}
                  style={{ color: "#75D5FD" }}
                >
                  Download Student Details
                  <span className={cls1.imageMarked} />
                </Typography>
              </span>
            </ButtonBase>
          </div>
          <Tab></Tab>
        </GridItem>
        <GridItem xs={12} sm={12} md={5}>
          <div className={cls1.root}>
            <ButtonBase
              href="/teachernew/Certificate"
              focusRipple
              className={cls1.image}
              focusVisibleClassName={cls1.focusVisible}
              style={{
                width: "40%",
                backgroundImage:
                  "radial-gradient(circle, #2C3531, #373F3B, #414945, #4D5350, #585E5B)",
                border: "2px ridge #2C3531",
                borderRadius: "28px",
              }}
            >
              <span
                className={cls1.imageSrc}
                style={{
                  backgroundImage:
                    "radial-gradient(circle, #2C3531, #373F3B, #414945, #4D5350, #585E5B)",
                }}
              />
              <span className={cls1.imageBackdrop} />
              <span className={cls1.imageButton}>
                <Typography
                  component="span"
                  variant="subtitle1"
                  className={cls1.imageTitle}
                  style={{ color: "#75D5FD" }}
                >
                  Download Certificate
                  <span className={cls1.imageMarked} />
                </Typography>
              </span>
            </ButtonBase>
          </div>
        </GridItem>
        <GridItem xs={12} sm={12} md={12}>
          <br />
          <br />
          <br />
          <br />
          <br />
        </GridItem>
      </GridContainer>
      <Tab></Tab>
    </div>
  );
}
