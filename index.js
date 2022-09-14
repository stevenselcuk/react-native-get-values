import { NativeModules, Platform } from "react-native";

const { RNGetValues } = NativeModules;

const iOSGetter = (key) => {
  return new Promise(function (resolve, reject) {
    RNGetValues.getKey(key, (error, data) => {
      if (error) {
        reject(error);
      } else {
        resolve(data);
      }
    });
  });
};

const androidGetter = (key) => {
  return new Promise(function (resolve, reject) {
    return RNGetValues.getKey(
      key,
      (err) => {
        reject(err);
      },
      (data) => {
        resolve(data);
      }
    );
  });
};

export default Platform.OS === "ios" ? iOSGetter : androidGetter;
