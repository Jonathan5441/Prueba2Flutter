// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyB7Xhc3wuF_7chEBC-IPg7NTHpmK2Fl600',
    appId: '1:5706914894:web:afb80950e79c829feab71f',
    messagingSenderId: '5706914894',
    projectId: 'prueba2cat-ae91a',
    authDomain: 'prueba2cat-ae91a.firebaseapp.com',
    storageBucket: 'prueba2cat-ae91a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLbx0RG2FBAZ9bBLoW-ruGbUWZHLLoZzw',
    appId: '1:5706914894:android:f6ca621422364514eab71f',
    messagingSenderId: '5706914894',
    projectId: 'prueba2cat-ae91a',
    storageBucket: 'prueba2cat-ae91a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHyIOjdb0vUAer69HnM6toe-vAkOFBy0Q',
    appId: '1:5706914894:ios:868d9d5f1b877d9aeab71f',
    messagingSenderId: '5706914894',
    projectId: 'prueba2cat-ae91a',
    storageBucket: 'prueba2cat-ae91a.appspot.com',
    iosBundleId: 'com.example.prueba',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHyIOjdb0vUAer69HnM6toe-vAkOFBy0Q',
    appId: '1:5706914894:ios:868d9d5f1b877d9aeab71f',
    messagingSenderId: '5706914894',
    projectId: 'prueba2cat-ae91a',
    storageBucket: 'prueba2cat-ae91a.appspot.com',
    iosBundleId: 'com.example.prueba',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB7Xhc3wuF_7chEBC-IPg7NTHpmK2Fl600',
    appId: '1:5706914894:web:ab973949eacc5f8feab71f',
    messagingSenderId: '5706914894',
    projectId: 'prueba2cat-ae91a',
    authDomain: 'prueba2cat-ae91a.firebaseapp.com',
    storageBucket: 'prueba2cat-ae91a.appspot.com',
  );

}