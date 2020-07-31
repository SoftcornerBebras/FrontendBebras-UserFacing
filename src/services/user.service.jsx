import { Login } from "./constant.jsx";
import {
  schoolTypes,
  SaveStudentExcelResponse,
  genderoptions,
  SchoolTopperCertificates,
  CompetitionListforCertificate,
  FetchCertificate,
  ParticipationCertificates,
  ParticipationCertificatesforStudentPortal,
  DeleteFiles,
  Certificatesforselectedstudents,
  CompetitionNameAnalysisList,
  agegrouptoppers,
  PracticeChallengeList,
  PracticeChallengeQues,
  calcTotalScore,
  SavedStudentResponse,
  schoolGroupNames,
  getLanguages,
  CompetitionStudentResponse,
  CompetitionResultList,
  CompetitionNameResultList,
  CompetitionList,
  ActiveCompetitionList,
  CompetitionQues,
  UserResult,
  AllUsersResults,
  AllUsersEnrolled,
  StudentDataExcel,
  ContactUsMail,
  Register,
  ResetPasswordViewurl,
  ConfirmResetPasswordViewurl,
  BulkRegisterStudents,
  BulkRegister,
  getUsers,
  Cmp_Names,
  SchoolClasses,
  RegisterSchool,
  TeacherRegister,
  CountryNames,
  StateNames,
  DistrictNames,
  RegisterStudent,
} from "./constant.jsx";
import { Logout } from "./constant.jsx";
import Axios from "axios";
import Notiflix from "notiflix";
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
  svgColor: "#FFFFFF",
  messageFontSize: "24px",
  messageMaxLength: 34,
  messageColor: "#FFFFFF",
});
Notiflix.Notify.Init({
  width: "40%",
  position: "left-bottom",
  distance: "10px",
  opacity: 1,
  borderRadius: "5px",
  rtl: false,
  timeout: 3000,
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
  textTransform: "uppercase",
  fontFamily: "Quicksand",
  fontSize: "13px",
  cssAnimation: true,
  cssAnimationDuration: 10000,
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
});

