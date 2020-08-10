
# react-native-get-values

## About

Read values from your Info.plist (iOS) or values/strings.xml (Android) on your React Native project

## Getting started

`yarn add react-native-get-values`

or

`npm install react-native-get-values --save`

### Mostly automatic installation

`react-native link react-native-get-values`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-get-values` and add `RNGetValues.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNGetValues.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNGetValuesPackage;` to the imports at the top of the file
  - Add `new RNGetValuesPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-get-values'
  	project(':react-native-get-values').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-get-values/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-get-values')
  	```


## Usage

### For iOS

As a classic way, open your xcode project and add rows to Info.plist or

Open  `your-RN-project/ios/RNCodeTest/Info.plist` file 
and add your keys&values like this

```xml
...
	<key>YOUR_KEY</key>
	<string>asnltgfhe7s9ab</string>
	<key>YOUR_ANOTHER_KEY</key>
	<string>se7sbans84mvbsya</string>
...
</dict>
</plist>

```

### For android

Open `your-RN-project/android/app/src/main/res/values/strings.xml` file
and add your keys&values like this

```xml
<resources>
    <string name="app_name">your-RN-project</string>
    <string name="YOUR_KEY">asnltgfhe7s9ab</string>
    <string name="YOUR_ANOTHER_KEY">se7sbans84mvbsya</string>
</resources>

```

```javascript
import getData from 'react-native-get-values';

// ...

const getTheKey = async () => {
      const YourKeyValue = await getData('YOUR_KEY');
      return key
}

// ...

```
  
