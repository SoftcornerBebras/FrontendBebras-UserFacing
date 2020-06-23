import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import Modal from "@material-ui/core/Modal";
import Backdrop from "@material-ui/core/Backdrop";
import Fade from "@material-ui/core/Fade";
import { CountdownCircleTimer } from "react-countdown-circle-timer";
import { userService } from "services/user.service";
import { useHistory } from "react-router-dom";
import "../PracticeChallenge/Page.css";
import "../PracticeChallenge/pch.css";
const useStyles = makeStyles((theme) => ({
  modal: {
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
  },
  paper: {
    backgroundColor: theme.palette.background.paper,
    border: "2px solid #000",
    boxShadow: theme.shadows[5],
    padding: theme.spacing(2, 4, 3),
  },
}));

export default function Timerendalert() {
  const classes = useStyles();
  const history = useHistory();
  const [open, setOpen] = React.useState(true);
  const renderTime = (value) => {
    if (value === 0) {
      var data = JSON.parse(sessionStorage.getItem("data"));
      userService.askcalcTotalScore(data.studentEnrollmentID).then(
        (user) => {
          history.push("/thankyou");
          console.log("yahooo", user);
        },
        (error) => {
          console.log(error.response.data);
          alert(`${error.response.data}  `);
        }
      );
    }
    return (
      <div className="timer">
        <div className="text">{value}</div>
      </div>
    );
  };

  const handleClose = () => {
    setOpen(false);
  };
  return (
    <div>
      <Modal
        aria-labelledby="transition-modal-title"
        aria-describedby="transition-modal-description"
        className={classes.modal}
        open={open}
        onClose={handleClose}
        closeAfterTransition
        BackdropComponent={Backdrop}
        BackdropProps={{
          timeout: 500,
        }}
      >
        <Fade in={open}>
          <div className={classes.paper}>
            <h2 id="transition-modal-title">Thank you so much!</h2>
            <center>
              <h3 id="transition-modal-description">All the best!</h3>
            </center>
            <div>
              <CountdownCircleTimer
                isPlaying
                durationSeconds={5}
                colors={[["#004777", 0.33], ["#F7B801", 0.33], ["#A30000"]]}
                renderTime={renderTime}
                size={50}
                strokeWidth={5}
                onComplete={() => [false, 1000]}
              />
            </div>
          </div>
        </Fade>
      </Modal>
    </div>
  );
}
