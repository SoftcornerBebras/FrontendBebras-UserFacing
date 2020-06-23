import React from "react";
import MUIDataTable from "mui-datatables";
import { createMuiTheme, MuiThemeProvider } from "@material-ui/core/styles";
import Button from "@material-ui/core/Button";
import Divider from "@material-ui/core/Divider";
import GridContainer from "components/Grid/GridContainer.js";
import { userService } from "services/user.service";
import GridItem from "components/Grid/GridItem.js";
import Notiflix from "notiflix";
import "../../StudentSections/PracticeChallenge/Page.css";
import "../../StudentSections/PracticeChallenge/pch.css";
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
    label: "UserName",
    options: {
      filter: true,
      sort: false,
    },
  },
  {
    field: "loginID",
    name: "loginID",
    label: "loginID",
    options: {
      filter: true,
      sort: false,
    },
  },
  {
    field: "ageGroup",
    name: "ageGroup",
    label: "ageGroup",
    options: {
      filter: true,
      sort: false,
    },
  },
  {
    field: "class",
    name: "class",
    label: "class",
    options: {
      filter: true,
      sort: false,
    },
  },
  {
    field: "competitionName",
    name: "competitionName",
    label: "competitionName",
    options: {
      filter: true,
      sort: false,
    },
  },
  {
    field: "score",
    name: "score",
    label: "Score",
    options: {
      filter: true,
      sort: false,
    },
  },
  {
    field: "Totalscore",
    name: "Totalscore",
    label: "Totalscore",
    options: {
      filter: true,
      sort: false,
    },
  },
  
];

const options = {
  filterType: "checkbox",
  customToolbarSelect: () => {},
  // selectableRows: false,
  selectableRowsOnClick: true,
  onRowsSelect: (currentRowsSelected, allRowsSelected) => {
    rowssselected.length = 0;
    rowssselected = allRowsSelected;
  },

  onRowClick: (rowData, rowState) => {
    user.push(rowData);
  },
};
export default class TeacherResult extends React.Component {
  _isMounted = false;
  constructor(props) {
    super(props);
    this.state = {
      userdata: [
        {
          userName: "Joe James",
          loginID: "Test Corp",
          gender: "Yonkers",
          birthdate: "NY",
        },
      ],
    };
    this.handleDownload = this.handleDownload.bind(this);
  }
  handleDownload() {
    if (rowssselected.length === 0) {
      Notiflix.Notify.Warning(
        "please select at least one student".toUpperCase()
      );
      return;
    }
    const datauser = [];
    for (var i in rowssselected) {
      datauser.push(this.state.userdata[rowssselected[i].dataIndex]);
    }
    userService.downloadCertificateforStudents(datauser);
  }
  componentDidMount() {
    this._isMounted = true;
    Notiflix.Block.Dots("body");
    userService.getAllUsersResults().then(
      (user) => {
        Notiflix.Block.Remove("body");
        this.setState({ userdata: user });
      },
      (error) => {
        Notiflix.Block.Remove("body");
        console.log(error);
        if (error.response.status===401){
          window.location.reload(false);
        }
      }
    );
  }
  componentWillUnmount() {
    this._isMounted = false;
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
            backgroundColor: "#DAF3FF",
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
            Download Results
          </h2>
        </div>
        <GridContainer justify="center">
          <GridItem xs={12} md={10}>
            <Divider dark="true" />
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
                  onClick={this.handleDownload}
                  variant="contained"
                  color="primary"
                >
                  Download
                </Button>
              </center>
            </div>
          </GridItem>
        </GridContainer>
      </div>
    );
  }
}
