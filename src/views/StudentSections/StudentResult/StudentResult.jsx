import React, { useRef } from "react";
import Grid from "@material-ui/core/Grid";
import Button from "@material-ui/core/Button";
import Divider from "@material-ui/core/Divider";
import { makeStyles } from "@material-ui/core/styles";
import { userService } from "services/user.service";
import Paper from "@material-ui/core/Paper";
import ExpansionPanel from "@material-ui/core/ExpansionPanel";
import ExpansionPanelDetails from "@material-ui/core/ExpansionPanelDetails";
import ExpansionPanelSummary from "@material-ui/core/ExpansionPanelSummary";
import { Typography } from "@material-ui/core";
import ExpandMoreIcon from "@material-ui/icons/ExpandMore";
import { StyleRoot } from "radium";
import "./studentresult.css";
import {baseurl} from 'services/constant'
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

const urll = baseurl;

const useStyles = makeStyles((theme) => ({
  root: {
    width: "100%",
  },
  heading: {
    fontSize: theme.typography.pxToRem(15),
    flexBasis: "25%",
    flexShrink: 0,
  },
  secondaryHeading: {
    fontSize: theme.typography.pxToRem(15),
    color: theme.palette.text.secondary,
  },
}));

export default function StudentResult(props) {
  const classes = useStyles();
  const [expanded, setExpanded] = React.useState(false);
  const [data, setData] = React.useState(null);
  let cardRef = useRef([]);
  React.useEffect(() => {
    // code to run on component mount
    userService
      .getCompetitionResult(JSON.parse(sessionStorage.getItem("competition")))
      .then(
        (user) => {
          setData(user);
        },
        (error) => {
          console.log(error);
        }
      );
  }, []);
  const createarray = () => {
    data.questions.map((item, index) => {
      cardRef.current[index] = "" + index;
      return true;
    });
  };
  const handleChange = (panel) => (event, isExpanded) => {
    setExpanded(isExpanded ? panel : false);
  };
  const conditionRender = (quest, item) => {
    const opt = ["f-option", "s-option", "t-option", "r-option"];
    if (quest.hasOwnProperty("images_of_option")) {
      return (
        <Grid container spacing={10} style={{ paddingTop: "4%" }} key={item}>
          <Grid item xs>
            <ExpansionPanel
              expanded={expanded === cardRef.current[item]}
              onChange={handleChange(cardRef.current[item])}
            >
              <ExpansionPanelSummary
                expandIcon={<ExpandMoreIcon />}
                aria-controls="panel1bh-content"
                id="panel1bh-header"
              >
                <Grid container spacing={3}>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h4
                        style={{ fontWeight: "900", fontFamily: "Righteous" }}
                      >
                        {quest.question_caption}
                      </h4>
                    </Typography>
                  </Grid>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h5 style={{ fontWeight: "900", color: "red" }}>
                        Marks: {quest.marks} Score: {quest.Score}
                      </h5>
                    </Typography>
                  </Grid>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h5 style={{ fontWeight: "900", color: "blue" }}>
                        CS Skills: {quest.question_cs_skills}
                      </h5>
                    </Typography>
                  </Grid>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h5 style={{ fontWeight: "900", color: "blue" }}>
                        Domain: {quest.question_domain}
                      </h5>
                    </Typography>
                  </Grid>
                </Grid>
              </ExpansionPanelSummary>
              <ExpansionPanelDetails>
                <Paper
                  elevation={0}
                  style={{ padding: "1%", width: "-webkit-fill-available" }}
                >
                  <div>
                    <h5>
                      <b>
                        <div
                          dangerouslySetInnerHTML={{
                            __html: quest.question_background,
                          }}
                        />
                      </b>
                    </h5>
                  </div>
                  <Grid container spacing={2}>
                    <br></br>
                    <br></br>
                    {quest.images_of_option.map((item, index) => {
                      var urlimg = urll + `${item}`;
                      return (
                        <StyleRoot key={item}>
                          <Grid item>
                            <br></br>
                            <br></br>
                            <br></br>
                            <br></br>
                            {quest.options[index] === quest.selectedoption ? (
                              <div>
                                <div className="studentresult">
                                  <div
                                    className={
                                      quest.selectedoption ===
                                      quest.correctoption
                                        ? "selectedoptionImage"
                                        : "wrngoptionImage"
                                    }
                                  >
                                    <ul>
                                      <li style={{ pointerEvents: "none" }}>
                                        <input
                                          type="radio"
                                          id={opt[index]}
                                          name={quest.question_caption}
                                          value={"" + item + index}
                                          checked
                                          disabled
                                        />
                                        <label
                                          htmlFor={opt[index]}
                                          className="element-animation"
                                        >
                                          <img alt="oops" style={{maxHeight:"100%",maxWidth:"100%"}} src={urlimg}></img>
                                          <figcaption>
                                            {quest.options[index]}
                                          </figcaption>
                                        </label>
                                        <div className="check"></div>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                            ) : (
                              <div className="studentresult">
                                <ul>
                                  <li>
                                    <input
                                      type="radio"
                                      id={opt[index]}
                                      name={quest.question_caption}
                                      value={"" + item + index}
                                      disabled
                                    />
                                    <label
                                      htmlFor={opt[index]}
                                      className="element-animation"
                                    >
                                      <img alt="oops" style={{maxWidth:"100%"}} src={urlimg}></img>
                                      <figcaption>
                                        {quest.options[index]}
                                      </figcaption>
                                    </label>
                                    <div className="check"></div>
                                  </li>
                                </ul>
                              </div>
                            )}
                          </Grid>
                        </StyleRoot>
                      );
                    })}

                    <Grid container spacing={2}>
                      <br></br>
                      <h5
                        style={{
                          color: "darkblue",
                          margin: "1%",
                          padding: "1%",
                          width: "-webkit-fill-available",
                        }}
                      >
                        <b>Explanation:</b><div
                          dangerouslySetInnerHTML={{
                            __html: quest.question_explanation,
                          }}
                        />
                      </h5>
                      <div
                        style={{
                          background: "#3D1172",
                          color: "white",
                          margin: "1%",
                          padding: "1%",
                          width: "-webkit-fill-available",
                        }}
                      >
                        <b>Correct option: {quest.correctoption}</b>
                      </div>
                    </Grid>
                  </Grid>
                </Paper>
              </ExpansionPanelDetails>
            </ExpansionPanel>
          </Grid>
        </Grid>
      );
    } else if (
      !quest.hasOwnProperty("images_of_option") &&
      !quest.hasOwnProperty("options")
    ) {
      return (
        <Grid container spacing={4} style={{ paddingTop: "4%" }} key={item}>
          <Grid item xs>
            <ExpansionPanel
              expanded={expanded === cardRef.current[item]}
              onChange={handleChange(cardRef.current[item])}
            >
              <ExpansionPanelSummary
                expandIcon={<ExpandMoreIcon />}
                aria-controls="panel1bh-content"
                id="panel1bh-header"
              >
                <Grid container spacing={3}>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h4
                        style={{ fontWeight: "900", fontFamily: "Righteous" }}
                      >
                        {quest.question_caption}
                      </h4>
                    </Typography>
                  </Grid>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h5 style={{ fontWeight: "900", color: "red" }}>
                        Marks: {quest.marks} Score: {quest.Score}
                      </h5>
                    </Typography>
                  </Grid>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h5 style={{ fontWeight: "900", color: "blue" }}>
                        CS Skills: {quest.question_cs_skills}
                      </h5>
                    </Typography>
                  </Grid>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h5 style={{ fontWeight: "900", color: "blue" }}>
                        Domain: {quest.question_domain}
                      </h5>
                    </Typography>
                  </Grid>
                </Grid>
              </ExpansionPanelSummary>
              <ExpansionPanelDetails>
                <Paper
                  elevation={0}
                  style={{ padding: "1%", width: "-webkit-fill-available" }}
                >
                  <div>
                    <h5>
                      <b>
                        <div
                          dangerouslySetInnerHTML={{
                            __html: quest.question_background,
                          }}
                        />
                      </b>
                    </h5>
                    <br></br>
                    <div
                      className={
                        quest.selectedoption === quest.correctoption
                          ? "correctanswertext"
                          : "wronganswertext"
                      }
                    >
                      <b>
                        Selected option:
                        <input
                          type="text"
                          disabled="disabled"
                          value={quest.selectedoption}
                        />
                      </b>
                    </div>
                  </div>
                  <Grid container spacing={2}>
                    <br></br>
                    <h5
                      style={{
                        color: "darkblue",
                        margin: "1%",
                        padding: "1%",
                        width: "-webkit-fill-available",
                      }}
                    >
                      <b>Explanation:</b> <div
                          dangerouslySetInnerHTML={{
                            __html: quest.question_explanation,
                          }}
                        />
                    </h5>
                    <div
                      style={{
                        background: "#3D1172",
                        color: "white",
                        margin: "1%",
                        padding: "1%",
                        width: "-webkit-fill-available",
                      }}
                    >
                      <b>Correct option: {quest.correctoption}</b>
                    </div>
                  </Grid>
                </Paper>
              </ExpansionPanelDetails>
            </ExpansionPanel>
          </Grid>
        </Grid>
      );
    } else {
      return (
        <Grid container spacing={4} style={{ paddingTop: "4%" }} key={item}>
          <Grid item xs>
            <ExpansionPanel
              expanded={expanded === cardRef.current[item]}
              onChange={handleChange(cardRef.current[item])}
            >
              <ExpansionPanelSummary
                expandIcon={<ExpandMoreIcon />}
                aria-controls="panel1bh-content"
                id="panel1bh-header"
              >
                <Grid container spacing={3}>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h4
                        style={{ fontWeight: "900", fontFamily: "Righteous" }}
                      >
                        {quest.question_caption}
                      </h4>
                    </Typography>
                  </Grid>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h5 style={{ fontWeight: "900", color: "red" }}>
                        Marks: {quest.marks} Score: {quest.Score}
                      </h5>
                    </Typography>
                  </Grid>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h5 style={{ fontWeight: "900", color: "blue" }}>
                        CS Skills: {quest.question_cs_skills}
                      </h5>
                    </Typography>
                  </Grid>
                  <Grid item xs>
                    <Typography component={"div"} className={classes.heading}>
                      <h5 style={{ fontWeight: "900", color: "blue" }}>
                        Domain: {quest.question_domain}
                      </h5>
                    </Typography>
                  </Grid>
                </Grid>
              </ExpansionPanelSummary>
              <ExpansionPanelDetails>
                <Paper
                  elevation={0}
                  style={{ padding: "1%", width: "-webkit-fill-available" }}
                >
                  <div>
                    <h5>
                      <b>
                        <div
                          dangerouslySetInnerHTML={{
                            __html: quest.question_background,
                          }}
                        />
                      </b>
                    </h5>
                  </div>
                  <Grid container spacing={2}>
                    {quest.options.map((item1, index) => {
                      return (
                        <Grid item xs key={index}>
                          {quest.options[index] === quest.selectedoption ? (
                            <div>
                              <div className="studentresult">
                                <div>
                                  <ul>
                                    <li>
                                      <input
                                        type="radio"
                                        id={opt[index]}
                                        name={quest.question_caption}
                                        value={"" + item + index}
                                        checked
                                        disabled
                                      />
                                      <label
                                        htmlFor={opt[index]}
                                        className="element-animation"
                                      >
                                        <figcaption
                                          className={
                                            quest.selectedoption ===
                                            quest.correctoption
                                              ? "selectedoption"
                                              : "wrngoption"
                                          }
                                        >
                                          {quest.options[index]}
                                        </figcaption>
                                      </label>
                                      <div className="check"></div>
                                    </li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          ) : (
                            <div className="studentresult">
                              <ul>
                                <li>
                                  <input
                                    type="radio"
                                    id={opt[index]}
                                    name={quest.question_caption}
                                    value={"" + item + index}
                                    disabled
                                  />
                                  <label
                                    htmlFor={opt[index]}
                                    className="element-animation"
                                  >
                                    <figcaption>
                                      {quest.options[index]}
                                    </figcaption>
                                  </label>
                                  <div className="check"></div>
                                </li>
                              </ul>
                            </div>
                          )}
                        </Grid>
                      );
                    })}

                    <Grid container spacing={2}>
                      <br></br>
                      <h5
                        style={{
                          color: "darkblue",
                          margin: "1%",
                          padding: "1%",
                          width: "-webkit-fill-available",
                        }}
                      >
                        <b>Explanation:</b> <div
                          dangerouslySetInnerHTML={{
                            __html: quest.question_explanation,
                          }}
                        />
                      </h5>
                      <div
                        style={{
                          background: "#3D1172",
                          color: "white",
                          margin: "1%",
                          padding: "1%",
                          width: "-webkit-fill-available",
                        }}
                      >
                        <b>Correct option: {quest.correctoption}</b>
                      </div>
                    </Grid>
                  </Grid>
                </Paper>
              </ExpansionPanelDetails>
            </ExpansionPanel>
          </Grid>
        </Grid>
      );
    }
  };

  return (
    data != null && (
      <div
        className="element"
        style={{ backgroundColor: "white", padding: "4% 2%" }}
      >
        <link
          href="https://fonts.googleapis.com/css?family=Righteous&display=swap"
          rel="stylesheet"
        ></link>
        <Divider dark="true"></Divider>
        <center>
          <h3
            style={{
              fontWeight: "900",
              fontFamily: "Righteous",
              color: "black",
            }}
          >
            {JSON.parse(sessionStorage.getItem("competition"))}
          </h3>
        </center>
        <span>
          <h4
            style={{
              fontWeight: "900",
              fontFamily: "Righteous",
              float: "left",
              color: "blue",
            }}
          >
            Name: {data.studentName}
          </h4>
          <h4
            style={{
              fontWeight: "900",
              fontFamily: "Righteous",
              float: "right",
              color: "red",
            }}
          >
            Total Score: {data.TotalScore}/{data.totalMarks}
          </h4>
        </span>
        <Divider dark="true"></Divider>
        {createarray()}
        {Object.keys(data.questions).map((item) => {
          const quest = data.questions[item];
          return conditionRender(quest, item);
        })}
        <br />
        <br />
        <center>
          <Button
            onClick={() => {
              userService.downloadCertificatebyStudents(
                JSON.parse(sessionStorage.getItem("competition"))
              );
            }}
            variant="contained"
            color="primary"
            size="large"
          >
            Download Certificate
          </Button>
        </center>
      </div>
    )
  );
}