import React from "react";
import Select from "react-select";
import MUIDataTable from "mui-datatables";
import { createMuiTheme, MuiThemeProvider } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "@material-ui/core/Button";
import Divider from "@material-ui/core/Divider";
import Grid from "@material-ui/core/Grid";
import { userService } from "services/user.service";
import "../../StudentSections/PracticeChallenge/Page.css";
import "../../StudentSections/PracticeChallenge/pch.css";
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
Notiflix.Notify.Init({
  width: "40%",
  position: "left-bottom", // 'right-top' - 'right-bottom' - 'left-top' - 'left-bottom'
  distance: "10px",
  opacity: 1,
  borderRadius: "5px",
  rtl: false,
  timeout: 3000,
  messageMaxLength: 110,
  backOverlay: false,
  backOverlayColor: "rgba(0,0,0,0.5)",
  plainText: true,
  showOnlyTheLastOne: false,
  clickToClose: false,

  ID: "NotiflixNotify",
  className: "notiflix-notify",
  zindex: 4001,
  useGoogleFont: true,
  fontFamily: "Quicksand",
  fontSize: "13px",
  cssAnimation: true,
  cssAnimationDuration: 400,
  cssAnimationStyle: "fade", // 'fade' - 'zoom' - 'from-right' - 'from-top' - 'from-bottom' - 'from-left'
  closeButton: false,
  useIcon: true,
  useFontAwesome: false,
  fontAwesomeIconStyle: "basic", // 'basic' - 'shadow'
  fontAwesomeIconSize: "34px",

  success: {
    background: "#151515",
    textColor: "#fff",
    childClassName: "success",
    notiflixIconColor: "rgb(44,151,7)",
    fontAwesomeClassName: "fas fa-check-circle",
    fontAwesomeIconColor: "rgb(44,151,7)",
  },

  failure: {
    background: "#151515",
    textColor: "#fff",
    childClassName: "failure",
    notiflixIconColor: "rgb(212,4,56)",
    fontAwesomeClassName: "fas fa-times-circle",
    fontAwesomeIconColor: "rgb(212,4,56)",
  },

  warning: {
    background: "#151515",
    textColor: "#fff",
    childClassName: "warning",
    notiflixIconColor: "rgb(46,154,254)",
    fontAwesomeClassName: "fas fa-exclamation-circle",
    fontAwesomeIconColor: "rgb(46,154,254)",
  },

  info: {
    background: "#151515",
    textColor: "#fff",
    childClassName: "info",
    notiflixIconColor: "rgb(46,154,254)",
    fontAwesomeClassName: "fas fa-info-circle",
    fontAwesomeIconColor: "rgb(46,154,254)",
  },
});
var rowssselected = [];
const user = [];
const columns = [
  {
    field: "username",
    name: "username",
    label: "USER NAME",
    options: {
      filter: true,
      sort: true,
    },
  },
  {
    field: "loginID",
    name: "loginID",
    label: "LOGIN ID",
    options: {
      filter: true,
      sort: true,
    },
  },
  {
    field: "birthdate",
    name: "birthdate",
    label: "BIRTHDATE",
    options: {
      filter: true,
      sort: false,
    },
  },
];

