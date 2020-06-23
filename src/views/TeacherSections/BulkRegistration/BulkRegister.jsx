import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import Stepper from "@material-ui/core/Stepper";
import Step from "@material-ui/core/Step";
import StepLabel from "@material-ui/core/StepLabel";
import Button from "@material-ui/core/Button";
import Typography from "@material-ui/core/Typography";
import GetAppIcon from "@material-ui/icons/GetApp";
import DropZoneCode from "./BulkDropZoneCode";
import Grid from "@material-ui/core/Grid";
import AddCircleOutlineIcon from "@material-ui/icons/AddCircleOutline";
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import { userService } from "../../../services/user.service";
import moment from "moment-timezone";
import Excel from "exceljs";
import XLSX from "xlsx";
import Notiflix from "notiflix";
var data1 = [];
Notiflix.Notify.Init({
  width: "40%",
  position: "right-bottom", // 'right-top' - 'right-bottom' - 'left-top' - 'left-bottom'
  distance: "10px",
  opacity: 1,
  borderRadius: "5px",
  rtl: false,
  timeout: 9000,
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
const useStyles = makeStyles((theme) => ({
  root: {
    width: "100%",
    padding: "1%",
  },
  backButton: {
    marginRight: theme.spacing(1),
  },
  instructions: {
    marginBottom: theme.spacing(1),
  },
  completed: {
    display: "inline-block",
  },
}));

function getSteps() {
  return [
    "Download the template",
    "Update and upload ",
    "LoginID and passwords",
  ];
}

export default function BulkRegister() {
  const classes = useStyles();
  const [activeStep, setActiveStep] = React.useState(0);
  const [enable, setEnable] = React.useState(true);
  const steps = getSteps();
  const getStepContent = (stepIndex) => {
    switch (stepIndex) {
      case 0:
        function download() {
          Notiflix.Block.Dots("div#elements");
          var workbook = new Excel.Workbook();
          var sheet = workbook.addWorksheet("Student_Bulk_Registration");
          sheet.columns = [
            { header: "firstName", key: "firstname", width: 32 },
            { header: "lastName", key: "lastname", width: 32 },
            { header: "gender", key: "gender", width: 15 },
            { header: "birthdate", key: "DOB", width: 15 },
            { header: "phone", key: "phonenum", width: 15 },
            { header: "email", key: "email", width: 32 },
          ];

          for (var i = 2; i <= 100; i++) {
            sheet.getCell(`C${i}`).dataValidation = {
              type: "list",
              allowBlank: false,
              formulae: ['"male, female, other"'],
              operator: "notEqual",
              showErrorMessage: true,
              errorStyle: "error",
              errorTitle: "choose a gender ",
              error: "must be male, female or other",
            };
          }
          for (var j = 2; j <= 100; j++) {
            sheet.getCell(`D${j}`).dataValidation = {
              type: "text",
              showInputMessage: true,
              showErrorMessage: true,
              allowBlank: true,
              promptTitle: "Date Format",
              prompt: "Enter dd/mm/yyyy",
            };
          }

          for (var k = 2; k <= 100; k++) {
            sheet.getCell(`A${k}`).dataValidation = {
              type: "text",
              showInputMessage: true,
              showErrorMessage: true,
              allowBlank: false,
              promptTitle: "No Blank spaces allowed",
              prompt: "FirstName is Required",
            };
          }

          for (var l = 2; l <= 100; l++) {
            sheet.getCell(`B${l}`).dataValidation = {
              type: "text",
              showInputMessage: true,
              showErrorMessage: true,
              allowBlank: false,
              promptTitle: "No Blank spaces allowed",
              prompt: "LastName is Required",
            };
          }
          for (var m = 2; m <= 100; m++) {
            sheet.getCell(`E${m}`).dataValidation = {
              type: "text",
              showInputMessage: true,
              showErrorMessage: true,
              allowBlank: true,
              promptTitle: "Valid Phone Number",
              prompt:
                "Enter phone number with country code e.g +91, Note this field is optional",
            };
          }
          for (var n = 2; n <= 100; n++) {
            sheet.getCell(`F${n}`).dataValidation = {
              type: "text",
              showInputMessage: true,
              showErrorMessage: true,
              allowBlank: true,
              promptTitle: "Valid Email ID",
              prompt: "Enter Valid Email ID,Note this field is optional.",
            };
          }

          var FileSaver = require("file-saver");
          //  workbook.creator = "test";
          workbook.xlsx.writeBuffer().then(function (buffer) {
            // done
            console.log(buffer);
            const blob = new Blob([buffer], { type: "applicationi/xlsx" });
            FileSaver.saveAs(blob, "BebrasChallenge.xlsx");
          });
          setEnable(false);
          Notiflix.Block.Remove("div#elements");
        }
        return (
          <div style={{ background: "white" }}>
            .
            <center>
              <div style={{ padding: "3%" }}>
                <h3 style={{ fontWeight: "bolder" }}>
                  Download the excel template
                </h3>
                <Button
                  variant="contained"
                  color="primary"
                  id="download"
                  onClick={download}
                  startIcon={<GetAppIcon />}
                >
                  Download
                </Button>
                <p style={{ fontWeight: "bolder", margin: "7% 20% 0% 20%" }}>
                  NOTE: Please update and upload the same excel file in the next
                  step
                </p>
              </div>
            </center>
          </div>
        );
      case 1:
        var error = false;
        function handleFileNameChange(fileName, file) {
          Notiflix.Block.Dots("div#elements");
          if (fileName) {
            /* Boilerplate to set up FileReader */
            const reader = new FileReader();
            const rABS = !!reader.readAsBinaryString;
            if (rABS) {
              reader.readAsBinaryString(file);
            } else {
              reader.readAsArrayBuffer(file);
            }

            reader.onload = (e) => {
              /* Parse data */
              const bstr = e.target.result;
              const wb = XLSX.read(bstr, {
                type: rABS ? "binary" : "array",
                bookVBA: true,
                cellDates: true,
                dateNF: "yyyy/mm/dd;@",
              });
              /* Get first worksheet */
              const wsname = wb.SheetNames[0];
              const ws = wb.Sheets[wsname];
              /* Convert array of arrays */
              const data = XLSX.utils.sheet_to_json(ws, { defval: "" });
              if (data.length === 0) {
                Notiflix.Notify.Failure(
                  "You have uploaded an empty excel. Please fill and upload again.".toUpperCase()
                );
               
                Notiflix.Block.Remove("div#elements");
                return;
              }
              /* Update state */
              function replacer() {
                for (var i in data) {
                  var val = data[i];
                  for (var j in val) {
                    var sub_key = j;
                    var sub_val = val[j];
                    if (sub_key === "birthdate" && val[j]) {
                      var dateformat1 = val[j];
                      dateformat1.toString();
                      var chr = moment(dateformat1);
                      sub_val=chr.tz('Asia/Kathmandu').format("L");
                      sub_val.toString();
                      var sub_val1 = moment(sub_val).format("YYYY-MM-DD");
                      val[j] = sub_val1;
                      if (sub_val === "Invalid date") {
                        Notiflix.Notify.Failure(
                          `You have entered wrong date for ${data[i].firstName}  ${data[i].lastName}. Please fill and upload again.`.toUpperCase()
                        );
                        error = true;
                      }
                    }
                  }
                }
              }

              JSON.stringify(data, replacer, 2);
              if (error) {
                Notiflix.Block.Remove("div#elements");
                return;
              }

              sessionStorage.setItem("bulkdata", JSON.stringify(data, null, 2));

              userService.doBulkRegister().then(
                (user) => {
                  Notiflix.Block.Remove("div#elements");
                  data1 = user;
                  console.log(data1);
                  setEnable(false);
                },
                (error) => {
                  Notiflix.Block.Remove("div#elements");
                  console.log(error);
                  if (error.response.status===401){
                    window.location.reload(false);
                  }

                }
              );
            };
          }
        }
        return (
          <div style={{ background: "white" }}>
            .
            <div style={{ padding: "2% 15%" }}>
              <DropZoneCode onChangeFileName={handleFileNameChange} />
            </div>
          </div>
        );
      case 2:
        function generate_loginid_password() {
          Notiflix.Block.Dots("div#elements");
          var ws = XLSX.utils.json_to_sheet(data1);
          console.log(data1);
          var wb = XLSX.utils.book_new();
          XLSX.utils.book_append_sheet(wb, ws, "People");
          var str = XLSX.write(wb, { bookType: "xlsx", type: "binary" }); // generate a binary string in web browser
          function s2ab(s) {
            var buf = new ArrayBuffer(s.length);
            var view = new Uint8Array(buf);
            for (var i = 0; i < s.length; i++) view[i] = s.charCodeAt(i) & 0xff;
            return buf;
          }
          var FileSaver = require("file-saver");
          FileSaver.saveAs(
            new Blob([s2ab(str)], { type: "application/octet-stream" }),
            "login_password.xlsx"
          );
          setEnable(false);
          Notiflix.Block.Remove("div#elements");
        }
        return (
          <div style={{ background: "white" }}>
            .
            <div style={{ padding: "3% 15% 3% 10%" }}>
              <div>
                <Grid container spacing={3}>
                  <Grid item xs={12} sm={6}>
                    <h4 style={{ "font-weight": "bolder" }}>
                      Download the student details sheet:
                    </h4>
                  </Grid>
                  <Grid item xs={12} sm={6}>
                    <Button
                      fullWidth
                      variant="contained"
                      color="primary"
                      onClick={generate_loginid_password}
                      startIcon={<GetAppIcon />}
                    >
                      Download
                    </Button>
                  </Grid>
                </Grid>
                <Grid container spacing={3}>
                  <Grid item xs={12} sm={6}>
                    <h4 style={{ "font-weight": "bolder" }}>
                      Click to enroll students for competition:
                    </h4>
                  </Grid>
                  <Grid item xs={12} sm={6}>
                    <Button
                      fullWidth
                      variant="contained"
                      href="/teachernew/EnrollStudent"
                      startIcon={<AddCircleOutlineIcon />}
                      color="primary"
                    >
                      Enroll
                    </Button>
                  </Grid>
                </Grid>
              </div>
            </div>
          </div>
        );
      default:
        return "Unknown stepIndex";
    }
  };

  const handleNext = () => {
    setActiveStep((prevActiveStep) => prevActiveStep + 1);
    setEnable(true);
  };

  return (
    <div id="elements">
      <GridContainer justify="center">
        <GridItem xs={12} md={8}>
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
              Bulk Register Students
            </h2>
          </div>
          <div style={{ backgroundColor: "#ffffff" }}>
            <Stepper activeStep={activeStep} alternativeLabel nonLinear>
              {steps.map((label) => (
                <Step key={label}>
                  <StepLabel>{label}</StepLabel>
                </Step>
              ))}
            </Stepper>
            <center>
              <div>
                {activeStep === steps.length ? (
                  <div>
                    <Typography className={classes.instructions}>
                      All steps completed
                    </Typography>
                  </div>
                ) : (
                  <div>
                    <Typography
                      className={classes.instructions}
                      component={"div"}
                    >
                      {getStepContent(activeStep)}
                    </Typography>
                    <div>
                      <Button
                        variant="contained"
                        color="primary"
                        onClick={handleNext}
                        disabled={enable}
                      >
                        {activeStep === steps.length - 1 ? "Finish" : "Next"}
                      </Button>
                    </div>
                  </div>
                )}
              </div>
            </center>
            <br></br>
            <br></br>
            <br></br>
          </div>
        </GridItem>
      </GridContainer>
    </div>
  );
}