export const userService = {
  login,
  getschoolTypes,
  getgenderoptions,
  saveBulkStudentResponse,
  askcalcTotalScore,
  getAgeGroupToppers,
  getPracticeChallengeList,
  getPracticeChallengeQues,
  getLanguagesNames,
  getschoolGroupNames,
  getActiveCompetitionList,
  logout,
  logoutStudent,
  getStudentDataExcel,
  register,
  doBulkRegisterStudents,
  doBulkRegister,
  registerSchool,
  registerStudent,
  registerTeacher,
  getCountryNames,
  getCmp_Names,
  getStateNames,
  getDistrictNames,
  getNamesUsers,
  getSchoolClasses,
  ResetPasswordView,
  ConfirmResetPasswordView,
  contactUs,
  getUserResult,
  getAllUsersEnrolled,
  getAllUsersResults,
  getCompetitionList,
  getCompetitionListforCertificate,
  downloadSchoolTopperCertificate,
  downloadCertificate,
  getCompetitionQues,
  getCompetitionNameResultList,
  getCompetitionNameAnalysisList,
  getCompetitionResult,
  doCompetitionStudentResponse,
  getSavedStudentResponse,
  downloadCertificateforStudents,
  downloadCertificatebyStudents,
};
function getgenderoptions() {
  try {
    return Axios({
      url: `${genderoptions}`,
      method: "get",
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.gender;
      })
      .catch((err) => {
        console.log(err);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getschoolTypes() {
  try {
    return Axios({
      url: `${schoolTypes}`,
      method: "get",
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.schooltypenames;
      })
      .catch((err) => {
        console.log(err);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function downloadCertificateforStudents(data) {
  Notiflix.Block.Dots("body");
  var path = null;
  Axios({
    method: "post",
    url: `${Certificatesforselectedstudents}`,
    data: {
      users: data,
    },
    headers: {
      Authorization: "Token " + sessionStorage.getItem("teachertoken"),
      "content-type": "application/json",
    },
  })
    .then((response) => {
      path = response.data.path;
      sleep(5000).then(() => {
        fetch(`${FetchCertificate}`, {})
          .then((response) => {
            response.blob().then((blob) => {
              let url = window.URL.createObjectURL(blob);
              let a = document.createElement("a");
              a.href = url;
              a.download = "BebrasCertificate.zip";
              a.click();
              Notiflix.Block.Remove("body");
              Axios({
                method: "post",
                url: `${DeleteFiles}`,
                data: {
                  path: path,
                  CertificateType: "participation",
                },
              })
                .then((response) => {
                  console.log("Deleted");
                  Notiflix.Block.Remove("body");
                })
                .catch((error) => {
                  Notiflix.Block.Remove("body");
                  Notiflix.Notify.Failure(
                    `${error.response.data}`.toUpperCase()
                  );
                  console.log(error);
                });
            });
          })
          .catch((error) => {
            Notiflix.Block.Remove("body");
            Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
          });
      });
    })
    .catch((error) => {
      //handle error
      Notiflix.Block.Remove("body");
      if (error.response.status === 401) {
        Notiflix.Notify.Failure(
          `${error.response.statusText} Request,Please login`.toUpperCase()
        );
        sessionStorage.clear();
      } else {
        Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
      }
      console.log(error);
    });
}
function downloadCertificatebyStudents(data) {
  var path = null;
  Notiflix.Block.Dots("body");
  Axios({
    method: "post",
    url: `${ParticipationCertificatesforStudentPortal}`,
    data: {
      competitionName: data,
    },
    headers: {
      Authorization: "Token " + sessionStorage.getItem("studenttoken"),
      "content-type": "application/json",
    },
  })
    .then((response) => {
      path = response.data.path;
      sleep(5000).then(() => {
        fetch(`${FetchCertificate}`, {})
          .then((response) => {
            response.blob().then((blob) => {
              let url = window.URL.createObjectURL(blob);
              let a = document.createElement("a");
              a.href = url;
              a.download = "BebrasCertificate.zip";
              a.click();
              console.log("Successful");
              Notiflix.Block.Remove("body");

              Axios({
                method: "post",
                url: `${DeleteFiles}`,
                data: {
                  path: path,
                  CertificateType: "participation",
                },
              })
                .then((response) => {
                  console.log("Deleted");
                  Notiflix.Block.Remove("body");
                })
                .catch((error) => {
                  Notiflix.Block.Remove("body");
                  if (error.response.status === 401) {
                    Notiflix.Notify.Failure(
                      `${error.response.statusText} Request,Please login`.toUpperCase()
                    );
                    sessionStorage.clear();
                  } else {
                    Notiflix.Notify.Failure(
                      `${error.response.data}`.toUpperCase()
                    );
                  }
                });
            });
          })
          .catch((error) => {
            Notiflix.Block.Remove("body");
            Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
          });
      });
    })
    .catch((error) => {
      Notiflix.Block.Remove("body");
      Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());

      console.log(error);
    });
}
function downloadCertificate(class_id, competitionName) {
  Notiflix.Block.Dots("body");
  var path = null;
  Axios({
    method: "post",
    url: `${ParticipationCertificates}`,
    data: {
      cmpName: competitionName,
      class_id: class_id,
    },
    headers: {
      Authorization: "Token " + sessionStorage.getItem("teachertoken"),
      "content-type": "application/json",
    },
  })
    .then((response) => {
      path = response.data.path;
      sleep(5000).then(() => {
        fetch(`${FetchCertificate}`, {})
          .then((response) => {
            response.blob().then((blob) => {
              let url = window.URL.createObjectURL(blob);
              let a = document.createElement("a");
              a.href = url;
              a.download = "BebrasCertificate.zip";
              a.click();
              console.log("Successful");
              Notiflix.Block.Remove("body");

              Axios({
                method: "post",
                url: `${DeleteFiles}`,
                data: {
                  path: path,
                  CertificateType: "participation",
                },
              })
                .then((response) => {
                  console.log("Deleted");
                  Notiflix.Block.Remove("body");
                })
                .catch((error) => {
                  Notiflix.Block.Remove("body");
                  Notiflix.Notify.Failure(
                    `${error.response.data}`.toUpperCase()
                  );

                  console.log(error);
                });
            });
          })
          .catch((error) => {
            Notiflix.Block.Remove("body");
            Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
          });
      });
    })
    .catch((error) => {
      //handle error
      Notiflix.Block.Remove("body");
      console.log(error.response.data);
      if (error.response.status === 401) {
        Notiflix.Notify.Failure(
          `${error.response.statusText} Request,Please login`.toUpperCase()
        );
        sessionStorage.clear();
      } else {
        Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
      }
    });
}
function downloadSchoolTopperCertificate(class_id, competitionName) {
  Notiflix.Block.Dots("body");
  var path = null;
  Axios({
    method: "post",
    url: `${SchoolTopperCertificates}`,
    data: {
      cmpName: competitionName,
      class_id: class_id,
    },
    headers: {
      Authorization: "Token " + sessionStorage.getItem("teachertoken"),
      "content-type": "application/json",
    },
  })
    .then((response) => {
      path = response.data.path;
      sleep(5000).then(() => {
        fetch(`${FetchCertificate}`)
          .then((response) => {
            response.blob().then((blob) => {
              let url = window.URL.createObjectURL(blob);
              let a = document.createElement("a");
              a.href = url;
              a.download = "BebrasCertificate.zip";
              a.click();
              Notiflix.Block.Remove("body");
              console.log("Successful");
              Axios({
                method: "post",
                url: `${DeleteFiles}`,
                data: {
                  path: path,
                  CertificateType: "schoolToppers",
                },
              })
                .then((response) => {
                  console.log("Deleted");
                  Notiflix.Block.Remove("body");
                })
                .catch((error) => {
                  Notiflix.Notify.Failure(
                    `${error.response.data}`.toUpperCase()
                  );

                  Notiflix.Block.Remove("body");
                  console.log(error);
                });
            });
          })
          .catch((error) => {
            console.log(error);
            Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());

            Notiflix.Block.Remove("body");
          });
      });
    })
    .catch((error) => {
      //handle error
      Notiflix.Block.Remove("body");
      if (error.response.status === 401) {
        Notiflix.Notify.Failure(
          `${error.response.statusText} Request,Please login`.toUpperCase()
        );
        sessionStorage.clear();
      } else {
        Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
      }

      console.log(error);
    });
}
function getAgeGroupToppers() {
  try {
    return Axios({
      url: `${agegrouptoppers}`,
      method: "get",
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data);
        return respons.data;
      })
      .catch((err) => {
        console.log(err.response);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        throw err;
      });
  } catch (error) {
    Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
    throw error;
  }
}
function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}
function getPracticeChallengeList() {
  try {
    return Axios({
      url: `${PracticeChallengeList}`,
      method: "get",
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data.PracticeChallenges);
        return respons.data.PracticeChallenges;
      })
      .catch((err) => {
        console.log(err.response);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        throw err;
      });
  } catch (error) {
    Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
    throw error;
  }
}
function getPracticeChallengeQues(AgeGroupName) {
  try {
    return Axios({
      url: `${PracticeChallengeQues}`,
      method: "post",
      data: {
        AgeGroupName: AgeGroupName,
      },
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data);
        return respons.data.questions;
      })
      .catch((err) => {
        console.log(err.response);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function askcalcTotalScore(studentEnrollmentID) {
  try {
    return Axios({
      url: `${calcTotalScore}`,
      method: "post",
      data: {
        studentEnrollmentID: studentEnrollmentID,
      },
      headers: {
        Authorization: "Token " + sessionStorage.getItem("studenttoken"),

        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data);
        sessionStorage.removeItem("datastudentresponse");
        return respons.data;
      })
      .catch((err) => {
        console.log(err.response);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getLanguagesNames(class_id, competitionName) {
  try {
    return Axios({
      url: `${getLanguages}`,
      method: "post",
      data: {
        competitionName: competitionName,
        class_id: class_id,
      },
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),

        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.languages;
      })
      .catch((err) => {
        console.log(err.response.data);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getSavedStudentResponse(studentresponse) {
  try {
    return Axios({
      url: `${SavedStudentResponse}`,
      method: "post",
      data: studentresponse,
      headers: {
        Authorization: "Token " + sessionStorage.getItem("studenttoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data;
      })
      .catch((err) => {
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function doCompetitionStudentResponse() {
  try {
    return Axios({
      url: `${CompetitionStudentResponse}`,
      method: "post",
      data: sessionStorage.getItem("datastudentresponse"),
      headers: {
        Authorization: "Token " + sessionStorage.getItem("studenttoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
      })
      .catch((err) => {
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getCompetitionResult(competitionname) {
  try {
    return Axios({
      url: `${CompetitionResultList}`,
      method: "post",
      data: {
        competitionName: competitionname,
      },
      headers: {
        Authorization: "Token " + sessionStorage.getItem("studenttoken"),

        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data);
        return respons.data;
      })
      .catch((err) => {
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getCompetitionNameResultList() {
  try {
    return Axios({
      url: `${CompetitionNameResultList}`,
      method: "get",
      headers: {
        Authorization: "Token " + sessionStorage.getItem("studenttoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data.competitionnames);
        return respons.data.competitionnames;
      })
      .catch((err) => {
        if (err.response.status === 401) {
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getCompetitionNameAnalysisList() {
  try {
    return Axios({
      url: `${CompetitionNameAnalysisList}`,
      method: "get",
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data.competitionnames);
        return respons.data.competitionnames;
      })
      .catch((err) => {
        console.log(err.response);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getCompetitionQues(competitionname) {
  try {
    return Axios({
      url: `${CompetitionQues}`,
      method: "post",
      data: {
        competitionName: competitionname,
      },
      headers: {
        Authorization: "Token " + sessionStorage.getItem("studenttoken"),

        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        console.log(respons.data);
        return respons.data;
      })
      .catch((err) => {
        console.log(err.response);
        if (err.response.status === 401) {
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getCompetitionList() {
  try {
    return Axios({
      url: `${CompetitionList}`,
      method: "get",
      headers: {
        Authorization: "Token " + sessionStorage.getItem("studenttoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data.competitionnames);
        return respons.data.competitionnames;
      })
      .catch((err) => {
        console.log(err.response);
        if (err.response.status === 401) {
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getActiveCompetitionList() {
  try {
    return Axios({
      url: `${ActiveCompetitionList}`,
      method: "get",
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data.competitionnames);
        return respons.data.competitionnames;
      })
      .catch((err) => {
        console.log(err.response);
        if (err.response.status === 401) {
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}

function getUserResult() {
  try {
    return Axios({
      url: `${UserResult}`,
      method: "get",
      headers: {
        Authorization: "Token " + sessionStorage.getItem("studenttoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data);
        return respons.data;
      })
      .catch((err) => {
        console.log(err.response);
        console.log(err.response.statusText);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getAllUsersResults() {
  try {
    return Axios({
      url: `${AllUsersResults}`,
      method: "get",
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data);
        return respons.data;
      })
      .catch((err) => {
        console.log(err.response);
        console.log(err.response.statusText);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getAllUsersEnrolled() {
  try {
    return Axios({
      url: `${AllUsersEnrolled}`,
      method: "get",
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data);
        return respons.data;
      })
      .catch((err) => {
        console.log(err.response);
        console.log(err.response.statusText);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }

        throw err;
      });
  } catch (error) {
    throw error;
  }
}

function contactUs(name, email, subject, message) {
  try {
    return Axios({
      url: `${ContactUsMail}`,
      method: "post",
      data: {
        name: name,
        email: email,
        subject: subject,
        message: message,
      },
    })
      .then((respons) => {
        console.log(respons.data);
        Notiflix.Notify.Success(`${respons.data}`.toUpperCase());
        return respons.data;
      })
      .catch((error) => {
        console.log(error);
        console.log(error.response.data);
        console.log(error.response.status);
        Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());

        throw error;
      });
  } catch (error) {
    throw error;
  }
}
function ResetPasswordView(data) {
  try {
    Notiflix.Block.Dots("body");
    return Axios({
      url: `${ResetPasswordViewurl}`,
      method: "post",
      data: {
        loginID: data,
      },
    })
      .then((respons) => {
        console.log(respons.data);
        localStorage.setItem("uid", respons.data.uidb64);
        localStorage.setItem("token", respons.data.token);
        Notiflix.Block.Remove("body");

        Notiflix.Notify.Success(`${respons.data.response}`.toUpperCase());

        return respons.data;
      })
      .catch((error) => {
        console.log(error.response.data);

        Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
        Notiflix.Block.Remove("body");

        throw error;
      });
  } catch (error) {
    throw error;
  }
}

function ConfirmResetPasswordView(password, uidb64, token) {
  try {
    return Axios({
      url: `${ConfirmResetPasswordViewurl}`,
      method: "post",
      data: {
        password: password,
        uidb64: uidb64,
        token: token,
      },
    })
      .then((respons) => {
        console.log(
          sessionStorage.getItem("uid") +
            "anandnd" +
            sessionStorage.getItem("token")
        );
        console.log(respons.data);

        Notiflix.Notify.Success(`Password Change Succesful`.toUpperCase());

        sessionStorage.clear();
        return respons.data;
      })
      .catch((error) => {
        console.log(error.response.data);

        Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());

        throw error;
      });
  } catch (error) {
    throw error;
  }
}

function getStudentDataExcel() {
  try {
    return Axios({
      url: `${StudentDataExcel}`,
      method: "get",
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data.users);
        return respons.data.users;
      })
      .catch((err) => {
        console.log(err.response);
        console.log(err.response.statusText);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function doBulkRegisterStudents(bulkdata) {
  try {
    Notiflix.Block.Dots("body");
    return Axios({
      url: `${BulkRegisterStudents}`,
      method: "post",
      data: bulkdata,
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        Notiflix.Block.Remove("body");
        console.log(respons.data);
        Notiflix.Notify.Success(
          `Student enrollment succesfull! `.toUpperCase()
        );
        return respons.data;
      })
      .catch((error) => {
        Notiflix.Block.Remove("body");
        console.log(error.response.data);

        if (error.response.statusText === 401) {
          Notiflix.Notify.Failure(`${error.response.statusText}`.toUpperCase());
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
        }

        throw error;
      });
  } catch (error) {
    Notiflix.Block.Remove("body");
    throw error;
  }
}
function doBulkRegister() {
  try {
    Notiflix.Block.Dots("body");
    return Axios({
      url: `${BulkRegister}`,
      method: "post",
      data: sessionStorage.getItem("bulkdata"),
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        Notiflix.Block.Remove("body");
        console.log(respons.data);
        Notiflix.Notify.Success(
          `Student registration Succesful! `.toUpperCase()
        );

        return respons.data;
      })
      .catch((error) => {
        Notiflix.Block.Remove("body");
        console.log(error.response.data);
        console.log(error.response.status);
        if (error.response.status === 401) {
          Notiflix.Notify.Failure(
            `${error.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
        }
        throw error;
      });
  } catch (error) {
    Notiflix.Block.Remove("body");

    throw error;
  }
}
function saveBulkStudentResponse() {
  try {
    Notiflix.Block.Dots("body");

    return Axios({
      url: `${SaveStudentExcelResponse}`,
      method: "post",
      data: {"responses":JSON.parse(sessionStorage.getItem("bulkresponses")),"competitionName":JSON.parse(sessionStorage.getItem("competitionName"))},
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        Notiflix.Block.Remove("body");
        console.log(respons.data);
        Notiflix.Notify.Success(
          `Student Responses Added Succesfully! `.toUpperCase()
        );

        return respons.data;
      })
      .catch((error) => {
        Notiflix.Block.Remove("body");
        console.log(error.response.data);
        console.log(error.response.status);
        if (error.response.status === 401) {
          Notiflix.Notify.Failure(
            `${error.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
        }
        throw error;
      });
  } catch (error) {
    Notiflix.Block.Remove("body");

    throw error;
  }
}
function getNamesUsers(competitionName) {
  try {
    return Axios({
      url: `${getUsers}`,
      method: "post",
      data: {
        competitionName: competitionName,
      },
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons.data.users);
        return respons.data.users;
      })
      .catch((err) => {
        console.log(err.response);
        console.log(err.response.statusText);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getCmp_Names(class_id) {
  try {
    return Axios({
      url: `${Cmp_Names}`,
      method: "post",
      data: {
        class_id: class_id,
      },
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),

        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.cmp_names;
      })
      .catch((err) => {
        console.log(err.response.data);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getCompetitionListforCertificate(class_id) {
  try {
    return Axios({
      url: `${CompetitionListforCertificate}`,
      method: "post",
      data: {
        class_id: class_id,
      },
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),

        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.cmp_names;
      })
      .catch((err) => {
        console.log(err.response.data);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function registerStudent() {
  try {
    return Axios({
      url: `${RegisterStudent}`,
      method: "post",
      data: sessionStorage.getItem("registerstudent"),
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        Notiflix.Report.Success(
          "Student registration Succesful!",
          `loginID    :${respons.data.loginID}<br></br> password:${respons.data.password}`,
          "Close"
        );
        sessionStorage.removeItem("registerstudent");
      })
      .catch((error) => {
        console.log(error);

        console.log(error.response.data);
        if (error.response.status === 401) {
          Notiflix.Notify.Failure(
            `${error.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
        }

        throw error;
      });
  } catch (error) {
    throw error;
  }
}
function register() {
  try {
    Notiflix.Block.Dots("body");
    return Axios({
      url: `${Register}`,
      method: "post",
      data: sessionStorage.getItem("registeruser"),
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        Notiflix.Block.Remove("body");
        console.log(respons);
        Notiflix.Notify.Success(`User registration Succesful!`.toUpperCase());
        sessionStorage.removeItem("registeruser");
      })
      .catch((error) => {
        Notiflix.Block.Remove("body");

        console.log(error.response.data);
        Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());

        throw error;
      });
  } catch (error) {
    Notiflix.Block.Remove("body");
    throw error;
  }
}
function registerTeacher() {
  try {
    return Axios({
      url: `${TeacherRegister}`,
      method: "post",
      data: sessionStorage.getItem("registerteacher"),
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        Notiflix.Notify.Success(
          `Teacher registration Succesful!`.toUpperCase()
        );
        sessionStorage.removeItem("registerteacher");
      })
      .catch((error) => {
        console.log(error.response.data);
        if (error.response.status === 401) {
          Notiflix.Notify.Failure(
            `${error.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${error.response.data}`.toUpperCase());
        }
        throw error;
      });
  } catch (error) {
    throw error;
  }
}
function getDistrictNames(states) {
  try {
    return Axios({
      url: `${DistrictNames}`,
      method: "post",
      data: {
        state: states,
      },
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.districts;
      })
      .catch((err) => {
        console.log(err);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getStateNames(country) {
  try {
    return Axios({
      url: `${StateNames}`,
      method: "post",
      data: {
        country: country,
      },
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.states;
      })
      .catch((err) => {
        console.log(err);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getschoolGroupNames() {
  try {
    return Axios({
      url: `${schoolGroupNames}`,
      method: "get",
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.schoolGroups;
      })
      .catch((err) => {
        console.log(err);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function getCountryNames() {
  try {
    return Axios({
      url: `${CountryNames}`,
      method: "get",
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.countries;
      })
      .catch((err) => {
        console.log(err);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());

        throw err;
      });
  } catch (error) {
    throw error;
  }
}

function registerSchool() {
  try {
    Notiflix.Block.Dots("body");
    return Axios({
      url: `${RegisterSchool}`,
      method: "post",
      data: sessionStorage.getItem("registerschool"),
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        Notiflix.Block.Remove("body");
        console.log(respons.data);
        Notiflix.Notify.Success(
          `School registration Succesful,Click Continue Register as Coordinator`.toUpperCase()
        );
        sessionStorage.removeItem("registerschool");
        return respons.data.school;
      })
      .catch((err) => {
        console.log(err);
        Notiflix.Block.Remove("body");
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        throw err;
      });
  } catch (error) {
    Notiflix.Block.Remove("body");
    throw error;
  }
}
function login(userName, password) {
  try {
    return Axios({
      url: `${Login}`,
      method: "post",
      data: {
        loginID: userName,
        password: password,
      },
      headers: {
        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        const token = respons.data.token;

        sessionStorage.setItem("user", JSON.stringify(respons.data.user));
        sessionStorage.setItem(
          "loginID",
          JSON.stringify(respons.data.user.loginID)
        );
        sessionStorage.setItem(
          "userID",
          JSON.stringify(respons.data.user.userID)
        );
        if (respons.data.userrole === "Coordinator") {
          sessionStorage.setItem("teachertoken", token);
        } else {
          sessionStorage.setItem("studenttoken", token);
        }
        Notiflix.Notify.Success("User logged in succesfully".toUpperCase());

        return respons.data.userrole;
      })
      .catch((err) => {
        console.log(err.response);
        Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());

        throw err;
      });
  } catch (error) {
    throw error;
  }
}
function logout() {
  // remove user from local storage to log user out
  Notiflix.Block.Dots("body");
  try {
    return Axios({
      url: `${Logout}`,
      method: "post",
      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),

        "content-type": "application/json",
      },
    })
      .then((respons) => {
        Notiflix.Block.Remove("body");
        console.log(respons);
        Notiflix.Notify.Success(`User logged out succesfully`.toUpperCase());
      })
      .catch((err) => {
        Notiflix.Block.Remove("body");
        console.log(err);
        Notiflix.Notify.Failure(
          `${err.response.statusText} Request,Please login`.toUpperCase()
        );

        throw err;
      });
  } catch (error) {
    Notiflix.Block.Remove("body");
    throw error;
  }
}
function logoutStudent() {
  // remove user from local storage to log user out
  Notiflix.Block.Dots("body");
  try {
    return Axios({
      url: `${Logout}`,
      method: "post",

      headers: {
        Authorization: "Token " + sessionStorage.getItem("studenttoken"),

        "content-type": "application/json",
      },
    })
      .then((respons) => {
        Notiflix.Block.Remove("body");
        console.log(respons);
        Notiflix.Notify.Success(`User logged out succesfully`.toUpperCase());
      })
      .catch((err) => {
        Notiflix.Block.Remove("body");
        console.log(err);
        Notiflix.Notify.Failure(
          `${err.response.statusText} Request,Please login`.toUpperCase()
        );

        throw err;
      });
  } catch (error) {
    Notiflix.Block.Remove("body");
    throw error;
  }
}
function getSchoolClasses() {
  try {
    console.log("coming");
    return Axios({
      url: `${SchoolClasses}`,
      method: "get",

      headers: {
        Authorization: "Token " + sessionStorage.getItem("teachertoken"),

        "content-type": "application/json",
      },
    })
      .then((respons) => {
        console.log(respons);
        return respons.data.schoolClasses;
      })
      .catch((err) => {
        console.log(err);
        if (err.response.status === 401) {
          Notiflix.Notify.Failure(
            `${err.response.statusText} Request,Please login`.toUpperCase()
          );
          sessionStorage.clear();
        } else {
          Notiflix.Notify.Failure(`${err.response.data}`.toUpperCase());
        }
        throw err;
      });
  } catch (error) {
    throw error;
  }
}
