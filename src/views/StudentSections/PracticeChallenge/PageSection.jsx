import React from "react";
import Pagination from "./Pagination";
import AlertDialog from "./EndTestButton";
import GeneralQuestion from "./GeneralQuestion";
import "./pch.css";
import "./Page.css";
var pagenumber = 0;
class Page extends React.Component {
  constructor(props) {
    super(props);

    // an example array of items to be paged
    var exampleItems = [];
    this.state = {
      data: this.props.data.location.state.data,
      exampleItems: exampleItems,
      pageOfItems: [],
      status: {
        solved: [],
        marks: [],
        Incorrectmarks: [],
        total: this.props.data.location.state.data.length,
        correct: [],
      },
      questions: this.props.data.location.state.data,
      componentsarr: [],
    };
    var solved = [];
    var marks = [];
    var Incorrect_marks = [];
    var correct = [];
    for (var i = 0; i < this.state.questions.length; i++) {
      solved.push({
        id: props.data.location.state.data[i].identifier,
        name: false,
      });
      marks.push({
        id: props.data.location.state.data[i].identifier,
        name: props.data.location.state.data[i].Correct_marks,
      });
      Incorrect_marks.push({
        id: props.data.location.state.data[i].identifier,
        name: props.data.location.state.data[i].Incorrect_marks,
      });
      correct.push({
        id: props.data.location.state.data[i].identifier,
        name: false,
      });
    }
    this.state.status.solved = solved;
    this.state.status.marks = marks;
    this.state.status.correct = correct;
    this.state.status.Incorrectmarks = Incorrect_marks;
    for (i = 0; i < this.state.questions.length; i++) {
      var temp = { questionsren: [props.data.location.state.data[i], i] };
      this.state.componentsarr[i] = (
        <GeneralQuestion
          state={temp}
          status={this.state.status}
          onChangeStat={this.onChangeStatus}
        />
      );
    }

    for (i = 1; i < this.state.componentsarr.length + 1; i++) {
      this.state.exampleItems.push({
        id: i,
        name: this.state.componentsarr[i - 1],
      });
    }
    this.onChangePage = this.onChangePage.bind(this);
  }
  onChangeStatus = (statu) => {
    this.setState({ status: statu });
  };
  onChangePage(pageOfItems) {
    // update state with new page of items
    this.setState({ pageOfItems: pageOfItems });
  }
  changePageNumber = (item) => {
    pagenumber = item;
  };
  componentDidMount() {
    window.addEventListener("popstate", () => {
      window.history.go(1);
    });
  }
  render() {
    return (
      <div className="whitebg" style={{ marginTop: "-5%" }}>
        <title>Bebras </title>
        <meta charSet="UTF-8"></meta>

        <link
          href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900%7CPacifico"
          rel="stylesheet"
          type="text/css"
        />
        <link
          rel="stylesheet"
          href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
        />
        <div></div>
        <div className="text-center">
          {this.state.pageOfItems.map((item, index) => (
            <div key={item.id}>
              {item.name}
              <div>
                {this.state.componentsarr.map((block) => block.component)}
                {this.changePageNumber(item.id)}
              </div>
            </div>
          ))}

          <Pagination
            items={this.state.exampleItems}
            state={this.myRef}
            onChangePage={this.onChangePage}
          />

          {pagenumber === this.state.componentsarr.length && (
            <AlertDialog status={this.state.status} />
          )}
        </div>
      </div>
    );
  }
}

export default Page;
