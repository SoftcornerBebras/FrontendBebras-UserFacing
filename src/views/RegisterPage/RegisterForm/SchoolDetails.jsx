import React from "react";
import { userService } from "../../../services/user.service.jsx";
import { TextField } from "@material-ui/core";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import InputLabel from "@material-ui/core/InputLabel";
import MenuItem from "@material-ui/core/MenuItem";
import FormHelperText from "@material-ui/core/FormHelperText";
import FormControl from "@material-ui/core/FormControl";
import Select from "@material-ui/core/Select";
import UserPreferences from "./UserPreferences.jsx";
import PhoneInput from "react-phone-input-2";
import "react-phone-input-2/lib/material.css";

const dateLimit = new Date();
dateLimit.setFullYear(dateLimit.getFullYear() - 18);
class SchoolDetails extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.school;
    this.state.schoolGroupNames = [];
    this.state.schooltypenames = [];
    this.handleChange = this.handleChange.bind(this);
    this.handlePhoneChange = this.handlePhoneChange.bind(this);
    this.onChangeClasses = this.onChangeClasses.bind(this);
  }

  handlePhoneChange(value) {
    if (value) {
      this.setState({ phone: value });
    }
  }

  onChangeClasses(option) {
    this.setState(
      {
        classes: option,
      },
      function () {
        this.props.onChangeSchool(this.state);
      }
    );
  }
  handleChange(e) {
    const { name, value } = e.target;
    this.setState({ [name]: value }, function () {
      this.props.onChangeSchool(this.state);
    });
  }
  render() {
    return (
      <div className="element">
        <GridContainer>
          <GridItem xs={12} md={12}>
            <TextField
              placeholder="School Name"
              name="schoolName"
              label="School Name"
              margin="normal"
              variant="outlined"
              inputlabelprops={{
                shrink: true,
              }}
              required
              defaultValue={this.state.schoolName}
              onChange={this.handleChange}
              fullWidth
            />
          </GridItem>
          <GridItem xs={12} md={12}>
            <FormControl variant="outlined" fullWidth required margin="normal">
              <InputLabel id="demo-simple-select-outlined-label">
                School Type
              </InputLabel>
              <Select
                labelId="demo-simple-select-outlined-label"
                id="demo-simple-select-outlined"
                name="schoolType"
                onChange={this.handleChange}
                value={this.state.schoolType}
                label="School Type"
                inputlabelprops={{
                  shrink: true,
                }}
              >
                   <MenuItem value=""></MenuItem>
                {this.state.schooltypenames.map((cntry) => {
                  return (
                    <MenuItem key={cntry} value={cntry}>
                      {cntry}
                    </MenuItem>
                  );
                })}
              </Select>
              {!this.state.schoolType && (
                <FormHelperText>
                  <span style={{ color: "red" }}>This is Required</span>
                </FormHelperText>
              )}
            </FormControl>
          </GridItem>

          <GridItem xs={12} md={12}>
            <TextField
              placeholder="UDISEcode"
              name="UDISEcode"
              label="UDISEcode"
              margin="normal"
              variant="outlined"
              inputlabelprops={{
                shrink: true,
              }}
              required
              inputProps={{
                minLength: 11,
                maxLength: 11,
              }}
              defaultValue={this.state.UDISEcode}
              onChange={this.handleChange}
              fullWidth
            />
          </GridItem>
          <GridItem xs={12} md={12}>
            <PhoneInput
              inputProps={{
                name: "contact",
                required: true,
              }}
              country={"in"}
              value={this.state.contact}
              onChange={(contact) => this.setState({ contact })}
              containerStyle={{ marginTop: "13px", height: "60px" }}
              inputStyle={{ height: "60px", width: "100%" }}
              disableDropdown="true"
            />
          </GridItem>
          <GridItem xs={12} md={12}>
            <FormControl variant="outlined" fullWidth required margin="normal">
              <InputLabel id="demo-simple-select-outlined-label">
                School Group Type
              </InputLabel>
              <Select
                labelId="demo-simple-select-outlined-label"
                id="demo-simple-select-outlined"
                name="schoolGroupID"
                onChange={this.handleChange}
                value={this.state.schoolGroupID}
                label="School Group Type"
                inputlabelprops={{
                  shrink: true,
                }}
              >
                <MenuItem value=""></MenuItem>
                {this.state.schoolGroupNames.map((cntry) => {
                  return (
                    <MenuItem key={cntry} value={cntry}>
                      {cntry}
                    </MenuItem>
                  );
                })}
              </Select>
              {!this.state.schoolGroupID && (
                <FormHelperText>
                  <span style={{ color: "red" }}>This is Required</span>
                </FormHelperText>
              )}
            </FormControl>
          </GridItem>

          <GridItem xs={12} md={12}>
            <UserPreferences classes={this.props.school.classes} onChangeClasses={this.onChangeClasses} />
          </GridItem>
        </GridContainer>
      </div>
    );
  }
  componentDidMount() {
    var arry = ["India"];
    userService.getschoolGroupNames().then(
      (array2) => {
        arry = array2;
        this.setState({ schoolGroupNames: arry });
      },
      (error) => {}
    );
    userService.getschoolTypes().then(
      (array2) => {
        arry = array2;
        this.setState({ schooltypenames: arry });
      },
      (error) => {}
    );
  }
}
export default SchoolDetails;
