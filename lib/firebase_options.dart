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
    apiKey: 'AIzaSyBkhqEwMHnq6S6y12W8IdVGZ0mIY2dZ4MQ',
    appId: '1:282629680025:android:6ce4f517888a691db04108',
    messagingSenderId: '282629680025',
    projectId: 'haircurlyapp',
    storageBucket: 'haircurlyapp.firebasestorage.app',
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
