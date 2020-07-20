import React from "react";
import Select from "react-select";
// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import IconButton from "@material-ui/core/IconButton";
// @material-ui/icons
import Close from "@material-ui/icons/Close";
// core components
import Button from "components/CustomButtons/Button.js";
import Stepper from "@material-ui/core/Stepper";
import Step from "@material-ui/core/Step";
import StepLabel from "@material-ui/core/StepLabel";
import StepContent from "@material-ui/core/StepContent";
import Typography from "@material-ui/core/Typography";
import WbIncandescentIcon from "@material-ui/icons/WbIncandescent";
import InfoArea from "components/InfoArea/InfoArea.js";
import MUIDataTable from "mui-datatables";
import { createMuiTheme, MuiThemeProvider } from "@material-ui/core/styles";
import styles from "assets/jss/material-kit-react/views/landingPage.js";
import { Tab } from "@material-ui/core";
import classNames from "classnames";
import { userService } from "services/user.service";
import Modal from "@material-ui/core/Modal";
import Notiflix from "notiflix";


function getModalStyle() {
  return {
    margin: "auto",
  };
}
const useStylesModal1 = makeStyles((theme) => ({
  paper: {
    position: "fixed",
    width: "80%",
    padding: theme.spacing(2, 4, 3),
  },
}));



const useStyles = makeStyles(styles);
const usesty1 = makeStyles((theme) => ({
  root: {
    width: "100%",
  },
  button: {
    marginTop: theme.spacing(1),
    marginRight: theme.spacing(1),
  },
  actionsContainer: {
    marginBottom: theme.spacing(2),
  },
  resetContainer: {
    padding: theme.spacing(3),
  },
}));

