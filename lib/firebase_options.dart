// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCPTPa2Xe-iLe7INDsYI4KbMNN6dWH1TTE',
    appId: '1:774956717950:web:f5451b0552cce82ec8052f',
    messagingSenderId: '774956717950',
    projectId: 'mali98-firebase-auth',
    authDomain: 'mali98-firebase-auth.firebaseapp.com',
    storageBucket: 'mali98-firebase-auth.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0M2ILw8u09ryHzplZPmt5VxUqOcnAPz4',
    appId: '1:774956717950:android:f0f2dac7c78b0a14c8052f',
    messagingSenderId: '774956717950',
    projectId: 'mali98-firebase-auth',
    storageBucket: 'mali98-firebase-auth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-BJulfBO1f71pyZBss4zlwSvPKTzIBO0',
    appId: '1:774956717950:ios:b7f4be862bb7fc90c8052f',
    messagingSenderId: '774956717950',
    projectId: 'mali98-firebase-auth',
    storageBucket: 'mali98-firebase-auth.appspot.com',
    iosClientId: '774956717950-cas81s7u3nsbh2amj3h4et2h5ncv9j2m.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-BJulfBO1f71pyZBss4zlwSvPKTzIBO0',
    appId: '1:774956717950:ios:b7f4be862bb7fc90c8052f',
    messagingSenderId: '774956717950',
    projectId: 'mali98-firebase-auth',
    storageBucket: 'mali98-firebase-auth.appspot.com',
    iosClientId: '774956717950-cas81s7u3nsbh2amj3h4et2h5ncv9j2m.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuth',
  );
}
