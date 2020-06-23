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
import Grid from "@material-ui/core/Grid";
import { withStyles } from "@material-ui/core/styles";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import "./pch.css";
import "./Page.css";
const useStyles = makeStyles(styles);
const StyledGrid = withStyles({
  root: {
    background: "linear-gradient(45deg, #FE6B8B 30%, #BAAAFF 90%)",
  },
 
})(ListItem);
const StyledGrid1 = withStyles({
  root: {
    background: "linear-gradient(45deg, #CDFFFE  30%, #B9C0FF  90%)",
  },
  // label: {
  //   textTransform: 'capitalize',
  // },
})(ListItem);

export default function TestEndPractice(props) {
  var status = JSON.parse(sessionStorage.getItem("status"));
  const classes = useStyles();
  var solved = 0;
  var correct = 0;
  var incorrect = 0;
  var marks = 0;
  status.status.solved.map((value, index) => {
    if (value.name) {
      solved = solved + 1;
      var correctelement = status.status.correct.find((obj) => {
        return obj.id === value.id;
      });
      if (correctelement.name) {
        var result = status.status.marks.find((obj) => {
          return obj.id === correctelement.id;
        });
        marks = marks + result.name;
        correct = correct + 1;
      } else {
        result = status.status.Incorrectmarks.find((obj) => {
          return obj.id === correctelement.id;
        });
        marks = marks + result.name;
      }
    }
    return true;
  });
  incorrect = solved - correct;
  return (
    <div>
      <div className="testendcontainer" style={{ align: "center" }}>
        <Card className={classes.root}>
          <CardContent>
            <Typography align="center" component="h3" variant="h3">
              <span style={{ fontFamily: "cursive" }}>Test Summary</span>
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
                      {status.status.total}
                    </h4>
                  </Grid>
                </Grid>
              </StyledGrid1>
              <Divider light />
              <StyledGrid1>
                <Grid container spacing={3}>
                  <Grid item xs={12} sm={8}>
                    <h4 style={{ fontWeight: "bolder" }}>
                      Total attempted questions
                    </h4>
                  </Grid>
                  <Grid item xs={12} sm={4}>
                    <h4 style={{ fontWeight: "bolder" }}>{solved}</h4>
                  </Grid>
                </Grid>
              </StyledGrid1>
              <Divider light />
              <StyledGrid1>
                <Grid container spacing={3}>
                  <Grid item xs={12} sm={8}>
                    <h4 style={{ fontWeight: "bolder" }}>
                      Total correctly answered
                    </h4>
                  </Grid>
                  <Grid item xs={12} sm={4}>
                    <h4 style={{ fontWeight: "bolder" }}>{correct}</h4>
                  </Grid>
                </Grid>
              </StyledGrid1>
              <Divider light />
              <StyledGrid1>
                <Grid container spacing={3}>
                  <Grid item xs={12} sm={8}>
                    <h4 style={{ fontWeight: "bolder" }}>
                      Total incorrectly answered
                    </h4>
                  </Grid>
                  <Grid item xs={12} sm={4}>
                    <h4 style={{ fontWeight: "bolder" }}>{incorrect}</h4>
                  </Grid>
                </Grid>
              </StyledGrid1>
              <Divider light />
              <StyledGrid>
                <Grid container spacing={3}>
                  <Grid item xs={12} sm={8}>
                    <h4 style={{ fontWeight: "bolder" }}>Total score</h4>
                  </Grid>
                  <Grid item xs={12} sm={4}>
                    <h4 style={{ fontWeight: "bolder" }}>{marks}</h4>
                  </Grid>
                </Grid>
              </StyledGrid>
              <Divider light />
            </List>
          </CardContent>
          <CardActions>
            <Button
              onClick={() => {
                sessionStorage.removeItem("status");
              }}
              href="/studenthome/thankyou"
              variant="outlined"
              color="secondary"
              size="large"
              fullWidth
            >
              Exit
            </Button>
          </CardActions>
        </Card>
      </div>
    </div>
  );
}
