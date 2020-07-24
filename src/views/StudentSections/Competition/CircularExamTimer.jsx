import React from "react";
import { CountdownCircleTimer } from "react-countdown-circle-timer";
import Timerendalert from "./ExamTimeOut";
import "../PracticeChallenge/Page.css";
import "../PracticeChallenge/pch.css";
export var timeRemaining = 0;
const renderTime = (value) => {
  if (value === 0) {
    timeRemaining = value;
    return (
      <div className="timer">
        Oops! Time's up!
        <div>
          <Timerendalert />
        </div>
      </div>
    );
  }
  var min = Math.floor(value / 60);
  var sec = Math.floor(value % 60);
  timeRemaining = value;
  return (
    <div className="timer">
      <div className="text" style={{ fontSize: "45px", fontWeight: "700" }}>
        {min}:{sec}
      </div>
    </div>
  );
};

export default function CircleTimer(props) {
  return (
    <CountdownCircleTimer
      isPlaying
      durationSeconds={props.timer}
      colors={[["#004777", 0.33], ["#F7B801", 0.33], ["#ff9800"]]}
      renderTime={renderTime}
      onComplete={() => [false, 1000]}
    />
  );
}
