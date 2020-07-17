import React from "react";
import { rollIn, slideInLeft, zoomIn } from "react-animations";
import Radium, { StyleRoot } from "radium";
import { TextField } from "@material-ui/core";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import {baseurl} from 'services/constant'
import "../PracticeChallenge/Page.css";
import "../PracticeChallenge/pch.css";
import { userService } from "services/user.service";
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
class GeneralQuestion extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      data1: {},
      selectedOption:""
    };
    this.conditionRender = this.conditionRender.bind(this);
    this.state.data1 = {
      identifier: this.props.data.questionsren.identifier,
      option: "",
      studentEnrollmentID: this.props.data.studentEnrollmentId,
    };
    sessionStorage.setItem(
      "datastudentresponse",
      JSON.stringify(this.state.data1)
    );
  }
  conditionRender() {
    const questiontemp = this.props.data.questionsren;
    const opt = ["f-option", "s-option", "t-option", "r-option"];
    if (this.props.data.questionsren.hasOwnProperty("images_of_option")) {
      var i = -1;
      return (
        <div className="pch" style={{ width: "100%" }}>
          <div
            style={{
              backgroundColor: "rgb(0,143,179)",
              margin: "0px 50px",
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
              Question title: {questiontemp.question_caption}
            </h4>
          </div>
          <StyleRoot>
            {" "}
            <div className="question" style={styles.zoomIn}>
              <h4
                style={{
                  fontWeight: "bolder",
                  fontFamily: "cursive",
                  marginTop: "0px",
                }}
              >
                {/* <span class="label label-warning" id="qid">1</span> */}
                <div
                  id="question"
                  dangerouslySetInnerHTML={{
                    __html: questiontemp.question_background,
                  }}
                  style={{
                  fontWeight: "bolder",
                  fontFamily: "cursive",
                  marginTop: "0px",
                }}
                />
                {/* {questiontemp.question_background.includes("div") ? <div id="addHere" style={{marginLeft:'1%'}}>{}</div>
            : <Typography style={{marginLeft:'1%'}}>{questiontemp.question_background}</Typography> } */}
              </h4>
            </div>
          </StyleRoot>
          <StyleRoot>
            {" "}
            <div style={styles.slideInLeft}>
              <div >
                <GridContainer justify="center">
                  {questiontemp.images_of_option.map((item, index) => {
                   
                    i = i + 1;
                    var urlimg = urll + `${item}`;
                    return (
                      <GridItem key={index} xs={12} sm={12} md={6}>
                        <ul>
                          <li
                          
                            onClick={() => {
                              var data1 = {
                                identifier: this.props.data.questionsren
                                  .identifier,
                                option: (questiontemp.options[index])['optionTranslationID'],
                                studentEnrollmentID: this.props.data
                                  .studentEnrollmentId,
                              };
                              this.setState({ data1: data1 });
                              sessionStorage.setItem(
                                "datastudentresponse",
                                JSON.stringify(data1)
                              );
                            }}
                          >
                            <input type="radio" id={opt[i]} name="selector" />
                            <label
                              htmlFor={opt[i]}
                              className="element-animation"
                              
                            >
                              <img alt="oops" src={urlimg} style={{maxWidth:"100%"}}></img>
                              <figcaption >{(questiontemp.options[i])['option']}</figcaption>
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
      );
    } else if (
      !this.props.data.questionsren.hasOwnProperty("images_of_option") &&
      !this.props.data.questionsren.hasOwnProperty("options")
    ) {
      return (
        <div className="pch">
          <div
            style={{
              backgroundColor: "rgb(0,143,179)",
              margin: "0px 50px",
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
              Question title: {questiontemp.question_caption}
            </h4>
          </div>
          <div className="question" style={styles.zoomIn}>
            <h4
              style={{
                fontWeight: "bolder",
                fontFamily: "cursive",
                marginTop: "0px",
              }}
            >
              {/* <span class="label label-warning" id="qid">1</span> */}
              <div
                id="question"
                dangerouslySetInnerHTML={{
                  __html: questiontemp.question_background,
                }}
                style={{
                  fontWeight: "bolder",
                  fontFamily: "cursive",
                  marginTop: "0px",
                }}
              />
              {/* {questiontemp.question_background.includes("div") ? <div id="addHere" style={{marginLeft:'1%'}}>{}</div>
            : <Typography style={{marginLeft:'1%'}}>{questiontemp.question_background}</Typography> } */}
            </h4>
          </div>
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
                    <br />
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
                    <br />
                    <TextField
                      placeholder="Type your answer here"
                      name="answer"
                      variant="filled"
                      margin="normal"
                      onChange={(e) => {
                        console.log(e.target.value);
                        var data1 = {
                          identifier: this.props.data.questionsren.identifier,
                          option: e.target.value,
                          studentEnrollmentID: this.props.data
                            .studentEnrollmentId,
                        };
                        this.setState({ data1: data1 });
                        sessionStorage.setItem(
                          "datastudentresponse",
                          JSON.stringify(data1)
                        );
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
      );
    } else {
      i = -1;
      return (
        <div className="pch">
          <div
            style={{
              backgroundColor: "rgb(0,143,179)",
              margin: "0px 50px",
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
              Question title: {questiontemp.question_caption}
            </h4>
          </div>
          <div className="question" style={styles.zoomIn} >
            <h4
              style={{
                fontWeight: "bolder",
                fontFamily: "cursive",
                marginTop: "0px",
              }}
            >
              {/* <span class="label label-warning" id="qid">1</span> */}
              <div
                id="question"
                dangerouslySetInnerHTML={{
                  __html: questiontemp.question_background,
                }}
                style={{
                  fontWeight: "bolder",
                  fontFamily: "cursive",
                  marginTop: "0px",
                  fontSize:"150%",
                }}
              />
              {/* {questiontemp.question_background.includes("div") ? <div id="addHere" style={{marginLeft:'1%'}}>{}</div>
            : <Typography style={{marginLeft:'1%',fontWeight:"bolder",fontFamily:"cursive",marginTop:"0px"}}>{questiontemp.question_background}</Typography> } */}
            </h4>
          </div>
          <StyleRoot>
            {" "}
            <div style={styles.slideInLeft}>
              <div style={{ width: "100%" }}>
                <GridContainer justify="center">
                  {questiontemp.options.map((item,index) => {
                    i = i + 1;
                    return (
                      <GridItem key={index} xs={12} sm={12} md={3}>
                        <ul>
                          <li
                            onClick={() => {
                              var data1 = {
                                identifier: this.props.data.questionsren
                                  .identifier,
                                option: item['optionTranslationID'],
                                studentEnrollmentID: this.props.data
                                  .studentEnrollmentId,
                              };
                              this.setState({ data1: data1 });
                              sessionStorage.setItem(
                                "datastudentresponse",
                                JSON.stringify(data1)
                              );
                            }}
                          >
                            <input type="radio" id={opt[i]} name="selector" />
                            <label
                              htmlFor={opt[i]}
                              className="element-animation"
                            >
                              {item['option']}
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
      );
    }
  }
  render() {
    return <div>{this.conditionRender()}</div>;
  }
  componentDidMount()
  {
    var data={ identifier: this.props.data.questionsren.identifier,
      option: "",
      studentEnrollmentID: this.props.data.studentEnrollmentId,}
    userService.getSavedStudentResponse(data).then(
      (studentresponse) => {
        //write logic to move to next question
       console.log(studentresponse.Option)
       this.setState({selectedOption:studentresponse.Option})
      },
      (error) => {
        console.log(error);
      }
    );
  }
}

export default GeneralQuestion;
