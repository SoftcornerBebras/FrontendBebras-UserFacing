import React from "react";
// nodejs library that concatenates classes
// @material-ui/core components
import { TextField } from "@material-ui/core";
import startsWith from "lodash.startswith";
import { isWidthDown } from "@material-ui/core/withWidth";
import Alert from "@material-ui/lab/Alert";
import { userService } from "../../../services/user.service";
import PhoneInput from "react-phone-input-2";
import "react-phone-input-2/lib/material.css";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "components/CustomButtons/Button.js";
import InputLabel from "@material-ui/core/InputLabel";
import MenuItem from "@material-ui/core/MenuItem";
import FormHelperText from "@material-ui/core/FormHelperText";
import FormControl from "@material-ui/core/FormControl";
import Select from "@material-ui/core/Select";
import Snackbar from "@material-ui/core/Snackbar";
import Card from "components/Card/Card.js";
import CardContent from "@material-ui/core/CardContent";
import cardStyle from "assets/jss/material-kit-react/components/cardStyle.js";
import Notiflix from "notiflix";
Notiflix.Block.Init({
  querySelectorLimit: 200,
  className: "notiflix-block",
  position: "absolute",
  zindex: 1000,
  backgroundColor: "rgba(0,0,0,0.5)",
  rtl: false,
  useGoogleFont: true,
  fontFamily: "Quicksand",
  cssAnimation: true,
  cssAnimationDuration: 300,
  svgSize: "95px",
  svgColor: "#ffffff",
  messageFontSize: "24px",
  messageMaxLength: 34,
  messageColor: "#ffffff",
});

