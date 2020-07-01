import React from "react";
import ReactDOM from "react-dom";
import { createBrowserHistory } from "history";
import { Router, Route, Switch } from "react-router-dom";
import TestEndPractice from 'views/StudentSections/PracticeChallenge/PracticeChallengeSummary'
import "assets/scss/material-kit-react.scss?v=1.8.0";
import "./index.css";
import StudentHeader from "views/StudentNavbar/StudentHeader.jsx";
import RegisterPage from "views/RegisterPage/RegisterPage.jsx";
import LoginPage from "views/LoginPage/LoginPage.jsx";
import ForgotPassword from "views/ForgotPassword/ForgotPassword.jsx";
import PracticeChallenge from "views/StudentSections/PracticeChallenge/AgeGroupSection";
import TeacherHeader from "views/TeacherNavBar/TeacherHeader.jsx";
import PcPage from "views/StudentSections/PracticeChallenge/Page.jsx";
import Challenge from "views/StudentSections/Competition/Challenge.jsx";
import TestEnd from 'views/StudentSections/Competition/ExamSummary'
import Error404 from 'views/Error404/Error404.jsx'

var hist = createBrowserHistory(); 

ReactDOM.render(
  <Router history={hist}>
    <Switch>
      <Route path="/forgot-password" component={ForgotPassword} />
      <Route path="/register-page" component={RegisterPage} />
      <Route path="/login-page" component={LoginPage} />
      <Route path="/pc" component={PracticeChallenge} />
      <Route path="/pcpage" component={PcPage} />
      <Route path="/challenge" component={Challenge} /> 
      <Route exact path="/testend" component={TestEnd} />             
      <Route path="/teachernew" component={TeacherHeader} />
      <Route exact path="/" component={StudentHeader} />
      <Route path="/studenthome" component={StudentHeader} />
      <Route exact path="/err404" component={Error404} />
      <Route exact path="/testendpractice" component={TestEndPractice} />
    </Switch>
  </Router>,
  document.getElementById("root")
);
