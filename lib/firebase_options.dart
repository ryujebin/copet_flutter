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
    apiKey: 'AIzaSyAdOrKVZsM518nY9llBFJqnn0oY2I-_RK4',
    appId: '1:190303619065:web:010a5ee372a698c585df28',
    messagingSenderId: '190303619065',
    projectId: 'copet-410614',
    authDomain: 'copet-410614.firebaseapp.com',
    storageBucket: 'copet-410614.appspot.com',
    measurementId: 'G-0KXZJM9DCZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBU7D4pxQWOx_UwCV_vE5F5Dt2zePei5MQ',
    appId: '1:190303619065:android:5e1ddebc731ebfc185df28',
    messagingSenderId: '190303619065',
    projectId: 'copet-410614',
    storageBucket: 'copet-410614.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_shm9NoZtw-dN9Cp1SuzT7VhXUskuR1k',
    appId: '1:190303619065:ios:e51a397752a6523485df28',
    messagingSenderId: '190303619065',
    projectId: 'copet-410614',
    storageBucket: 'copet-410614.appspot.com',
    iosBundleId: 'com.example.pet',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_shm9NoZtw-dN9Cp1SuzT7VhXUskuR1k',
    appId: '1:190303619065:ios:e51a397752a6523485df28',
    messagingSenderId: '190303619065',
    projectId: 'copet-410614',
    storageBucket: 'copet-410614.appspot.com',
    iosBundleId: 'com.example.pet',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAdOrKVZsM518nY9llBFJqnn0oY2I-_RK4',
    appId: '1:190303619065:web:010a5ee372a698c585df28',
    messagingSenderId: '190303619065',
    projectId: 'copet-410614',
    authDomain: 'copet-410614.firebaseapp.com',
    storageBucket: 'copet-410614.appspot.com',
    measurementId: 'G-0KXZJM9DCZ',
  );
}