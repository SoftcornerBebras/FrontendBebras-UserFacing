import React from "react";
// @material-ui/core components
import GridContainer from "components/Grid/GridContainer.js";
import GridItem from "components/Grid/GridItem.js";
import Select from "react-select";
import { userService } from "services/user.service";
import {METABASE_URL} from '../../../services/constant'
var jwt = require("jsonwebtoken");
export default class competitionRelated extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      competitionlist: [],
      selectedcompetition: "",
    };
    this.onChangeCompetition = this.onChangeCompetition.bind(this);
    this.getchart = this.getchart.bind(this);
  }

  onChangeCompetition(optionSelected) {
    if (optionSelected) {
      this.setState({ selectedcompetition: optionSelected.value });
    }
  }
  getchart() {
    var userid = JSON.parse(sessionStorage.getItem("userID"));
    var compname = this.state.selectedcompetition + "";
    var METABASE_SITE_URL = METABASE_URL;
    var METABASE_SECRET_KEY =
    "c49006ae9225bec49ad20990ea5852689c710b4f61550bfb06fa2170ff4e1476";

    var payload = {
      resource: { dashboard: 131 },
      params: {
        userid: userid,
        competitionname: compname,
      },
    };
    var token = jwt.sign(payload, METABASE_SECRET_KEY);

    var iframeUrl = METABASE_SITE_URL + "/embed/dashboard/" + token + "#bordered=false&titled=false";
    return (
      <iframe
        title="Analysis"
        src={iframeUrl}
        frameBorder={0}
        width="100%"
        height={2250}
        allowtransparency="true"
      />
    );
  }
  render() {
    return (
      <div>
        <link
          href="https://fonts.googleapis.com/css?family=Righteous&display=swap"
          rel="stylesheet"
        ></link>
       
        <GridContainer style={{ background: "white" }}>
          <GridItem style={{ margin: "1% 20%" }}>
          <h3><center>{this.state.selectedcompetition}</center></h3>
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
              onChange={this.onChangeCompetition}
              options={this.state.competitionlist}
              maxMenuHeight={70}
            />
          </GridItem>
        </GridContainer>
        <GridContainer justify="center">{this.getchart()}</GridContainer>
      </div>
    );
  }
  componentDidMount() {
    userService.getCompetitionNameAnalysisList().then(
      (user) => {
        var arr = user;
        const datacomp = [];
        arr.forEach(function (element) {
          datacomp.push({ label: element, value: element });
        });
        this.setState({ competitionlist: datacomp });
        this.setState({ selectedcompetition: datacomp[0].value });
      },
      (error) => {
        console.log(error.response.data);
        window.location.reload(false);

      }
    );
  }
}
