import * as RecordListActions from "components/record-list/actions";

export const setupSelect = (payload, namespace) => {
  return {
    type: `${namespace}/${RecordListActions.SET_FILTERS}`,
    payload
  };
};

export const setSelectValue = (payload, namespace) => {
  return {
    type: `${namespace}/${RecordListActions.ADD_SELECT}`,
    payload
  };
};