import React from "react";
import FormHelperText from "@material-ui/core/FormHelperText";
import FormControl from "@material-ui/core/FormControl";
import Autocomplete from "@material-ui/lab/Autocomplete";
import TextField from "@material-ui/core/TextField";

const names = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];
export default function UserPreferences(props) {
  const [classNumber, setclassNumber] = React.useState([]);
  const handleChange = (event, value) => {
    setclassNumber(value);
  };
  React.useEffect(() => {
    if (classNumber.length !== 0) {
      props.onChangeClasses(classNumber);
    }
    if ((classNumber.length === 0) & (props.classes.length !== 0)) {
      setclassNumber(props.classes);
    }
    //eslint-disable-next-line
  }, [classNumber]);
  return (
    <div>
      <FormControl variant="outlined" fullWidth required margin="normal">
        <Autocomplete
          multiple
          id="tags-outlined"
          options={names}
          value={classNumber}
          getOptionLabel={(names) => names}
          onChange={handleChange}
          filterSelectedOptions
          renderInput={(params) => (
            <TextField {...params} variant="outlined" label="Select Classes" />
          )}
        />
        {classNumber.length === 0 && (
          <FormHelperText>
            <span style={{ color: "red" }}>This is Required</span>
          </FormHelperText>
        )}
      </FormControl>
    </div>
  );
}
