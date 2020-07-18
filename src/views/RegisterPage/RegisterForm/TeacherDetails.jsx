import React from "react";
import { TextField } from "@material-ui/core";
import { isWidthDown } from "@material-ui/core/withWidth";
import PhoneInput from "react-phone-input-2";
import "react-phone-input-2/lib/material.css";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import InputLabel from "@material-ui/core/InputLabel";
import MenuItem from "@material-ui/core/MenuItem";
import FormHelperText from "@material-ui/core/FormHelperText";
import FormControl from "@material-ui/core/FormControl";
import Select from "@material-ui/core/Select";
import { userService } from "services/user.service";
const dateLimit = new Date();
dateLimit.setFullYear(dateLimit.getFullYear() - 18);
class TeacherDetails extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.user;
    this.state.gendernames = [];
    this.handleChange = this.handleChange.bind(this);
    this.handlePhoneChange = this.handlePhoneChange.bind(this);
  }

  handlePhoneChange(value) {
    if (value) {
      this.setState({ phone: value });
    }
  }

  handleChange(e) {
    const { name, value } = e.target;
    this.setState({ [name]: value }, function () {
      this.props.onChangeUser(this.state);
    });
  }
  render() {
    return (
      <div>
        <GridContainer>
          <GridItem xs={12} md={12}>
            <TextField
              placeholder="User Name"
              name="username"
              label="Please enter your full name"
              variant="outlined"
              margin="normal"
              inputlabelprops={{
                shrink: true,
              }}
              inputProps={{
                minLength: 3,
                maxLength: 50,
              }}
              defaultValue={this.state.userName}
              onChange={this.handleChange}
              required
              fullWidth
            />
          </GridItem>
          <GridItem xs={12} md={12}>
            <TextField
              placeholder="Type your password here"
              label="Password"
              name="password"
              type="password"
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
            />
          </GridItem>
          <GridItem xs={12} md={12}>
            <FormControl variant="outlined" fullWidth required margin="normal">
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
                  <span style={{ color: "red" }}>This is Required</span>
                </FormHelperText>
              )}
            </FormControl>
          </GridItem>

          <GridItem xs={12} md={12}>
            <PhoneInput
              inputProps={{
                name: "phone",
                required: true,
              }}
              country={"in"}
              value={this.state.phone}
              onChange={(phone) => this.setState({ phone })}
              containerStyle={{ marginTop: "13px", height: "60px" }}
              inputStyle={{ height: "60px", width: "100%" }}
              disableDropdown="true"
            />
          </GridItem>
          <GridItem xs={12} md={12}>
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
              required
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
      </div>
    );
  }
  componentDidMount() {
    var arry = ["India"];
    userService.getgenderoptions().then(
      (array2) => {
        arry = array2;
        console.log(arry);
        this.setState({ gendernames: arry });
      },
      (error) => {}
    );
  }
}
export default TeacherDetails;
