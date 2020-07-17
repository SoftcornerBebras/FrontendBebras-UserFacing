import React from "react";
import { useContext } from 'react';
import PropTypes from "prop-types";
import "./pch.css";
import "./Page.css";
import Popover from '@material-ui/core/Popover';
import Typography from '@material-ui/core/Typography';
import Button from '@material-ui/core/Button';
import {ShepherdTour, ShepherdTourContext} from 'react-shepherd';
import 'shepherd.js/dist/css/shepherd.css';
import newSteps from './steps';
const tourOptions = {
  defaultStepOptions: {
    cancelIcon: {
      enabled: true
    }
  },
  useModalOverlay: true,
};
const propTypes = {
  items: PropTypes.array.isRequired,
  onChangePage: PropTypes.func.isRequired,
  initialPage: PropTypes.number,
  pageSize: PropTypes.number,
};

const defaultProps = {
  initialPage: 1,
  pageSize: 1,
};
function Content() {
  const tour = useContext(ShepherdTourContext);

  return (
    <div>
    {console.log(tour)}
    <Button
                style={{ backgroundColor: "#008FB3",color:"#ffffff" }}
                onClick={tour.start}
              >
                Start Tour
              </Button>
    </div>
  );
}
class Pagination extends React.Component {
  constructor(props) {
    super(props);
    this.state = { pager: {},
    openpop:true,
    };
    // var anchorEl=null;
    this.handleClose=this.handleClose.bind(this);
  }
  handleTouchTap = (event) => {
// This prevents ghost click.
    event.preventDefault();

    this.setState({
      openpop: false,
      anchorEl: event.currentTarget,
     });
    };
    
    clickHandle = () => {
    	this.handleRequestClose();
    };
    
    handleRequestClose = () => {
      this.setState({
        openpop: false,
      });
    };
handleClose(){
  this.setState({anchorEl:null});
  this.setState({openpop:false});
  };
  UNSAFE_componentWillMount() {
    // set page if items array isn't empty
    if (this.props.items && this.props.items.length) {
      this.setPage(this.props.initialPage);
    }
  }

  componentDidUpdate(prevProps, prevState) {
    // reset page if items array has changed
    if (this.props.items !== prevProps.items) {
      this.setPage(this.props.initialPage);
    }
  }

  setPage(page) {
    var { items, pageSize } = this.props;
    var pager = this.state.pager;

    if (page < 1 || page > pager.totalPages) {
      return;
    }

    // get new pager object for specified page
    pager = this.getPager(items.length, page, pageSize);

    // get new page of items from items array
    var pageOfItems = items.slice(pager.startIndex, pager.endIndex + 1);

    // update state
    this.setState({ pager: pager });

    // call change page function in parent component
    this.props.onChangePage(pageOfItems);
  }

  getPager(totalItems, currentPage, pageSize) {
    // default to first page
    currentPage = currentPage || 1;

    // default page size is 10
    pageSize = pageSize || 10;

    // calculate total pages
    var totalPages = Math.ceil(totalItems / pageSize);

    var startPage, endPage;
    if (totalPages <= 10) {
      // less than 10 total pages so show all
      startPage = 1;
      endPage = totalPages;
    } else {
      // more than 10 total pages so calculate start and end pages
      if (currentPage <= 6) {
        startPage = 1;
        endPage = 10;
      } else if (currentPage + 4 >= totalPages) {
        startPage = totalPages - 9;
        endPage = totalPages;
      } else {
        startPage = currentPage - 5;
        endPage = currentPage + 4;
      }
    }

    // calculate start and end item indexes
    var startIndex = (currentPage - 1) * pageSize;
    var endIndex = Math.min(startIndex + pageSize - 1, totalItems - 1);

    // create an array of pages to ng-repeat in the pager control
    var pages = [...Array(endPage + 1 - startPage).keys()].map(
      (i) => startPage + i
    );

    // return object with all pager properties required by the view
    return {
      totalItems: totalItems,
      currentPage: currentPage,
      pageSize: pageSize,
      totalPages: totalPages,
      startPage: startPage,
      endPage: endPage,
      startIndex: startIndex,
      endIndex: endIndex,
      pages: pages,
    };
  }

  render() {
    var pager = this.state.pager;

    if (!pager.pages || pager.pages.length <= 1) {
      // don't display pager if there is only 1 page
      return null;
    }

    return (
      <div>
        <center>
          <ul className="pagination">
            <li className={pager.currentPage === 1 ? "disabled" : ""}>
              <a
                href="/#"
                onClick={(e) => {
                  e.preventDefault();
                  this.setPage(1);
                }}
                className="step1"
              >
                First
              </a>
            </li>
            <li className={pager.currentPage === 1 ? "disabled" : ""}>
              <a
                href="/#"
                onClick={(e) => {
                  e.preventDefault();
                  this.setPage(pager.currentPage - 1);
                }}
                className="step2"
              >
                Previous
              </a>
            </li>
            {pager.pages.map((page, index) => (
              <li
                key={index}
                className={pager.currentPage === page ? "active" : ""}
              >
                <a
                  href="/#"
                  onClick={(e) => {
                    e.preventDefault();
                    this.setPage(page);
                  }}
                  className="step3"
                >
                  {page}
                </a>
              </li>
            ))}
            <li
              className={
                pager.currentPage === pager.totalPages ? "disabled" : ""
              }
            >
              <a
                href="/#"
                onClick={(e) => {
                  e.preventDefault();
                  this.setPage(pager.currentPage + 1);
                }}
                className="step4"
              >
                Next
              </a>
            </li>
            <li
              className={
                pager.currentPage === pager.totalPages ? "disabled" : ""
              }
            >
              <a
                href="/#"
                onClick={(e) => {
                  e.preventDefault();
                  this.setPage(pager.totalPages);
                }}
                className="step5"
              >
                Last
              </a>
            </li>
          </ul>

          <Popover
          open={this.state.openpop}
            onRequestClose={this.handleRequestClose}
        anchorEl={this.anchorEl}
        onClose={this.handleClose}
        anchorOrigin={{
          vertical: 'top',
          horizontal: 'center',
        }}
        transformOrigin={{
          vertical: 'top',
          horizontal: 'center',
        }}
        PaperProps={{
              style: {
                marginTop: "50px",
                padding:"20px",

              }
            }}
      >
        <Typography >Let's take a tour of the page!</Typography>
        <Typography >Click anywhere on the page if you don't want to!</Typography>
        <br></br>
                  <ShepherdTour steps={newSteps} tourOptions={tourOptions}>
          <Content />
        </ShepherdTour>
      </Popover>
        </center>
      </div>
    );
  }
}

Pagination.propTypes = propTypes;
Pagination.defaultProps = defaultProps;

export default Pagination;
