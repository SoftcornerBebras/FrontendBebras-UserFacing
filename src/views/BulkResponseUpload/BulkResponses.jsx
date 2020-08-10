import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import Stepper from "@material-ui/core/Stepper";
import Step from "@material-ui/core/Step";
import StepLabel from "@material-ui/core/StepLabel";
import Typography from "@material-ui/core/Typography";
import Select from "react-select";
import DropZoneCode from "./BulkDropZoneCode";
// import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Button from "@material-ui/core/Button";
import { userService } from "services/user.service";
// import moment from "moment-timezone";
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
  
    "Upload excel with student responses after selecting competition ",
    
  ];
}
const competitionlist = [];

export default function BulkResponses() {
  const classes = useStyles();
  // eslint-disable-next-line
  const [activeStep, setActiveStep] = React.useState(0);
  const [competitionNameList,setcompetitionNameList]=React.useState([]);
  const [competitionName,setCompetitionName]=React.useState("");
  const steps = getSteps();
  const getStepContent = (stepIndex) => {
    switch (stepIndex) {
     case 0:
        var error = false;
        function handleFileNameChange(fileName, file) {
          Notiflix.Block.Dots("div#elements");
          if(competitionName==="")
          {
            Notiflix.Notify.Failure(
              "You have to select one competition to proceed.".toUpperCase()
            );
            Notiflix.Block.Remove("div#elements");
            return;
          }
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
              var address_of_cell = ['A1','B1','C1','D1','E1','F1','G1','H1','I1','J1','K1','L1','M1','N1','O1','P1','Q1','R1','S1','T1','U1','V1','W1','X1','Y1','Z1'];   
              var header_names=[];
              const ws = wb.Sheets[wsname];
              /* Convert array of arrays */
              /* Find desired cell */
              for(var i=0;i<address_of_cell.length;i++)
              {
                var desired_cell = ws[address_of_cell[i]];       
                /* Get the value */
                var desired_value = (desired_cell ? desired_cell.v : undefined);
                if (desired_value!==undefined){
                  header_names.push(desired_value.toString())
                }
              }
              const data = XLSX.utils.sheet_to_json(ws, { defval: "" ,raw:true});
              if (data.length === 0) {
                Notiflix.Notify.Failure(
                  "You have uploaded an empty excel. Please fill and upload again.".toUpperCase()
                );

                Notiflix.Block.Remove("div#elements");
                return;
              }
              if (error) {
                Notiflix.Block.Remove("div#elements");
                return;
              }
              sessionStorage.setItem("headernames", JSON.stringify(header_names));
              sessionStorage.setItem("bulkresponses", JSON.stringify(data, null, 2));
              Notiflix.Block.Remove("div#elements");
            };
          }
        }
        return (
          <div style={{ background: "white" }}>
            .
            <div style={{ padding: "2% 15%" }}>
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
              placeholder="Please select competition to view further visualizations"
              onChange={onChangeCmp}
              options={competitionNameList}
              isClearable
              // maxMenuHeight={70}
            />
            <br></br>
            <br></br>
              <DropZoneCode onChangeFileName={handleFileNameChange} />
            </div>
          </div>
        );
     default:
        return "Unknown stepIndex";
    }
  };
  React.useEffect(() => {
    // code to run on component mount
    console.log("called")
    Notiflix.Block.Dots("body");
    var arry;
    userService.getActiveCompetitionList().then(
      (array2) => {
        Notiflix.Block.Remove("body");
        arry = array2;

        arry.forEach(function (element) {
          competitionlist.push({ label: element, value: element });
        });
        setcompetitionNameList(competitionlist);
      },
      (error) => {}
    );
  }, []);
  
  const onChangeCmp=(optionSelected)=> {
    if (optionSelected) {
      setCompetitionName(optionSelected.value);
      sessionStorage.setItem("competitionName", JSON.stringify(optionSelected.value));

    }
  }
  const handleValidate=()=>{
    Notiflix.Block.Dots("div#elements");
    if(competitionName==="")
    {
      Notiflix.Notify.Failure(
        "You have to select one competition to proceed.".toUpperCase()
      );
      Notiflix.Block.Remove("div#elements");
      return;
    }
    userService.dovalidateOfflineUpload().then(
      (user) => {
          data1 = user;
          console.log(data1);
        
          Notiflix.Block.Remove("div#elements");
        
      },
      (error) => {
        Notiflix.Block.Remove("div#elements");
        console.log(error);
        if (error.response.status === 400) {
          console.log(error)
          data1 = error.response.data.responses;
          var headers=error.response.data.headers;
          var ws = XLSX.utils.json_to_sheet(data1,{header: headers});
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
            "validated_bulk_upload.xlsx"
          );

        }
      }
    );
  }
  const handleSubmit=()=>{
  Notiflix.Block.Dots("div#elements");
  if(competitionName==="")
  {
    Notiflix.Notify.Failure(
      "You have to select one competition to proceed.".toUpperCase()
    );
    Notiflix.Block.Remove("div#elements");
    return;
  }
  userService.saveBulkStudentResponse().then(
    (user) => {
      Notiflix.Block.Remove("div#elements");
      data1 = user;
      console.log(data1);
    },
    (error) => {
      Notiflix.Block.Remove("div#elements");
      console.log(error);
      if (error.response.status === 401) {
        window.location.reload(false);
      }
    }
  );
}
  return (
    <div id="elements">
      {/* <br></br> */}
      <center>
      {/* <GridContainer justify="center"> */}
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
              Bulk Upload Student Responses
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
                 
                  </div>    
                )}
              </div>
              <div>
                      <Button
                        variant="contained"
                        color="primary"
                        onClick={handleValidate}
                        // disabled={enable}
                      >
                      Validate uploaded Sheet
                      </Button>
                      
                    </div>
                    <br></br>
                    <div>
                      <Button
                        variant="contained"
                        color="primary"
                        onClick={handleSubmit}
                        // disabled={enable}
                      >
                       Submit Bulk Responses
                      </Button>
                      
                    </div>
            </center>
            <br></br>
          </div>
        </GridItem>
        </center>
      {/* </GridContainer> */}
    </div>
  );
}
