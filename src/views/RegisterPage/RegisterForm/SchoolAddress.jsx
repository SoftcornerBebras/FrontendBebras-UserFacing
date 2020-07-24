import React from "react";
import { TextField } from "@material-ui/core";
import { userService } from "../../../services/user.service.jsx";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import InputLabel from "@material-ui/core/InputLabel";
import MenuItem from "@material-ui/core/MenuItem";
import FormHelperText from "@material-ui/core/FormHelperText";
import FormControl from "@material-ui/core/FormControl";
import Select from "@material-ui/core/Select";

const dateLimit = new Date();
dateLimit.setFullYear(dateLimit.getFullYear() - 18);
class SchoolAddress extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.address;
    this.state.countrynames = [];
    this.state.statenames = [];
    this.state.districtnames = [];
    this.handleChange = this.handleChange.bind(this);
    this.handleCountryChange = this.handleCountryChange.bind(this);
    this.handleStateChange = this.handleStateChange.bind(this);
  }

  handleChange(e) {
    const { name, value } = e.target;
    this.setState({ [name]: value }, function () {
      this.props.onChangeAddress(this.state);
    });
  }
  handleCountryChange(e) {
    const { name, value } = e.target;
    this.setState({ [name]: value });
    userService.getStateNames(value).then(
      (array2) => {
        this.setState({ statenames: array2 });
        this.setState({ districtnames: [] });
      },
      (error) => {}
    );
  }
  handleStateChange(e) {
    const { name, value } = e.target;
    this.setState({ [name]: value });
    userService.getDistrictNames(value).then(
      (array2) => {
        this.setState({ districtnames: array2 });
      },
      (error) => {}
    );
  }
  render() {
    return (
      <div>
        <GridContainer>
          <GridItem xs={12} md={4}>
            <FormControl variant="outlined" fullWidth required margin="normal">
              <InputLabel id="demo-simple-select-outlined-label">
                Country
              </InputLabel>
              <Select
                labelId="demo-simple-select-outlined-label"
                id="demo-simple-select-outlined"
                name="country"
                onChange={this.handleCountryChange}
                value={this.state.country}
                label="country"
                inputlabelprops={{
                  shrink: true,
                }}
              >
                <MenuItem value=""></MenuItem>
                {this.state.countrynames.map((cntry) => {
                  return (
                    <MenuItem key={cntry} value={cntry}>
                      {cntry}
                    </MenuItem>
                  );
                })}
              </Select>
              {!this.state.country && (
                <FormHelperText>
                  <span style={{ color: "red" }}>This is Required</span>
                </FormHelperText>
              )}
            </FormControl>
          </GridItem>
          <GridItem xs={12} md={4}>
            <FormControl variant="outlined" fullWidth required margin="normal">
              <InputLabel id="demo-simple-select-outlined-label">
                State
              </InputLabel>
              <Select
                labelId="demo-simple-select-outlined-label"
                id="demo-simple-select-outlined"
                name="state"
                onChange={this.handleStateChange}
                value={this.state.state}
                label="state"
                inputlabelprops={{
                  shrink: true,
                }}
              >
                <MenuItem value=""></MenuItem>
                {this.state.statenames.map((cntry) => {
                  return (
                    <MenuItem key={cntry} value={cntry}>
                      {cntry}
                    </MenuItem>
                  );
                })}
              </Select>
              {!this.state.state && (
                <FormHelperText>
                  <span style={{ color: "red" }}>This is Required</span>
                </FormHelperText>
              )}
            </FormControl>
          </GridItem>
          <GridItem xs={12} md={4}>
            <FormControl variant="outlined" fullWidth required margin="normal">
              <InputLabel id="demo-simple-select-outlined-label">
                District
              </InputLabel>
              <Select
                labelId="demo-simple-select-outlined-label"
                id="demo-simple-select-outlined"
                name="district"
                onChange={this.handleChange}
                value={this.state.district}
                label="district"
                inputlabelprops={{
                  shrink: true,
                }}
              >
                {/* <MenuItem value=""></MenuItem> */}
                {this.state.districtnames.map((cntry) => {
                  return (
                    <MenuItem key={cntry} value={cntry}>
                      {cntry}
                    </MenuItem>
                  );
                })}
              </Select>
              {!this.state.district && (
                <FormHelperText>
                  <span style={{ color: "red" }}>This is Required</span>
                </FormHelperText>
              )}
            </FormControl>
          </GridItem>

          <GridItem xs={12} md={12}>
            <TextField
              placeholder="Address line1"
              name="line1"
              label="School Address"
              variant="outlined"
              margin="normal"
              inputlabelprops={{
                shrink: true,
              }}
              defaultValue={this.state.line1}
              onChange={this.handleChange}
              required
              fullWidth
            />
          </GridItem>
          <GridItem xs={12} md={12}>
            <TextField
              placeholder="Address line2"
              name="line2"
              label="School Address line 2"
              variant="outlined"
              margin="normal"
              inputlabelprops={{
                shrink: true,
              }}
              defaultValue={this.state.line2}
              onChange={this.handleChange}
              required
              fullWidth
            />
          </GridItem>
          <GridItem xs={12} md={12}>
            <TextField
              placeholder="city"
              name="city"
              label="City"
              variant="outlined"
              margin="normal"
              inputlabelprops={{
                shrink: true,
              }}
              defaultValue={this.state.city}
              onChange={this.handleChange}
              required
              fullWidth
            />
          </GridItem>
          <GridItem xs={12} md={12}>
            <TextField
              placeholder="pincode"
              name="pincode"
              label="Pincode"
              variant="outlined"
              margin="normal"
              inputlabelprops={{
                shrink: true,
              }}
              inputProps={{
                minLength: 3,
                maxLength: 25,
              }}
              defaultValue={this.state.pincode}
              onChange={this.handleChange}
              required
              fullWidth
            />
          </GridItem>
        </GridContainer>
      </div>
    );
  }
  componentDidMount() {
    var arry = ["India"];
    userService.getCountryNames().then(
      (array2) => {
        arry = array2;
        this.setState({ countrynames: arry });
      },
      (error) => {}
    );
    userService.getStateNames("India").then(
      (array2) => {
        this.setState({ statenames: array2 });
        if (this.state.state === "") {
          this.setState({ districtnames: [] });
        } else {
          userService.getDistrictNames(this.state.state).then(
            (array2) => {
              this.setState({ districtnames: array2 });
            },
            (error) => {}
          );
        }
      },
      (error) => {}
    );
  }
}
export default SchoolAddress;