const options = {
  customToolbarSelect: () => {},
  // selectableRows: true,
  selectableRowsOnClick: false,
  onRowsSelect: (currentRowsSelected, allRowsSelected) => {
    rowssselected.length = 0;
    rowssselected = allRowsSelected;
  },

  onRowClick: (rowData, rowState) => {
    user.push(rowData);
  },
};
export default class EnrollStudent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      optionschoolclass: [],
      optionschoolcmp: [],
      optionslanguage: [],
      userdata: [
        {
          userName: "Joe James",
          loginID: "Test Corp",
          gender: "Yonkers",
          birthdate: "NY",
        },
      ],
      schoolclass: "",
      competition: { label: "", value: "" },
      language: { label: "", value: "" },
    };

    this.onChangeSchoolClass = this.onChangeSchoolClass.bind(this);
    this.onChangeCmp = this.onChangeCmp.bind(this);
    this.onChangeLanguage = this.onChangeLanguage.bind(this);
    this.registerstudent = this.registerstudent.bind(this);
  }

  onChangeLanguage(optionSelected) {
    this.setState({ language: optionSelected.value });
  }
  onChangeCmp(optionSelected) {
    if (optionSelected) {
      this.setState({ competition: optionSelected.value });
    }
    this.setState({ language: { label: "", value: "" } });
    var arry;
    userService
      .getLanguagesNames(this.state.schoolclass, optionSelected.value)
      .then(
        (array2) => {
          arry = array2;
          const datacmp = [];
          arry.forEach(function (element) {
            datacmp.push({ label: element, value: element });
          });
          this.setState({ optionslanguage: datacmp });
        },
        (error) => {
          console.log(error);
          this.setState({ optionslanguage: [] });
        }
      );
  }
  onChangeSchoolClass(optionSelected) {
    if (optionSelected) {
      this.setState({ schoolclass: optionSelected.value });
      var arry;
      this.setState({ competition: { label: "", value: "" } });
      this.setState({ language: { label: "", value: "" } });
      userService.getCmp_Names(optionSelected.value).then(
        (array2) => {
          arry = array2;
          const datacmp = [];
          arry.forEach(function (element) {
            datacmp.push({ label: element, value: element });
          });
          this.setState({
            optionschoolcmp: datacmp,
          });
        },
        (error) => {
          console.log(error);
          this.setState({
            optionschoolcmp: [],
          });
          this.setState({ optionslanguage: [] });
        }
      );
    }
  }

  registerstudent() {
    if (
      rowssselected.length === 0 ||
      this.state.competition.value === "" ||
      !this.state.schoolclass ||
      this.state.language.value === ""
    ) {
      Notiflix.Notify.Warning(
        "Please fill required fields and atleast select one student from the table".toUpperCase()
      );
      return;
    }
    const datauser = [];
    for (var i in rowssselected) {
      datauser.push(this.state.userdata[rowssselected[i].index]);
    }
    const bulkuserdata = {
      classNumber: this.state.schoolclass,
      competitionName: this.state.competition,
      language: this.state.language,
      user: datauser,
    };
    userService.doBulkRegisterStudents(bulkuserdata).then(
      (user) => {
        window.location.reload();
      },
      (error) => {}
    );
  }

  getMuiTheme = () =>
    createMuiTheme({
      overrides: {
        MUIDataTable: {
          root: {},
          paper: {
            border: "darkgray solid 1px",
          },
        },
        MUIDataTableHeadCell: {
          root: {
            backgroundColor: "inherit",
          },
        },
        MUIDataTableBodyCell: {
          root: {
            backgroundColor: "#DAF3FF ",
          },
        },
      },
    });

  render() {
    return (
      <div className="whitebg element" style={{ marginTop: "0%" }}>
        <div
          style={{
            height: "80px",
            width: "100%",
            display: "block",
            backgroundColor: "#2C3531",
            color: "#ffffff",
            textAlign: "center",
            borderRadius: "5px 5px 5px 5px",
          }}
        >
          <br></br>

          <h2
            style={{
              fontWeight: "700",
              fontFamily: "Times new roman",
              marginTop: "0%",
            }}
          >
            Enroll Students
          </h2>
        </div>
        <GridContainer justify="center">
          <GridItem xs={12} md={10}>
            <div style={{ padding: "30px 0px 0px 0px" }}>
              <Grid container spacing={5}>
                <Grid item xs>
                  <Select
                    required
                    isSearchable
                    styles={{
                      control: (base, state) => ({
                        ...base,
                        "&:hover": {
                          border: "2px solid #0091B4",
                        }, // border style on hover
                        border: "2px solid #0091B4", // default border color
                      }),
                    }}
                    placeholder="Select class"
                    onChange={this.onChangeSchoolClass}
                    options={this.state.optionschoolclass}
                    maxMenuHeight={70}
                  />
                </Grid>
                <Grid item xs>
                  <Select
                    required
                    isSearchable
                    styles={{
                      control: (base, state) => ({
                        ...base,
                        "&:hover": {
                          border: "2px solid #0091B4",
                        }, // border style on hover
                        border: "2px solid #0091B4", // default border color
                      }),
                    }}
                    placeholder="Select competition"
                    value={this.state.competition.label}
                    onChange={this.onChangeCmp}
                    options={this.state.optionschoolcmp}
                    maxMenuHeight={70}
                  />
                </Grid>
                <Grid item xs>
                  <Select
                    required
                    isSearchable
                    styles={{
                      control: (base, state) => ({
                        ...base,
                        "&:hover": {
                          border: "2px solid #0091B4",
                        }, // border style on hover
                        border: "2px solid #0091B4", // default border color
                      }),
                    }}
                    placeholder="Select language"
                    value={this.state.language.label}
                    onChange={this.onChangeLanguage}
                    options={this.state.optionslanguage}
                    maxMenuHeight={70}
                  />
                </Grid>
              </Grid>
            </div>
            <Divider dark="true" />
            <br></br>
            <br></br>
            <div style={{ padding: "30px 0px" }}>
              <MuiThemeProvider theme={this.getMuiTheme()}>
                <MUIDataTable
                  title={"STUDENT LIST"}
                  data={this.state.userdata}
                  columns={columns}
                  options={options}
                />
              </MuiThemeProvider>
            </div>
            <Divider dark="true" />
            <div style={{ padding: "30px 0px" }}>
              <center>
                <Button
                  variant="contained"
                  onClick={this.registerstudent}
                  color="primary"
                >
                  Enroll
                </Button>
              </center>
            </div>
          </GridItem>
        </GridContainer>
      </div>
    );
  }
  componentDidMount() {
    Notiflix.Block.Dots("body");
    var arry;
    userService.getSchoolClasses().then(
      (array2) => {
        Notiflix.Block.Remove("body");
        arry = array2;

        const dataschoolclass = [];
        arry.forEach(function (element) {
          dataschoolclass.push({ label: element, value: element });
        });
        this.setState({ optionschoolclass: dataschoolclass });
      },
      (error) => {
        Notiflix.Block.Remove("body");
        this.setState({ optionschoolclass: [] });
      }
    );
    Notiflix.Block.Dots("body");
    userService.getNamesUsers().then(
      (user) => {
        Notiflix.Block.Remove("body");
        this.setState({ userdata: user });
      },
      (error) => {
        Notiflix.Block.Remove("body");
        window.location.reload(false);
      }
    );
    this.setState({ showHideSidenav: "hidden" });
  }
}
