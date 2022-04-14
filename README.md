# Flutter - Google Sign in

This project covers, both Anddroid & iOS setup of the flutter-google sign in.

## Getting Started

Following is the step by step workthrough of this project.

- Create a firebase project
- Goto: firebase console > Authentication > Google > Enable 

### Setup android app
- Goto: firebase console > project settings > android 
- Goto: flutter project > android > app > build.gradle > copy application id
- Under register app, put the application id and click 'Register app'
- Download 'google-service.json' and put it inside, 'android > app'
- Copy 'classpath 'com.google.gms:google-services:version' and put it inside, 'project > android > build.gradle > dependencies{}'
- Scroll down the firebase console android app page and copy 'apply plugin: 'com.google.gms.google-services'. Then put it all the way down in the 'project > android > app > build.gradle' file
- In same above file, change the 'defaultConfig{} > minSdkVersion' to 21
- Then add your SHA keys to the firebase project [Setting up SHA Keys](https://developers.google.com/android/guides/client-auth)         

### Setup iOS app
- step

### Coding part
- 01: import firebase core and initialize firebase in 'main.dart' 
- 02: 

### Dependencies
- [add 'firebase_auth' package](https://pub.dev/packages/firebase_auth) 
- [add 'google_sign_in' package](https://pub.dev/packages/google_sign_in)
- [font awosome for google icon](https://pub.dev/packages/font_awesome_flutter)
- [provider package for state management](https://pub.dev/packages/provider)

### References
- [Reference: youtube.com/Johannes Milke](https://www.youtube.com/watch?v=1k-gITZA9CI&t=2s)
- [Reference: youtube.com/CodeX](url)

### Screen Shots
<table>
    <tr>
        <td> <img src="./assets/image.png" alt="text" width="200"/> </td>
        <td> <img src="./assets/image.png" alt="text" width="200"/> </td>
    </tr>
</table>
