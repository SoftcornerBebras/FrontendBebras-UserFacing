import React, { Component } from "react";
import {METABASE_URL} from '../../../services/constant'
import GridContainer from "components/Grid/GridContainer.js";

var jwt = require("jsonwebtoken");

var METABASE_SITE_URL = METABASE_URL;
var METABASE_SECRET_KEY =
"c49006ae9225bec49ad20990ea5852689c710b4f61550bfb06fa2170ff4e1476";
var userid = JSON.parse(sessionStorage.getItem("userID"));
var payload = {
  resource: { dashboard: 129 },
  params: {
    userid: userid,
  },
  // exp: Math.round(Date.now() / 1000) + (10 * 60) // 10 minute expiration
};
var token = jwt.sign(payload, METABASE_SECRET_KEY);
var iframeUrl = METABASE_SITE_URL + "/embed/dashboard/" + token + "#bordered=false&titled=false";

class UserIdRelated extends Component {
  render() {
    return (
      <div>
        <link
          href="https://fonts.googleapis.com/css?family=Righteous&display=swap"
          rel="stylesheet"
        ></link>
        <GridContainer justify="center">
          <iframe
            title="Analysis"
            src={iframeUrl}
            frameBorder={0}
            width="95%"
            height={600}
            allowtransparency="true"
          />
        </GridContainer>
      </div>
    );
  }
}

export default UserIdRelated;
