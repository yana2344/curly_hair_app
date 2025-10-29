// lib/firebase_options.dart

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrK_VSAgDVbed5PDgtzk1g7e3tU9Ah0xA',
    appId: '1:613941626393:android:6e2b9f4492767d59358c88',
    messagingSenderId: '613941626393',
    projectId: 'curlyapp-8edc3',
    storageBucket: 'curlyapp-8edc3.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2GRL757iirx34MDlja1nB0dztQHGhhXs',
    appId: '1:282629680025:ios:52f2a9f6ee45393eb04108',
    messagingSenderId: '282629680025',
    projectId: 'haircurlyapp',
    storageBucket: 'haircurlyapp.firebasestorage.app',
    iosBundleId: 'com.tatarinova.curlyapp.myCurlyApp',
  );
}
