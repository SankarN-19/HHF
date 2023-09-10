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
    apiKey: 'AIzaSyADkTk82mgUPdJZy589_CGMN1ibBUrkXp8',
    appId: '1:893475172938:web:4dcc40cd948b4f0455ecb3',
    messagingSenderId: '893475172938',
    projectId: 'legalease-23782',
    authDomain: 'legalease-23782.firebaseapp.com',
    storageBucket: 'legalease-23782.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8OUjyzhMIe2hZ7Jj3-VRWSEF1pLlnz60',
    appId: '1:893475172938:android:3a72f34f33589e7455ecb3',
    messagingSenderId: '893475172938',
    projectId: 'legalease-23782',
    storageBucket: 'legalease-23782.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAn5XJHhgTatVpygwr12x1zXZAhVZj5I5s',
    appId: '1:893475172938:ios:f31b7e82f46292e755ecb3',
    messagingSenderId: '893475172938',
    projectId: 'legalease-23782',
    storageBucket: 'legalease-23782.appspot.com',
    iosBundleId: 'com.example.legalease',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAn5XJHhgTatVpygwr12x1zXZAhVZj5I5s',
    appId: '1:893475172938:ios:f43a7e7d784830a555ecb3',
    messagingSenderId: '893475172938',
    projectId: 'legalease-23782',
    storageBucket: 'legalease-23782.appspot.com',
    iosBundleId: 'com.example.legalease.RunnerTests',
  );
}