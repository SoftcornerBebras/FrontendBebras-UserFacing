import { container } from "assets/jss/material-kit-react.js";

const footerStyle = {
  block: {
    color: "#FFFFFF",
    paddingBottom: "0.9375rem",
    fontWeight: "500",
    fontSize: "12px",
    textTransform: "uppercase",
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
    textAlign: "right",
    display: "flex",
  },
  footer: {
    color: "#FFFFFF",
    paddingBottom: "0.9975rem",
    display: "flex",
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
