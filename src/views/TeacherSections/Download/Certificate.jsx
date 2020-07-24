import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import Typography from "@material-ui/core/Typography";
import NotificationImportantIcon from "@material-ui/icons/NotificationImportant";
import InfoArea from "components/InfoArea/InfoArea.js";
import ButtonBase from "@material-ui/core/ButtonBase";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Notiflix from "notiflix";
import Grid from "@material-ui/core/Grid";
import Select from "react-select";
import { userService } from "services/user.service";

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
export default function Certificate(props) {
  const cls1 = usesty1();
  const [optionschoolclass, setOptionschoolclass] = React.useState([]);
  const [schoolclass, setschoolclass] = React.useState({
    label: "",
    value: "",
  });
  const [optionschoolcmp, setOptionschoolcmp] = React.useState([]);
  const [competition, setcompetition] = React.useState({
    label: "",
    value: "",
  });

  const onChangeSchoolClass = (optionSelected) => {
    if (optionSelected) {
      setschoolclass(optionSelected.value);
      setcompetition({ label: "", value: "" });
      var arry;
      userService.getCompetitionListforCertificate(optionSelected.value).then(
        (array2) => {
          arry = array2;
          const datacmp = [];
          arry.forEach(function (element) {
            datacmp.push({ label: element, value: element });
          });
          setOptionschoolcmp(datacmp);
        },
        (error) => {
          console.log(error);
          setOptionschoolcmp([]);
          if (error.response.status === 401) {
            window.location.reload(false);
          }
        }
      );
    }
  };
  const onChangeCmp = (optionSelected) => {
    if (optionSelected) {
      setcompetition(optionSelected.value);
    }
  };
  React.useEffect(() => {
    // code to run on component mount

    var arry;
    userService.getSchoolClasses().then(
      (array2) => {
        arry = array2;

        const dataschoolclass = [];
        arry.forEach(function (element) {
          dataschoolclass.push({ label: element, value: element });
        });
        setOptionschoolclass(dataschoolclass);
      },
      (error) => {
        console.log(error);
        setOptionschoolclass([]);
        if (error.response.status === 401) {
          window.location.reload(false);
        }
      }
    );
  }, []);
  return (
    <div className="whitebg" style={{ marginTop: "0%" }}>
      <br></br>
      <br></br>
      <GridContainer justify="center">
        <GridItem xs={12} sm={12} md={12}>
          <div style={{ padding: "30px 0px 0px 0px" }}>
            <Grid container spacing={6} justify="center">
              <Grid item xs md={3} style={{ alignItems: "center" }}>
                <Select
                  styles={{
                    control: (base, state) => ({
                      ...base,
                      "&:hover": {
                        border: "2px solid #0091B4",
                      }, // border style on hover
                      border: "2px solid #0091B4", // default border color
                    }),
                  }}
                  placeholder="Select class"
                  value={schoolclass.label}
                  options={optionschoolclass}
                  onChange={onChangeSchoolClass}
                />
              </Grid>
              <Grid item xs md={3}>
                <Select
                  styles={{
                    control: (base, state) => ({
                      ...base,
                      "&:hover": {
                        border: "2px solid #0091B4",
                      }, // border style on hover
                      border: "2px solid #0091B4", // default border color
                    }),
                  }}
                  placeholder="Select competition"
                  value={competition.label}
                  options={optionschoolcmp}
                  onChange={onChangeCmp}
                />
              </Grid>
            </Grid>
          </div>
        </GridItem>

        <GridItem xs={12} sm={12} md={6}>
          <br />
          <br />
          <center>
            <p
              width="70%"
              behaviour="alternate"
              style={{ color: "red", marginLeft: "63%", fontWeight: "500" }}
            >
              Note: It is compulsary to select class and competition before
              downloading the certificates.
            </p>
          </center>
          <br />
          <br />
          <div style={{ marginLeft: "40%" }}>
            <InfoArea
              title=" Click on download participation certificates button to download participation certificates of all the students who took part in  bebras challenge"
              icon={NotificationImportantIcon}
              description=" "
              iconColor="rose"
              vertical
            />
          </div>
        </GridItem>
        <GridItem xs={12} sm={12} md={1}>
          <br />
          <br />
          <br />
        </GridItem>
        <GridItem xs={12} sm={12} md={5}>
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <div className={cls1.root}>
            <ButtonBase
              focusRipple
              className={cls1.image}
              onClick={() => {
                if (schoolclass.value === "" || competition.value === "") {
                  Notiflix.Notify.Failure(
                    "Please choose from dropdowns".toUpperCase()
                  );
                  return;
                }
                userService.downloadCertificate(schoolclass, competition);
              }}
              focusVisibleClassName={cls1.focusVisible}
              style={{
                width: "40%",
                backgroundImage:
                  "radial-gradient(circle, #2c3531, #373f3b, #414945, #4d5350, #585e5b)",
                border: "2px ridge #2c3531",
                borderRadius: "28px",
              }}
            >
              <span
                className={cls1.imageSrc}
                style={{
                  backgroundImage:
                    "radial-gradient(circle, #2c3531, #373f3b, #414945, #4d5350, #585e5b)",
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
                  Download participation Certificates
                  <span className={cls1.imageMarked} />
                </Typography>
              </span>
            </ButtonBase>
          </div>
        </GridItem>
        <GridItem xs={12} sm={12} md={2}>
          <br />
          <br />
          <br />
        </GridItem>
        <GridItem xs={12} sm={12} md={5}>
          <br />
          <br />
          <br />
          <div className={cls1.root}>
            <ButtonBase
              focusRipple
              className={cls1.image}
              onClick={() => {
                if (schoolclass.value === "" || competition.value === "") {
                  Notiflix.Notify.Failure(
                    "Please choose from dropdowns".toUpperCase()
                  );
                  return;
                }
                userService.downloadSchoolTopperCertificate(
                  schoolclass,
                  competition
                );
              }}
              focusVisibleClassName={cls1.focusVisible}
              style={{
                width: "40%",
                backgroundImage:
                  "radial-gradient(circle, #2c3531, #373f3b, #414945, #4d5350, #585e5b)",
                border: "2px ridge #2c3531",
                borderRadius: "28px",
              }}
            >
              <span
                className={cls1.imageSrc}
                style={{
                  backgroundImage:
                    "radial-gradient(circle, #2c3531, #373f3b, #414945, #4d5350, #585e5b)",
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
                  Download Age Group topper Certificate
                  <span className={cls1.imageMarked} />
                </Typography>
              </span>
            </ButtonBase>
          </div>
        </GridItem>
        <GridItem xs={12} sm={12} md={3} style={{ marginLeft: "-10px" }}>
          <br />
          <br />
          <div>
            <InfoArea
              title=" Click on Download school topper Certificate button to download certificates of your school toppers containing their achievement in  bebras challenge"
              icon={NotificationImportantIcon}
              description=" "
              iconColor="rose"
              vertical
            />
          </div>
        </GridItem>
        <GridItem xs={12} sm={12} md={1}>
          <br />
          <br />
          <br />
        </GridItem>
      </GridContainer>
      <br />
      <br />
    </div>
  );
}
