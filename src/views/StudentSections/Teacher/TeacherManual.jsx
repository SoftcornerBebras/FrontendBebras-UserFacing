import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import Button from "@material-ui/core/Button";
import { userManual } from "services/constant";
import { StudentManual } from "services/constant";
import PictureAsPdfIcon from "@material-ui/icons/PictureAsPdf";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
const useStyles = makeStyles((theme) => ({
  root: {
    "& > *": {
      margin: theme.spacing(1),
    },
  },
}));

export default function TeacherManual() {
  const classes = useStyles();

  return (
    <div className={classes.root}>
      <GridContainer justify="center">
        <GridItem xs={12} sm={12} md={6}>
          <Button
            variant="outlined"
            color="primary"
            size="large"
            href={StudentManual}
            target="_blank"
          >
            <PictureAsPdfIcon />
            View Student manual
          </Button>
        </GridItem>
        <GridItem xs={12} sm={12} md={6}>
          <Button
            variant="outlined"
            color="primary"
            size="large"
            href={userManual}
            target="_blank"
          >
            <PictureAsPdfIcon />
            View Teacher manual
          </Button>
        </GridItem>
        <GridItem xs={12} sm={12} md={1}>
          <br></br>
          <br></br>
          <br></br>
        </GridItem>
      </GridContainer>
    </div>
  );
}
