import React from "react";
import { TextField } from "@material-ui/core";
import { isWidthDown } from "@material-ui/core/withWidth";
import { userService } from "../../../services/user.service";
import startsWith from "lodash.startswith";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "components/CustomButtons/Button.js";
import InputLabel from "@material-ui/core/InputLabel";
import MenuItem from "@material-ui/core/MenuItem";
import FormHelperText from "@material-ui/core/FormHelperText";
import FormControl from "@material-ui/core/FormControl";
import Select from "@material-ui/core/Select";
import PhoneInput from "react-phone-input-2";
import "react-phone-input-2/lib/style.css";
import Card from "components/Card/Card.js";
import CardContent from "@material-ui/core/CardContent";
import cardStyle from "assets/jss/material-kit-react/components/cardStyle.js";
import Notiflix from "notiflix";
import Visibility from "@material-ui/icons/Visibility";
import VisibilityOff from "@material-ui/icons/VisibilityOff";
import IconButton from "@material-ui/core/IconButton";
import InputAdornment from "@material-ui/core/InputAdornment";
import "./Teacher.css";
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
dateLimit.setFullYear(dateLimit.getFullYear() - 18);
class Teacher extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: "",
      gender: "",
      phone: "",
      birthdate: "",
      email: "",
      gendernames: [],
      hidden: true,
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handlePhoneChange = this.handlePhoneChange.bind(this);
    this.toggleShow = this.toggleShow.bind(this);
  }

  toggleShow() {
    this.setState({ hidden: !this.state.hidden });
  }
  handleSubmit(e) {
    Notiflix.Block.Dots("body");
    e.preventDefault();
    const { gender, phone } = this.state;
    if (!gender || !phone) {
      Notiflix.Block.Remove("body");
      Notiflix.Notify.Warning("Please fill the required fields".toUpperCase());

      return;
    }

    if (phone.charAt(0) !== "+") {
      var phonenumber = "+" + phone;
    }
    const registerteacher = {
      username: this.state.username,
      password: this.state.password,
      gender: this.state.gender,
      phone: phonenumber,
      birthdate: this.state.birthdate,
      email: this.state.email,
    };
    sessionStorage.setItem("registerteacher", JSON.stringify(registerteacher));
    userService.registerTeacher().then(
      (user) => {
        Notiflix.Block.Remove("body");
        window.location.reload();
      },
      (error) => {
        Notiflix.Block.Remove("body");
        if (error.response.status === 401) {
          window.location.reload(false);
        }
      }
    );
  }

  handlePhoneChange(value) {
    if (value) {
      this.setState({ phone: value });
    }
  }

  handleChange(e) {
    const { name, value } = e.target;
    this.setState({ [name]: value });
  }
  render() {
    return (
      <div className="elememt">
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
                  Register teachers individually here
                </h2>
              </div>
              <CardContent>
                <form action="#" onSubmit={this.handleSubmit}>
                  <GridContainer>
                    <GridItem xs={12} md={12}>
                      <TextField
                        placeholder="User Name"
                        name="username"
                        label="User Name"
                        variant="outlined"
                        margin="normal"
                        inputlabelprops={{
                          shrink: true,
                        }}
                        inputProps={{
                          minLength: 3,
                          maxLength: 50,
                        }}
                        onChange={this.handleChange}
                        required
                        fullWidth
                      />
                    </GridItem>
                    <GridItem xs={12} md={12}>
                      <TextField
                        placeholder="type your password here"
                        label="Password"
                        name="password"
                        type={this.state.hidden ? "password" : "text"}
                        variant="outlined"
                        margin="normal"
                        inputlabelprops={{
                          shrink: true,
                        }}
                        inputProps={{
                          minLength: 6,
                          maxLength: 20,
                        }}
                        onChange={this.handleChange}
                        required
                        fullWidth
                        InputProps={{
                          endAdornment: (
                            <InputAdornment position="end">
                              <IconButton
                                aria-label="toggle password visibility"
                                onClick={this.toggleShow}
                              >
                                {this.state.hidden ? (
                                  <VisibilityOff />
                                ) : (
                                  <Visibility />
                                )}
                              </IconButton>
                            </InputAdornment>
                          ),
                        }}
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
                        label="Birthdate*"
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
                        required
                        placeholder="Type your email here"
                        name="email"
                        label="Email"
                        type="email"
                        variant="outlined"
                        margin="normal"
                        inputlabelprops={{
                          shrink: true,
                        }}
                        onChange={this.handleChange}
                        fullWidth
                      />
                    </GridItem>
                  </GridContainer>
                  <Button type="submit">Submit</Button>
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
export default Teacher;
