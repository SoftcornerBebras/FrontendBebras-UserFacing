import React from "react";
import "./Error404.scss";

export default class Error404 extends React.Component {
  render() {
    return (
      <div className="Error404" style={{ backgroundColor: "#FF7F2E" }}>
        <div className="text404">404</div>
        <div className="textfor404">Looks like we are lost!</div>
        <div className="container">
          <div className="caveman">
            <div className="leg">
              <div className="foot">
                <div className="fingers"></div>
              </div>
            </div>
            <div className="leg">
              <div className="foot">
                <div className="fingers"></div>
              </div>
            </div>
            <div className="shape">
              <div className="circle"></div>
              <div className="circle"></div>
            </div>
            <div className="head">
              <div className="eye">
                <div className="nose"></div>
              </div>
              <div className="mouth"></div>
            </div>
            <div className="arm-right">
              <div className="club"></div>
            </div>
          </div>

          <div className="caveman">
            <div className="leg">
              <div className="foot">
                <div className="fingers"></div>
              </div>
            </div>
            <div className="leg">
              <div className="foot">
                <div className="fingers"></div>
              </div>
            </div>
            <div className="shape">
              <div className="circle"></div>
              <div className="circle"></div>
            </div>
            <div className="head">
              <div className="eye">
                <div className="nose"></div>
              </div>
              <div className="mouth"></div>
            </div>
            <div className="arm-right">
              <div className="club"></div>
            </div>
          </div>
        </div>
        <a href="/studenthome/HomeMain">
          <div id="link" className="box__button">
            LET'S GO BACK HOME
          </div>
        </a>
      </div>
    );
  }
}
