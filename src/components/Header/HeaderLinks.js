/*eslint-disable*/
import React from "react";
import DeleteIcon from "@material-ui/icons/Delete";
import IconButton from "@material-ui/core/IconButton";
// import Icon from '@material-ui/icons/Icon';
// import from '@material-ui/icons/HomeIcon';
// react components for routing our app without refresh
import { MemoryRouter as Router } from 'react-router';
import { Link } from 'react-router-dom';
import withStyles from "@material-ui/core/styles/withStyles";
import Slide from "@material-ui/core/Slide";
import Dialog from "@material-ui/core/Dialog";
import DialogTitle from "@material-ui/core/DialogTitle";
import DialogContent from "@material-ui/core/DialogContent";
import DialogActions from "@material-ui/core/DialogActions";
import LoginPage from "views/LoginPage/LoginPage.js"
// @material-ui/icons
import Close from "@material-ui/icons/Close";
// core components
import { makeStyles } from "@material-ui/core/styles";
import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";
import Tooltip from "@material-ui/core/Tooltip";
import Divider from '@material-ui/core/Divider';  

// @material-ui/icons
import { Apps, CloudDownload, Home } from "@material-ui/icons";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
// core components
import CustomDropdown from "components/CustomDropdown/CustomDropdown.js";
import Button from "components/CustomButtons/Button.js";

import styles from "assets/jss/material-kit-react/components/headerLinksStyle.js";
// const LinkBehavior = React.forwardRef((props, ref) => (
//   <RouterLink ref={ref} to="/login-page" {...props} />
// ));

import modalStyle from "assets/jss/material-kit-react/modalStyle.js";

const Transition = React.forwardRef(function Transition(props, ref) {
  return <Slide direction="down" ref={ref} {...props} />;
});
const useStyles = makeStyles(styles);
const usty=makeStyles(modalStyle);
export default function HeaderLinks(props) {
  const classes = useStyles();
  const cls1=usty();
  const [modal, setModal] = React.useState(false);
  return (
    <div>
    
    <List className={classes.list} style={{background:"blue"}}>
      <ListItem className={classes.listItem}>
        {/* <CustomDropdown
          noLiPadding
          buttonText="Components"
          buttonProps={{
            className: classes.navLink,
            color: "transparent"
          }}
          buttonIcon={Apps}
          dropdownList={[
            <Link to="/" className={classes.dropdownLink}>
              All components
            </Link>,
            <a
              href="https://creativetimofficial.github.io/material-kit-react/#/documentation?ref=mkr-navbar"
              target="_blank"
              className={classes.dropdownLink}
            >
              Documentation
            </a>
          ]}
        /> */}
        <img src={require("assets/img/Bebras_india_logo.png")} style={{align:'left',width: '50px', height: '50px'}}></img>
        <a href="/landing-page" style={{color:"white"}}>
         <Button
          color="info"
          className={classes.navLink}
          target="_blank"
          
        >
          
          <Home/> Home
        </Button>
        </a>
      </ListItem>
      <ListItem className={classes.listItem}>
        <a href="/Teacher" style={{color:"white"}}>
        <Button
          color="info"
          target="_blank"
          className={classes.navLink}
        > Teachers
        </Button>
        </a>
      </ListItem>
      <ListItem className={classes.listItem}>
        <a href="/PracticeChallenge" style={{color:"white"}}>
        <Button
          color="info"
          target="_blank"
          className={classes.navLink}
        > Practice Challenge
        </Button>
        </a>
      </ListItem>
      <ListItem className={classes.listItem}>
        <a href="/Competitions" style={{color:"white"}}>
        <Button
          color="info"
          target="_blank"
          className={classes.navLink}
        > Competitions
        </Button>
        </a>
      </ListItem>
      <ListItem className={classes.listItem}>
        <a href="/Results"  style={{color:"white"}}>
        <Button
          color="info"
          target="_blank"
          className={classes.navLink}
        > Result
        </Button>
        </a>
      </ListItem>
      <ListItem className={classes.listItem}>
        <a href="/Contact" style={{color:"white"}}>
        <Button
          color="info"
          target="_blank"
          className={classes.navLink}
        > Contact
        </Button>
        </a>
      </ListItem>
      <ListItem className={classes.listItem}>
        <Button color="rose"  onClick={() => setModal(true)}>
          Login
        </Button>
      <GridContainer justify="center">
            <GridItem xs={12} sm={12} md={12}>
      <Dialog
        classes={{
          root: cls1.center,
          paper: cls1.modal
        }}
        open={modal}
        TransitionComponent={Transition}
        keepMounted
        onClose={() => setModal(false)}
        aria-labelledby="modal-slide-title"
        aria-describedby="modal-slide-description"
      >
        <DialogTitle
          id="classic-modal-slide-title"
          disableTypography
          className={cls1.modalHeader}
        >
          <IconButton
            className={cls1.modalCloseButton}
            key="close"
            aria-label="Close"
            color="inherit"
            onClick={() => setModal(false)}
          >
            <Close className={cls1.modalClose} />
          </IconButton>
          <h4 className={cls1.modalTitle}>Modal title</h4>
        </DialogTitle>
        <DialogContent
          id="modal-slide-description"
          className={cls1.modalBody}
        >
        {/* <LoginPage/> */}
          <h5>Are you sure you want to do this?</h5>
        </DialogContent>
        <DialogActions
          className={cls1.modalFooter + " " + cls1.modalFooterCenter}
        >
          <Button onClick={() => setModal(false)}>Never Mind</Button>
          <Button onClick={() => setModal(false)} color="success">
            Yes
          </Button>
        </DialogActions>
      </Dialog>
      </GridItem>
          </GridContainer>
      </ListItem>
      <ListItem className={classes.listItem}>
      
        {/* <Tooltip title="Delete">
          <IconButton aria-label="Delete">
            
           
          </IconButton>
        </Tooltip> */}
        <Tooltip
          id="instagram-twitter"
          title="Follow us on twitter"
          placement={window.innerWidth > 959 ? "top" : "left"}
          classes={{ tooltip: classes.tooltip }}
        >
          <Button
            href="https://twitter.com/CreativeTim?ref=creativetim"
            target="_blank"
            color="transparent"
            className={classes.navLink}
          >
            <i className={classes.socialIcons + " fab fa-twitter"} />
          </Button>
        </Tooltip>
      </ListItem>
      <ListItem className={classes.listItem}>
        <Tooltip
          id="instagram-facebook"
          title="Follow us on facebook"
          placement={window.innerWidth > 959 ? "top" : "left"}
          classes={{ tooltip: classes.tooltip }}
        >
          <Button
            color="transparent"
            href="https://www.facebook.com/CreativeTim?ref=creativetim"
            target="_blank"
            className={classes.navLink}
          >
            <i className={classes.socialIcons + " fab fa-facebook"} />
          </Button>
        </Tooltip>
      </ListItem>
      <ListItem className={classes.listItem}>
        <Tooltip
          id="instagram-tooltip"
          title="Follow us on instagram"
          placement={window.innerWidth > 959 ? "top" : "left"}
          classes={{ tooltip: classes.tooltip }}
        >
          <Button
            color="transparent"
            href="https://www.instagram.com/CreativeTimOfficial?ref=creativetim"
            target="_blank"
            className={classes.navLink}
          >
            <i className={classes.socialIcons + " fab fa-instagram"} />
          </Button>
        </Tooltip>
      </ListItem>
    </List>
    </div>
  );
}