const muiTheme = createMuiTheme({
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
var rowssselected = [];
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
const columnsUsersEnrolled = [
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
        field: "Year",
        name: "year",
        label: "year",
        options: {
          filter: true,
          sort: false,
        },
      },
    
  ];
const dataschoolclass = [];
const user = [];
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
const enrolledoptions = {
  selectableRows: false,
};
function getSteps() {
  return [
    "Select a class",
    "Select a Competition",
    "Select a Language",
    "List of students which are not enrolled for the competition",
  ];
}

export default function EnrollNew(props) {
  const clss1 = usesty1();
  const classes = useStyles();
  const [activeStep, setActiveStep] = React.useState(0);
  const steps = getSteps();
  const classesM1 = useStylesModal1();
  const [modalStyle] = React.useState(getModalStyle);
  const [open, setOpen] = React.useState(false);
  const [enable, setEnable] = React.useState(true);
  const [optionschoolclass, setOptionschoolclass] = React.useState([]);
  const [optionschoolcmp, setOptionschoolcmp] = React.useState([]);
  const [optionslanguage, setOptionslanguage] = React.useState([]);
  const [userdata, setUserdata] = React.useState([
    {
      userName: "Joe James",
      loginID: "Test Corp",
      gender: "Yonkers",
      birthdate: "NY",
    },
  ]);
  const [usersEnrolled, setUsersEnrolled] = React.useState([
    {
      userName: "Joe James",
      loginID: "Test Corp",
      gender: "Yonkers",
      birthdate: "NY",
    },
  ]);
  const [schoolclass, setSchoolclass] = React.useState("");
  const [competition, setCompetition] = React.useState({
    label: "",
    value: "",
  });
  const [language, setlanguage] = React.useState({ label: "", value: "" });
  React.useEffect(() => {
    // code to run on component mount
    Notiflix.Block.Dots("body");
    var arry;
    userService.getSchoolClasses().then(
      (array2) => {
        Notiflix.Block.Remove("body");
        arry = array2;

        arry.forEach(function (element) {
          dataschoolclass.push({ label: element, value: element });
        });
        setOptionschoolclass(dataschoolclass);
      },
      (error) => {
        Notiflix.Block.Remove("body");
        this.setState({ optionschoolclass: [] });
      }
    );
  }, []);
  const getStepContent = (step) => {
    switch (step) {
      case 0:
        function onChangeSchoolClass(optionSelected) {
          if (optionSelected) {
            setSchoolclass(optionSelected.value );
            var arry;
            setCompetition({ label: "", value: "" });
            setlanguage({ label: "", value: "" });
            userService.getCmp_Names(optionSelected.value).then(
              (array2) => {
                arry = array2;
                const datacmp = [];
                arry.forEach(function (element) {
                  datacmp.push({ label: element, value: element });
                });
                setOptionschoolcmp(datacmp);
                setEnable(false);
              },
              (error) => {
                console.log(error);
                setOptionschoolcmp(
                  []
                );
                setOptionslanguage( [] );
              }
            );
          }
        }

        return (
          <GridContainer
            justify="center"
            style={{ margin: "0px", padding: "0px" }}
          >
            <GridItem
              xs={6}
              sm={12}
              md={6}
              style={{ marginRight: "0px", paddingRight: "0px" }}
            >
              <br></br>
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
                onChange={onChangeSchoolClass}
                options={optionschoolclass}
                maxMenuHeight={120}
              />
            </GridItem>

            <GridItem
              xs={12}
              sm={12}
              md={6}
              style={{ marginLeft: "0px", paddingLeft: "0px" }}
            >
              <div style={{ marginLeft: "0px" }}>
                <InfoArea
                  title=""
                  icon={WbIncandescentIcon}
                  description="Select the class of which students you want to enroll for the competition "
                  iconColor="warning"
                />
              </div>
            </GridItem>
          </GridContainer>
        );
      case 1:
          function onChangeCmp(optionSelected) {
            if (optionSelected) {
              setCompetition(optionSelected.value);
            }
            setlanguage( { label: "", value: "" } );
            var arry;
            userService
              .getLanguagesNames(schoolclass, optionSelected.value)
              .then(
                (array2) => {
                  arry = array2;
                  const datacmp = [];
                  arry.forEach(function (element) {
                    datacmp.push({ label: element, value: element });
                  });
                  setOptionslanguage( datacmp );
                  setEnable(false);
                },
                (error) => {
                  console.log(error);
                 setOptionslanguage([] );
                }
              );
          }
        return (
          <GridContainer
            justify="center"
            style={{ margin: "0px", padding: "0px" }}
          >
            <GridItem
              xs={12}
              sm={12}
              md={6}
              style={{ marginRight: "0px", paddingRight: "0px" }}
            >
              <br></br>
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
                value={competition.label}
                onChange={onChangeCmp}
                options={optionschoolcmp}
                maxMenuHeight={120}
              />
            </GridItem>
            <GridItem
              xs={12}
              sm={12}
              md={6}
              style={{ marginLeft: "0px", paddingLeft: "0px" }}
            >
              <InfoArea
                title=""
                icon={WbIncandescentIcon}
                description="Select the competition for which students want to appear "
                iconColor="warning"
              />
            </GridItem>
          </GridContainer>
        );
      case 2:
          function onChangeLanguage(optionSelected) {
            setlanguage( optionSelected.value );
            Notiflix.Block.Dots("body");
            userService.getNamesUsers(competition).then(
              (user) => {
                Notiflix.Block.Remove("body");
                setUserdata(user );
                setEnable(false);
              },
              (error) => {
                Notiflix.Block.Remove("body");
                window.location.reload(false);
        
              }
            );
          }
        return (
          <GridContainer
            justify="center"
            style={{ margin: "0px", padding: "0px" }}
          >
            <GridItem
              xs={12}
              sm={12}
              md={6}
              style={{ marginRight: "0px", paddingRight: "0px" }}
            >
              <br></br>
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
                value={language.label}
                onChange={onChangeLanguage}
                options={optionslanguage}
                maxMenuHeight={120}
              />
            </GridItem>
            <GridItem
              xs={12}
              sm={12}
              md={6}
              style={{ marginLeft: "0px", paddingLeft: "0px" }}
            >
              <InfoArea
                title=""
                icon={WbIncandescentIcon}
                description="Select the language in which students want to appear for the competition"
                iconColor="warning"
              />
            </GridItem>
          </GridContainer>
        );
      case 3:
          function registerstudent() {
            if (
              rowssselected.length === 0 
            ) {
              Notiflix.Notify.Warning(
                "Select one student from the table".toUpperCase()
              );
              return;
            }
            const datauser = [];
            for (var i in rowssselected) {
              datauser.push(userdata[rowssselected[i].index]);
            }
            const bulkuserdata = {
              classNumber: schoolclass,
              competitionName: competition,
              language: language,
              user: datauser,
            };
            userService.doBulkRegisterStudents(bulkuserdata).then(
              (user) => {
                window.location.reload();
              },
              (error) => {}
            );
          }
        return (
          <GridContainer justify="center">
            <GridItem xs={12} sm={12} md={12}>
              <MuiThemeProvider theme={muiTheme}>
                <MUIDataTable
                  title={"STUDENT LIST"}
                  data={userdata}
                  columns={columns}
                  options={options}
                />
              </MuiThemeProvider>
              
            </GridItem>
            <GridItem
              xs={12}
              sm={12}
              md={6}
              style={{ marginRight: "0px", paddingRight: "0px" }}
              
            >
            <br></br>
          <Button
          round
                style={{ backgroundColor: "#3F51B5",float:"right",width:"70%" }}
             
                onClick={registerstudent}
              >
                Enroll Students
              </Button>
              
            </GridItem>
            <GridItem
              xs={12}
              sm={12}
              md={6}
              style={{ marginLeft: "0px", paddingLeft: "0px"}}
            >
              <InfoArea
                title=""
                icon={WbIncandescentIcon}
                description="Select the students you want to enroll for the competition "
                iconColor="warning"
              />
            </GridItem>
          </GridContainer>
        );
      default:
        return "Unknown step";
    }
  };
  const handleNext = () => {
    setActiveStep((prevActiveStep) => prevActiveStep + 1);
    setEnable(true);
  };

  const handleBack = () => {
    setActiveStep((prevActiveStep) => prevActiveStep - 1);
  };
  const handleOpen = () => {
    setOpen(true);
    Notiflix.Block.Dots("body");
    userService.getAllUsersEnrolled().then(
      (user) => {
        Notiflix.Block.Remove("body");
        setUsersEnrolled(user);
      },
      (error) => {
        Notiflix.Block.Remove("body");
        console.log(error);
        if (error.response.status===401){
          window.location.reload(false);
        }
      }
    );
  };

  const handleClose = () => {
    setOpen(false);
  };

  return (
    <div>
      <GridContainer>
        <GridItem
          xs={12}
          sm={12}
          md={12}
          style={{ backgroundColor: "#0091b4", textAlign: "center" }}
        >
          <h1 className={classes.title} style={{ color: "#ffffff" }}>
            Enroll Students
          </h1>
          <br />
          <br />
          <br />
          <Tab></Tab>
        </GridItem>
      </GridContainer>

      <div
        className={classNames(classes.main, classes.mainRaised)}
        style={{ margin: "-5% 9% 0% 10%" }}
      >
        <div className={classes.container}>
          <br></br>
          <br></br>
          <GridContainer justify="center">
            <GridItem xs={12} sm={12} md={12}>
              <div>
                <Stepper
                  activeStep={activeStep}
                  nonLinear
                  orientation="vertical"
                >
                  {steps.map((label, index) => (
                    <Step key={label}>
                      <StepLabel>{label}</StepLabel>
                      <StepContent>
                        <Typography component={"div"}>
                          {getStepContent(index)}
                        </Typography>
                        <div className={clss1.actionsContainer}>
                          <div>
                            <Button
                              disabled={activeStep === 0}
                              onClick={handleBack}
                              className={clss1.button}
                            >
                              Back
                            </Button>
                            <Button
                        variant="contained"
                        onClick={handleNext}
                        className={clss1.button}
                        style={{ backgroundColor: "#3F51B5" }}
                        disabled={enable}
                      >
                        {activeStep === steps.length - 1 ? "Finish" : "Next"}
                      </Button>
                          </div>
                        </div>
                      </StepContent>
                    </Step>
                  ))}
                </Stepper>
              </div>
            </GridItem>
            <div>
              <Button
                style={{ backgroundColor: "#3F51B5" }}
                onClick={handleOpen}
              >
                View Enrolled Students
              </Button>
              <Modal
                open={open}
                onClose={handleClose}
                style={{
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "center",
                }}
              >
                <div style={modalStyle} className={classesM1.paper}>
                  <div
                    style={{ backgroundColor: "#ffffff", textAlign: "right" }}
                  >
                    <IconButton
                      key="close"
                      aria-label="Close"
                      onClick={handleClose}
                    >
                      <Close />
                    </IconButton>
                  </div>

                  <MuiThemeProvider theme={muiTheme}>
                    <MUIDataTable
                      title={"ENROLLED STUDENT LIST"}
                      data={usersEnrolled}
                      columns={columnsUsersEnrolled}
                      options={enrolledoptions}
                    />
                  </MuiThemeProvider>
                </div>
              </Modal>
            </div>
          </GridContainer>
          <br></br>
          <br></br>
        </div>
      </div>
    </div>
  );
}
