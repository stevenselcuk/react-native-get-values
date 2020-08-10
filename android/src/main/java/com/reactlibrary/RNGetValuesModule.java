
package com.reactlibrary;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import com.rncodetest.R;
import android.util.Log;

import java.lang.ClassNotFoundException;
import java.lang.IllegalAccessException;
import java.lang.reflect.Field;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.Promise;

import java.util.Map;
import java.util.HashMap;

public class RNGetValuesModule extends ReactContextBaseJavaModule {
  private static ReactApplicationContext reactContext;
  public RNGetValuesModule(ReactApplicationContext context) {
    super(context);
     reactContext = context;
  }

  @Override
  public String getName() {
    return "RNGetValues";
  }

  @ReactMethod
  public void getKey(String aString, Callback errorCallback, Callback successCallback) {
    String packageName = reactContext.getPackageName();
    String token = reactContext.getString(reactContext.getResources().getIdentifier(aString, "string", packageName));
    try {
      successCallback.invoke(token);
    } catch (Exception e) {
     errorCallback.invoke(e.getMessage());
    }
  }
}






