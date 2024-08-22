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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA2UIe-_49yZTPzphfXz1lbBhdF1ojHRFA',
    appId: '1:232897071594:web:c81d063f64e2b61c9fca93',
    messagingSenderId: '232897071594',
    projectId: 'ecommercewithadminpanel',
    authDomain: 'ecommercewithadminpanel.firebaseapp.com',
    storageBucket: 'ecommercewithadminpanel.appspot.com',
    measurementId: 'G-2V2H6Y7XJR',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnB-_5HJRcqzxvijmOSvQAyti0d2ILJN8',
    appId: '1:232897071594:ios:039f1ed4ca96db229fca93',
    messagingSenderId: '232897071594',
    projectId: 'ecommercewithadminpanel',
    storageBucket: 'ecommercewithadminpanel.appspot.com',
    iosBundleId: 'com.example.ecommerceWithAdminpanel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnB-_5HJRcqzxvijmOSvQAyti0d2ILJN8',
    appId: '1:232897071594:ios:039f1ed4ca96db229fca93',
    messagingSenderId: '232897071594',
    projectId: 'ecommercewithadminpanel',
    storageBucket: 'ecommercewithadminpanel.appspot.com',
    iosBundleId: 'com.example.ecommerceWithAdminpanel',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA2UIe-_49yZTPzphfXz1lbBhdF1ojHRFA',
    appId: '1:232897071594:web:73084e06ad2c746a9fca93',
    messagingSenderId: '232897071594',
    projectId: 'ecommercewithadminpanel',
    authDomain: 'ecommercewithadminpanel.firebaseapp.com',
    storageBucket: 'ecommercewithadminpanel.appspot.com',
    measurementId: 'G-B7W507G9GF',
  );

}