import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import Card from "@material-ui/core/Card";
import CardActions from "@material-ui/core/CardActions";
import CardContent from "@material-ui/core/CardContent";
import Button from "@material-ui/core/Button";
import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";
import Divider from "@material-ui/core/Divider";
import Typography from "@material-ui/core/Typography";
import { userService } from "services/user.service.jsx";
import Grid from "@material-ui/core/Grid";
import { withStyles } from "@material-ui/core/styles";
import Dialog from "@material-ui/core/Dialog";
import DialogActions from "@material-ui/core/DialogActions";
import DialogContent from "@material-ui/core/DialogContent";
import DialogContentText from "@material-ui/core/DialogContentText";
import DialogTitle from "@material-ui/core/DialogTitle";
import "../PracticeChallenge/Page.css";
import "../PracticeChallenge/pch.css";
import { useHistory } from "react-router-dom";

const useStyles = makeStyles({
  table: {},
});

const StyledGrid = withStyles({
  root: {
    background: "linear-gradient(45deg, #FE6B8B 30%, #BAAAFF 90%)",
  },
  label: {
    textTransform: "capitalize",
  },
})(ListItem);
const StyledGrid1 = withStyles({
  root: {
    background: "linear-gradient(45deg, #CDFFFE  30%, #B9C0FF  90%)",
  },
  label: {
    textTransform: "capitalize",
  },
})(ListItem);

export default function TestEnd(props) {
  const classes = useStyles();
  const history = useHistory();
  const [open, setOpen] = React.useState(false);
  const handleClose = () => {
    setOpen(false);
  };
  const handleOpen = () => {
    setOpen(true);
  };
  const handleCloseEndTest = () => {
    setOpen(false);
    userService.askcalcTotalScore(studentEnrollmentID).then(
      (user) => {
        history.push({
          pathname: "/studenthome/thankyou",
        });
      },
      (error) => {
        alert(`${error.response.data}  `);
      }
    );
  };
  var value = props.location.state.timeRemaining;
  var min = Math.floor(value / 60);
  var sec = Math.floor(value % 60);
  var studentEnrollmentID = props.location.state.studentEnrollmentID;
  return (
    <div className="testendcontainer" style={{ align: "center" }}>
      <Card className={classes.root}>
        <CardContent>
          <Typography align="center" component={"div"} variant="h3">
            <h2 style={{ fontFamily: "cursive" }}>Test Summary</h2>
          </Typography>
          <List component="nav" aria-label="mailbox folders">
            <Divider light />
            <StyledGrid1>
              <Grid container spacing={3}>
                <Grid item xs={12} sm={8}>
                  <h4 style={{ fontWeight: "bolder" }}>
                    Total number of questions
                  </h4>
                </Grid>
                <Grid item xs={12} sm={4}>
                  <h4 style={{ fontWeight: "bolder" }}>
                    {props.location.state.totalSteps}
                  </h4>
                </Grid>
              </Grid>
            </StyledGrid1>
            <Divider light />
            <StyledGrid1 button>
              <Grid container spacing={3}>
                <Grid item xs={12} sm={8}>
                  <h4 style={{ fontWeight: "bolder" }}>
                    Total attempted questions
                  </h4>
                </Grid>
                <Grid item xs={12} sm={4}>
                  <h4 style={{ fontWeight: "bolder" }}>
                    {props.location.state.completedSteps}
                  </h4>
                </Grid>
              </Grid>
            </StyledGrid1>
            <Divider light />

            <StyledGrid button>
              <Grid container spacing={3}>
                <Grid item xs={12} sm={8}>
                  <h4 style={{ fontWeight: "bolder" }}>Time Left </h4>
                </Grid>
                <Grid item xs={12} sm={4}>
                  <h4 style={{ fontWeight: "bolder" }}>
                    {" "}
                    {min} min : {sec} sec
                  </h4>
                </Grid>
              </Grid>
            </StyledGrid>
            <Divider light />
          </List>
        </CardContent>
        <CardActions>
          <Button
            onClick={() => {
              handleOpen();
            }}
            variant="outlined"
            color="secondary"
            size="large"
            style={{ width: "50%" }}
          >
            Exit
          </Button>
          {value !== 0 && (
            <Button
              onClick={() => {
                userService
                  .getCompetitionQues(
                    JSON.parse(sessionStorage.getItem("competitionName"))
                  )
                  .then(
                    (user) => {
                      let userd = user;
                      sessionStorage.setItem("data", JSON.stringify(userd));
                      history.push("/challenge");
                    },
                    (error) => {
                      console.log(error);
                    }
                  );
              }}
              variant="outlined"
              color="secondary"
              size="large"
              style={{ width: "50%" }}
            >
              Back
            </Button>
          )}
        </CardActions>
      </Card>
      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="alert-dialog-title"
        aria-describedby="alert-dialog-description"
      >
        <DialogTitle id="alert-dialog-title">{"End Test?"}</DialogTitle>
        <DialogContent>
          <DialogContentText id="alert-dialog-description">
            Do you really want to end the test?
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleClose} color="primary">
            NO
          </Button>
          <Button onClick={handleCloseEndTest} color="primary" autoFocus>
            YES
          </Button>
        </DialogActions>
      </Dialog>
    </div>
  );
}
