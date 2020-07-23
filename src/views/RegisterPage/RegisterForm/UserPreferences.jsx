import React from "react";
import { makeStyles, useTheme } from "@material-ui/core/styles";
import FormHelperText from "@material-ui/core/FormHelperText";
import InputLabel from "@material-ui/core/InputLabel";
import MenuItem from "@material-ui/core/MenuItem";
import FormControl from "@material-ui/core/FormControl";
import Select from "@material-ui/core/Select";
import Chip from "@material-ui/core/Chip";

const useStyles = makeStyles((theme) => ({
  formControl: {
    margin: theme.spacing(1),
    minWidth: 120,
    maxWidth: 300,
  },
  chips: {
    display: "flex",
    flexWrap: "wrap",
  },
  chip: {
    margin: 2,
  },
  noLabel: {
    marginTop: theme.spacing(3),
  },
}));

const ITEM_HEIGHT = 48;
const ITEM_PADDING_TOP = 8;
const MenuProps = {
  PaperProps: {
    style: {
      maxHeight: ITEM_HEIGHT * 4.5 + ITEM_PADDING_TOP,
      width: 250,
    },
  },
};

const names = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

function getStyles(name, classNumber, theme) {
  return {
    fontWeight:
      classNumber.indexOf(name) === -1
        ? theme.typography.fontWeightRegular
        : theme.typography.fontWeightMedium,
  };
}

export default function UserPreferences(props) {
  const classes = useStyles();
  const theme = useTheme();
  const [classNumber, setclassNumber] = React.useState([]);

  const handleChange = (event) => {
    setclassNumber(event.target.value);
  };
  React.useEffect(() => {
    if(classNumber.length!==0){
      props.onChangeClasses(classNumber);
    }
    if(classNumber.length===0 & props.classes.length!==0 )
    {
      setclassNumber(props.classes)
    }
      
    
   
    //eslint-disable-next-line
  }, [classNumber]);

  return (
    <div>
      <FormControl variant="outlined" fullWidth required margin="normal">
        <InputLabel id="demo-simple-select-outlined-label">Classes</InputLabel>
        <Select
          labelId="demo-simple-select-outlined-label"
          id="demo-simple-select-outlined"
          multiple
          label="Classes"
          value={classNumber}
          onChange={handleChange}
          inputlabelprops={{
            shrink: true,
          }}
          // input={<Input id="demo-simple-select-outlined-label" />}
          renderValue={(selected) => (
            <div className={classes.chips}>
              {selected.map((value) => (
                <Chip key={value} label={value} className={classes.chip} />
              ))}
            </div>
          )}
          MenuProps={MenuProps}
        >
          {names.map((name) => (
            <MenuItem
              key={name}
              value={name}
              style={getStyles(name, classNumber, theme)}
            >
              {name}
            </MenuItem>
          ))}
        </Select>
        {classNumber.length === 0 && (
          <FormHelperText>
            <span style={{ color: "red" }}>This is Required</span>
          </FormHelperText>
        )}
      </FormControl>
    </div>
  );
}
