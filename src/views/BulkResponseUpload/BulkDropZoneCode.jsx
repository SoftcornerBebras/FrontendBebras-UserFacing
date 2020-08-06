import React, { Component } from "react";
import { DropzoneArea } from "material-ui-dropzone";

class DropZoneCode extends Component {
  constructor(props) {
    super(props);
    this.state = {
      files: [],
    };
  }
  handleChange(files) {
    this.setState({
      files: files,
    });
    if (files.length !== 0) {
      this.props.onChangeFileName(files[0].name, files[0]);
    }
  }
  render() {
    return (
      <DropzoneArea
        filesLimit={1}
        showFileNames={true}
        acceptedFiles={[".xlsx", ".xlsm", "xls",".csv"]}
        useChipsForPreview={true}
        showAlerts={true}
        dropzoneText="Drag and drop the excel file on click"
        onChange={this.handleChange.bind(this)}
      />
    );
  }
}

export default DropZoneCode;
