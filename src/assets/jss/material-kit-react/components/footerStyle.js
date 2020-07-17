import { container } from "assets/jss/material-kit-react.js";

const footerStyle = {
  block: {
    color: "#FFFFFF",
    padding: "0.9375rem",
    fontWeight: "500",
    fontSize: "12px",
    textTransform: "uppercase",
    borderRadius: "3px",
    textDecoration: "none",
    position: "relative",
    display: "block"
  },
  left: {
    color: "#FFFFFF",
    float: "left!important",
    display: "block"
  },
  right: {
    backgroundColor: "#040225",
    color: "#FFFFFF",
    padding: "15px 80px ",
    textAlign: "right",
    display: "flex",
    // margin: "0px 30px ",
  //  / float: "right!important"
  },
  footer: {
    color: "#FFFFFF",
   // backgroundColor: "#303948",
    //background:{bg},
    padding: "0.9375rem 0",
    textAlign: "justify",
    display: "flex",
    borderRadiusTop: "6px", 
    // margin: "0px 30px 0px",
    zIndex: "2",
    position: "relative"
  },
  a: {
    color: "#FFFFFF",
    textDecoration: "none",
    backgroundColor: "transparent"
  },
  footerWhiteFont: {
    color: "#FFFFFF",
    "&,&:hover,&:focus": {
      color: "#FFFFFF"
    }
  },
  container,
  list: {
    color: "#FFFFFF",
    marginBottom: "0",
    padding: "0",
    marginTop: "0"
  },
  inlineBlock: {
    color: "#FFFFFF",
    display: "inline-block",
    padding: "0px",
    width: "auto"
  },
  icon: {
    color: "#FFFFFF",
    width: "18px",
    height: "18px",
    position: "relative",
    top: "3px"
  }
};
export default footerStyle;
