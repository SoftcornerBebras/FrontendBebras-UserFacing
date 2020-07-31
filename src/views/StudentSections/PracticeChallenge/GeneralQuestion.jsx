import React from "react";
import { rollIn, slideInLeft, zoomIn } from "react-animations";
import Radium, { StyleRoot } from "radium";
import Snackbar from "@material-ui/core/Snackbar";
import MuiAlert from "@material-ui/lab/Alert";
import { TextField } from "@material-ui/core";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Grid from "@material-ui/core/Grid";
import { baseurl } from "services/constant";
import "./pch.css";
import "./Page.css";
const urll = baseurl;
const styles = {
  rollIn: {
    animation: "x 1s",
    animationName: Radium.keyframes(rollIn, "rollIn"),
  },
  slideInLeft: {
    animation: "x 2s",
    animationName: Radium.keyframes(slideInLeft, "slideInLeft"),
  },
  zoomIn: {
    animation: "x 2s",
    animationName: Radium.keyframes(zoomIn, "zoomIn"),
  },
};
function Alert(props) {
  return <MuiAlert elevation={6} variant="filled" {...props} />;
}
class GeneralQuestion extends React.Component {
  state = {
    open: false,
    open1: false,
  };
  constructor(props) {
    super(props);
    this.state = {
      data1: {},
      status: this.props.status,
      questionrender: this.props.state.questionsren[0],
    };
    this.conditionRender = this.conditionRender.bind(this);
    this.handleClose = this.handleClose.bind(this);
    this.handleClick = this.handleClick.bind(this);
    this.handleClose1 = this.handleClose1.bind(this);
    this.handleClick1 = this.handleClick1.bind(this);
    this.sleep = this.sleep.bind(this);
  }
  conditionRender() {
    const questiontemp = this.state.questionrender;
    const opt = ["f-option", "s-option", "t-option", "r-option"];
    if (this.props.state.questionsren[0].hasOwnProperty("images_of_option")) {
      var i = -1;
      return (
        <div>
          <StyleRoot>
            <div style={styles.fadeIn}>
              <Grid container spacing={2}>
                <Grid item xs={7}>
                  <div
                    className="competitionSkillpractice"
                    style={{ marginBottom: "5%" }}
                  >
                    <br></br>
                    <br></br>
                    <b>
                      <p style={{ fontStyle: "" }}>
                        CS Skill: {questiontemp.question_cs_skills}{" "}
                      </p>
                    </b>
                    <b>
                      <p>Domain: {questiontemp.question_domain}</p>
                    </b>
                    <b>
                      <p>Score: {questiontemp.Correct_marks}</p>
                    </b>
                  </div>
                </Grid>
                <Grid item>
                  <div className="competitionNumber">
                    <br></br>
                    <h1 style={{ marginLeft: "90%" }}>
                      {this.props.state.questionsren[1] + 1}
                    </h1>
                  </div>
                </Grid>
              </Grid>
            </div>
          </StyleRoot>
          <div className="pch" style={{ width: "100%" }}>
            <div
              style={{
                backgroundColor: "rgb(0,143,179)",
                letterSpacing: "5em",
                padding: "0.5% 1%",
                color: "white",
                fontSize: "1%",
              }}
            >
              <h4
                style={{
                  fontWeight: "bolder",
                  fontFamily: "cursive",
                  marginTop: "0px",
                  marginBottom: "0px",
                }}
              >
                {" "}
                {questiontemp.question_caption}
              </h4>
            </div>
            <StyleRoot>
              {" "}
              <div className="practicequestion" style={styles.zoomIn}>
                <h4
                  style={{
                    fontWeight: "bolder",
                    fontFamily: "cursive",
                    marginTop: "0px",
                  }}
                >
                  <div
                    style={{ display: "flex", flexWrap: "wrap" }}
                    dangerouslySetInnerHTML={{
                      __html: questiontemp.question_background,
                    }}
                  />
                </h4>
              </div>
            </StyleRoot>
            <StyleRoot>
              {" "}
              <div style={styles.slideInLeft}>
                <div>
                  <GridContainer justify="center">
                    {questiontemp.images_of_option.map((item, index) => {
                      i = i + 1;
                      var urlimg = urll + `${item}`;
                      return (
                        <GridItem key={item} xs={12} sm={12} md={6}>
                          <ul>
                            <li>
                              <input
                                type="radio"
                                id={opt[i]}
                                name="selector"
                                onClick={() => {
                                  if (
                                    this.props.state.questionsren[0]
                                      .correctoption ===
                                    questiontemp.options[index]
                                  ) {
                                    var result = this.state.status.solved.find(
                                      (obj) => {
                                        return (
                                          obj.id ===
                                          this.props.state.questionsren[0]
                                            .identifier
                                        );
                                      }
                                    );
                                    result.name = true;
                                    result = this.state.status.correct.find(
                                      (obj) => {
                                        return (
                                          obj.id ===
                                          this.props.state.questionsren[0]
                                            .identifier
                                        );
                                      }
                                    );
                                    result.name = true;
                                    this.props.onChangeStat(this.state.status);
                                    this.handleClick();
                                  } else {
                                    result = this.state.status.solved.find(
                                      (obj) => {
                                        return (
                                          obj.id ===
                                          this.props.state.questionsren[0]
                                            .identifier
                                        );
                                      }
                                    );
                                    result.name = true;
                                    result = this.state.status.correct.find(
                                      (obj) => {
                                        return (
                                          obj.id ===
                                          this.props.state.questionsren[0]
                                            .identifier
                                        );
                                      }
                                    );
                                    result.name = false;
                                    this.props.onChangeStat(this.state.status);
                                    this.handleClick1();
                                  }
                                }}
                              />
                              <label
                                htmlFor={opt[i]}
                                className="element-animation"
                              >
                                <img
                                  alt="oops"
                                  src={urlimg}
                                  style={{ maxWidth: "100%" }}
                                ></img>
                                <figcaption>
                                  {questiontemp.options[i]}
                                </figcaption>
                              </label>
                              <div className="check"></div>
                            </li>
                          </ul>
                        </GridItem>
                      );
                    })}
                  </GridContainer>
                </div>
              </div>
            </StyleRoot>
          </div>
        </div>
      );
    } else if (
      !this.props.state.questionsren[0].hasOwnProperty("images_of_option") &&
      !this.props.state.questionsren[0].hasOwnProperty("options")
    ) {
      return (
        <div>
          <StyleRoot>
            <div style={styles.fadeIn}>
              <Grid container spacing={2}>
                <Grid item xs={7}>
                  <div
                    className="competitionSkillpractice"
                    style={{ marginBottom: "5%" }}
                  >
                    <br></br>
                    <br></br>
                    <b>
                      <p style={{ fontStyle: "" }}>
                        CS Skill: {questiontemp.question_cs_skills}{" "}
                      </p>
                    </b>
                    <b>
                      <p>Domain: {questiontemp.question_domain}</p>
                    </b>
                    <b>
                      <p>Score: {questiontemp.Correct_marks}</p>
                    </b>
                  </div>
                </Grid>
                <Grid item>
                  <div className="competitionNumber">
                    <br></br>
                    <h1 style={{ marginLeft: "90%" }}>
                      {this.props.state.questionsren[1] + 1}
                    </h1>
                  </div>
                </Grid>
              </Grid>
            </div>
          </StyleRoot>
          <div className="pch" style={{ width: "100%" }}>
            <div
              style={{
                backgroundColor: "rgb(0,143,179)",
                letterSpacing: "5em",
                padding: "0.5% 1%",
                color: "white",
                fontSize: "1%",
              }}
            >
              <h4
                style={{
                  fontWeight: "bolder",
                  fontFamily: "cursive",
                  marginTop: "0px",
                  marginBottom: "0px",
                }}
              >
                {" "}
                {questiontemp.question_caption}
              </h4>
            </div>
            <StyleRoot>
              {" "}
              <div className="practicequestion" style={styles.zoomIn}>
                <h4
                  style={{
                    fontWeight: "bolder",
                    fontFamily: "cursive",
                    marginTop: "0px",
                  }}
                >
                  <div
                    style={{ display: "flex", flexWrap: "wrap" }}
                    dangerouslySetInnerHTML={{
                      __html: questiontemp.question_background,
                    }}
                  />
                </h4>
              </div>
            </StyleRoot>
            <StyleRoot>
              {" "}
              <div style={styles.slideInLeft}>
                <div style={{ width: "100%" }}>
                  <GridContainer>
                    <GridItem
                      xs={12}
                      sm={12}
                      md={4}
                      style={{ textAlign: "right" }}
                    >
                      <br />
                      <br />
                      <br />
                      {/* <br />
                      <br />
                      <br /> */}
                      <h4
                        style={{
                          fontWeight: "bolder",
                          fontFamily: "cursive",
                          marginTop: "0px",
                          fontSize: "150%",
                        }}
                      >
                        Type your Answer here:
                      </h4>
                    </GridItem>
                    <GridItem xs={12} sm={12} md={4}>
                      <br />
                      <br />
                      <TextField
                        placeholder="Type your answer here"
                        type={this.props.state.questionsren[0].answertext_type}
                        name="answer"
                        variant="filled"
                        margin="normal"
                        onChange={(e) => {
                          if (
                            e.target.value ===
                            this.props.state.questionsren[0].correctoption
                          ) {
                            var result = this.state.status.solved.find(
                              (obj) => {
                                return (
                                  obj.id ===
                                  this.props.state.questionsren[0].identifier
                                );
                              }
                            );
                            result.name = true;
                            result = this.state.status.correct.find((obj) => {
                              return (
                                obj.id ===
                                this.props.state.questionsren[0].identifier
                              );
                            });
                            result.name = true;
                            this.props.onChangeStat(this.state.status);
                            this.handleClick();
                          } else {
                            result = this.state.status.solved.find((obj) => {
                              return (
                                obj.id ===
                                this.props.state.questionsren[0].identifier
                              );
                            });
                            result.name = true;
                            result = this.state.status.correct.find((obj) => {
                              return (
                                obj.id ===
                                this.props.state.questionsren[0].identifier
                              );
                            });
                            result.name = false;
                            this.props.onChangeStat(this.state.status);
                            this.handleClick1();
                          }
                        }}
                        inputlabelprops={{
                          shrink: true,
                        }}
                        fullWidth
                      />
                    </GridItem>
                  </GridContainer>
                </div>
              </div>
            </StyleRoot>
          </div>
        </div>
      );
    } else {
      i = -1;
      return (
        <div>
          <StyleRoot>
            <div style={styles.fadeIn}>
              <Grid container spacing={2}>
                <Grid item xs={7}>
                  <div
                    className="competitionSkillpractice"
                    style={{ marginBottom: "5%" }}
                  >
                    <br></br>
                    <br></br>
                    <b>
                      <p style={{ fontStyle: "" }}>
                        CS Skill: {questiontemp.question_cs_skills}{" "}
                      </p>
                    </b>
                    <b>
                      <p>Domain: {questiontemp.question_domain}</p>
                    </b>
                    <b>
                      <p>Score: {questiontemp.Correct_marks}</p>
                    </b>
                  </div>
                </Grid>
                <Grid item>
                  <div className="competitionNumber">
                    <br></br>
                    <h1 style={{ marginLeft: "90%" }}>
                      {this.props.state.questionsren[1] + 1}
                    </h1>
                  </div>
                </Grid>
              </Grid>
            </div>
          </StyleRoot>
          <div className="pch">
            <div
              style={{
                backgroundColor: "rgb(0,143,179)",
                letterSpacing: "5em",
                padding: "0.5% 1%",
                color: "white",
                fontSize: "1%",
              }}
            >
              <h4
                style={{
                  fontWeight: "bolder",
                  fontFamily: "cursive",
                  marginTop: "0px",
                  marginBottom: "0px",
                }}
              >
                {questiontemp.question_caption}
              </h4>
            </div>
            <div className="practicequestion" style={styles.zoomIn}>
              <h4
                style={{
                  fontWeight: "bolder",
                  fontFamily: "cursive",
                  marginTop: "0px",
                }}
              >
                <div
                  id="question"
                  dangerouslySetInnerHTML={{
                    __html: questiontemp.question_background,
                  }}
                />
              </h4>
            </div>
            <StyleRoot>
              {" "}
              <div style={styles.slideInLeft}>
                <div style={{ width: "100%" }}>
                  <GridContainer justify="center">
                    {questiontemp.options.map((item) => {
                      i = i + 1;
                      return (
                        <GridItem xs={12} sm={12} md={3} key={item}>
                          <ul>
                            <li>
                              <input
                                type="radio"
                                id={opt[i]}
                                name="selector"
                                onClick={() => {
                                  if (
                                    item ===
                                    this.props.state.questionsren[0]
                                      .correctoption
                                  ) {
                                    var result = this.state.status.solved.find(
                                      (obj) => {
                                        return (
                                          obj.id ===
                                          this.props.state.questionsren[0]
                                            .identifier
                                        );
                                      }
                                    );
                                    result.name = true;
                                    result = this.state.status.correct.find(
                                      (obj) => {
                                        return (
                                          obj.id ===
                                          this.props.state.questionsren[0]
                                            .identifier
                                        );
                                      }
                                    );
                                    result.name = true;
                                    this.props.onChangeStat(this.state.status);
                                    this.handleClick();
                                  } else {
                                    result = this.state.status.solved.find(
                                      (obj) => {
                                        return (
                                          obj.id ===
                                          this.props.state.questionsren[0]
                                            .identifier
                                        );
                                      }
                                    );
                                    result.name = true;
                                    result = this.state.status.correct.find(
                                      (obj) => {
                                        return (
                                          obj.id ===
                                          this.props.state.questionsren[0]
                                            .identifier
                                        );
                                      }
                                    );
                                    result.name = false;
                                    this.props.onChangeStat(this.state.status);
                                    this.handleClick1();
                                  }
                                }}
                              />
                              <label
                                htmlFor={opt[i]}
                                className="element-animation"
                              >
                                {item}
                              </label>
                              <div className="check"></div>
                            </li>
                          </ul>
                        </GridItem>
                      );
                    })}
                  </GridContainer>
                </div>
              </div>
            </StyleRoot>
          </div>
        </div>
      );
    }
  }
  sleep(ms) {
    return new Promise((resolve) => setTimeout(resolve, ms));
  }
  handleClick = () => {
    this.setState({ open: true });
    this.sleep(2000);
    this.setState({ open1: false });
  };
  handleClose = (event, reason) => {
    if (reason === "clickaway") {
      return;
    }
    this.setState({ open: false });
  };
  handleClick1 = () => {
    this.setState({ open1: true });
    this.sleep(2000);
    this.setState({ open: false });
  };
  handleClose1 = (event, reason) => {
    if (reason === "clickaway") {
      return;
    }
    this.setState({ open1: false });
  };

  render() {
    return (
      <div>
        {this.conditionRender()}
        <Snackbar autoHideDuration={3000} open={this.state.open}>
          <div>
            <Alert onClose={this.handleClose} severity="success">
              Amazing! You got the question right!
            </Alert>
          </div>
        </Snackbar>
        <Snackbar autoHideDuration={3000} open={this.state.open1}>
          <div>
            <Alert onClose={this.handleClose1} severity="error">
              Oops! Better luck next time!
            </Alert>
          </div>
        </Snackbar>
      </div>
    );
  }
}

export default GeneralQuestion;