const dateLimit = new Date();
dateLimit.setFullYear(dateLimit.getFullYear() - 5);
class Student extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstName: "",
      lastName: "",
      gender: "",
      phone: "",
      birthdate: "",
      email: "",
      gendernames: [],
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    Notiflix.Block.Dots("body");
    const { firstName, lastName, gender, phone } = this.state;
    if (!firstName || !lastName || !gender) {
      Notiflix.Block.Remove("body");
      Notiflix.Notify.Warning("Please fill the required fields".toUpperCase());
      return;
    }

    if (phone !== "") {
      if (phone.charAt(0) !== "+") {
        var phonenumber = "+" + phone;
      }
      const registerstudent = {
        firstName: this.state.firstName,
        lastName: this.state.lastName,
        gender: this.state.gender,
        phone: phonenumber,
        birthdate: this.state.birthdate,
        email: this.state.email,
      };

      sessionStorage.setItem(
        "registerstudent",
        JSON.stringify(registerstudent)
      );
      userService.registerStudent().then(
        (user) => {
          Notiflix.Block.Remove("body");
        },
        (error) => {
          Notiflix.Block.Remove("body");
          if (error.response.status === 401) {
            window.location.reload(false);
          }
        }
      );
    } else {
      const registerstudent = {
        firstName: this.state.firstName,
        lastName: this.state.lastName,
        gender: this.state.gender,
        phone: this.state.phone,
        birthdate: this.state.birthdate,
        email: this.state.email,
      };
      sessionStorage.setItem(
        "registerstudent",
        JSON.stringify(registerstudent)
      );
      userService.registerStudent().then(
        (user) => {
          Notiflix.Block.Remove("body");
        },
        (error) => {
          Notiflix.Block.Remove("body");
          if (error.response.status === 401) {
            window.location.reload(false);
          }
        }
      );
    }
  }

  handleChange(e) {
    const { name, value } = e.target;
    this.setState({ [name]: value });
  }
  render() {
    return (
      <div className="element">
        <GridContainer justify="center">
          <GridItem xs={12} md={6}>
            <br></br>
            <br></br>
            <Card classnames={cardStyle.card}>
              <div
                style={{
                  height: "180px",
                  width: "100%",
                  display: "block",
                  backgroundColor: "#2C3531",
                  color: "#ffffff",
                  textAlign: "center",
                  borderRadius: "5px 5px 5px 5px",
                }}
              >
                <br></br>
                <br></br>
                <h2
                  style={{ fontWeight: "700", fontFamily: "Times new roman" }}
                >
                  Register students individually here
                </h2>
              </div>

              <CardContent>
                <form action="#" onSubmit={this.handleSubmit}>
                  <GridContainer>
                    <GridItem xs={12} md={12}>
                      <TextField
                        placeholder="Type your Firstname here"
                        name="firstName"
                        label="Firstname"
                        margin="normal"
                        variant="outlined"
                        inputlabelprops={{
                          shrink: true,
                        }}
                        required
                        inputProps={{
                          minLength: 3,
                          maxLength: 20,
                        }}
                        defaultValue={this.state.firstName}
                        onChange={this.handleChange}
                        fullWidth
                      />
                    </GridItem>
                    <GridItem xs={12} md={12}>
                      <TextField
                        placeholder="Type your Lastname here"
                        name="lastName"
                        label="Lastname"
                        variant="outlined"
                        margin="normal"
                        inputlabelprops={{
                          shrink: true,
                        }}
                        inputProps={{
                          minLength: 3,
                          maxLength: 20,
                        }}
                        defaultValue={this.state.lastName}
                        onChange={this.handleChange}
                        required
                        fullWidth
                      />
                    </GridItem>
                    <GridItem xs={12} md={12}>
                      <FormControl
                        variant="outlined"
                        fullWidth
                        required
                        margin="normal"
                      >
                        <InputLabel id="demo-simple-select-outlined-label">
                          gender
                        </InputLabel>
                        <Select
                          labelId="demo-simple-select-outlined-label"
                          id="demo-simple-select-outlined"
                          name="gender"
                          required
                          onChange={this.handleChange}
                          value={this.state.gender}
                          label="Gender"
                          inputlabelprops={{
                            shrink: true,
                          }}
                        >
                          <MenuItem value=""></MenuItem>
                          {this.state.gendernames.map((cntry) => {
                            return (
                              <MenuItem key={cntry} value={cntry}>
                                {cntry}
                              </MenuItem>
                            );
                          })}
                        </Select>
                        {!this.state.gender && (
                          <FormHelperText>
                            <span style={{ color: "red" }}>
                              This is Required
                            </span>
                          </FormHelperText>
                        )}
                      </FormControl>
                    </GridItem>
                    <GridItem xs={12} md={6}>
                      <PhoneInput
                        isValid={(inputNumber, country, countries) => {
                          return countries.some((country) => {
                            return (
                              startsWith(inputNumber, country.dialCode) ||
                              startsWith(country.dialCode, inputNumber)
                            );
                          });
                        }}
                        inputProps={{
                          name: "phone",
                          required: true,
                        }}
                        country={"in"}
                        value={this.state.phone}
                        onChange={(phone) => this.setState({ phone })}
                        containerStyle={{ marginTop: "15px", height: "58px" }}
                        inputStyle={{ height: "58px", width: "100%" }}
                        disableDropdown="true"
                      />
                    </GridItem>
                    <GridItem xs={12} md={6}>
                      <TextField
                        type="date"
                        name="birthdate"
                        id="birthdate"
                        label="Birthdate"
                        variant="outlined"
                        margin="normal"
                        InputLabelProps={{
                          shrink: true,
                        }}
                        inputProps={{
                          min: "1920-01-01",
                          max: dateLimit.toISOString().slice(0, 10),
                        }}
                        defaultValue={this.state.birthdate}
                        onChange={this.handleChange}
                        fullWidth={isWidthDown("sm")}
                      />
                    </GridItem>
                    <GridItem xs={12} md={12}>
                      <TextField
                        placeholder="Type your email here"
                        name="email"
                        label="Email"
                        type="email"
                        variant="outlined"
                        margin="normal"
                        inputlabelprops={{
                          shrink: true,
                        }}
                        defaultValue={this.state.phone}
                        onChange={this.handleChange}
                        fullWidth
                      />
                    </GridItem>
                  </GridContainer>
                  <Button type="submit">Submit</Button>
                  <div style={{ width: "100%" }}>
                    <Snackbar
                      open={this.state.open}
                      autoHideDuration={6000}
                      onClose={this.handleClose}
                    >
                      <Alert
                        onClose={this.handleClose}
                        elevation={6}
                        variant="filled"
                        severity="success"
                      >
                        This is a success message!
                      </Alert>
                    </Snackbar>
                  </div>
                </form>
              </CardContent>
            </Card>
            <br></br>
            <br></br>
          </GridItem>
          <GridItem xs={12} md={12}></GridItem>
        </GridContainer>
      </div>
    );
  }
  componentDidMount() {
    var arry = ["India"];
    userService.getgenderoptions().then(
      (array2) => {
        arry = array2;
        this.setState({ gendernames: arry });
      },
      (error) => {}
    );
  }
}
export default Student;
