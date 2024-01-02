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
    apiKey: 'AIzaSyA9X59HMUfIIw8OSQYRRdia87PTtX1s6dg',
    appId: '1:382295289463:web:e7e03b2978929c76bce072',
    messagingSenderId: '382295289463',
    projectId: 'todo-bcb80',
    authDomain: 'todo-bcb80.firebaseapp.com',
    storageBucket: 'todo-bcb80.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUMN_3HPPilTP6p58KtRezngMdRIZFAKM',
    appId: '1:382295289463:android:d0c9f1b62abd7e5abce072',
    messagingSenderId: '382295289463',
    projectId: 'todo-bcb80',
    storageBucket: 'todo-bcb80.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAP3O5n6Av-iK33lVH3iaInOKyqCEHEsx4',
    appId: '1:382295289463:ios:4d8d632a51212d90bce072',
    messagingSenderId: '382295289463',
    projectId: 'todo-bcb80',
    storageBucket: 'todo-bcb80.appspot.com',
    iosBundleId: 'com.example.smartToDo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAP3O5n6Av-iK33lVH3iaInOKyqCEHEsx4',
    appId: '1:382295289463:ios:1e2eaa51e388d4abbce072',
    messagingSenderId: '382295289463',
    projectId: 'todo-bcb80',
    storageBucket: 'todo-bcb80.appspot.com',
    iosBundleId: 'com.example.smartToDo.RunnerTests',
  );
}