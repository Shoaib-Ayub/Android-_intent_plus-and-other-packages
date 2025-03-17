import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class ImplimentationIntentPlus {
  //open camera
  Future<void> requestCameraPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      await Permission.camera.request();
    }
  }

  void openCamera() async {
    await requestCameraPermission();
    if (await Permission.camera.isGranted) {
      const intent = AndroidIntent(
        action: 'android.media.action.IMAGE_CAPTURE',
      );
      await intent.launch();
    } else {
      print("Camera permission denied");
    }
  }

  // open gallery
  void openGallery() async {
    const AndroidIntent intent =
        AndroidIntent(action: "android.intent.action.PICK", type: "image/*");
    await intent.launch();
  }

  // open whatsapp
  void openWhatsApp() async {
    try {
      const intent = AndroidIntent(
        action: 'android.intent.action.VIEW',
        data: 'https://wa.me/', // WhatsApp ko open karne ka sahi tarika
        package: 'com.whatsapp',
        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
      );

      await intent.launch();
    } catch (e) {
      print("WhatsApp is not installed or cannot be opened: $e");
    }
    // await intent.launch();
  }

  // open alquran
  void openAlQuran() async {
    const intent = AndroidIntent(
      action: 'android.intent.action.VIEW',
      data: 'content://contacts/people', // Contact list ke liye
    );
    await intent.launch();
  }

  // open youtube
  void openYoutube() async {
    const intent = AndroidIntent(
      action: 'android.intent.action.VIEW',
      data: 'https://www.youtube.com/',
      package: 'com.google.android.youtube',
    );
    await intent.launch();
  }

  // open alarm
  void openAlarm() async {
    const intent = AndroidIntent(
      action: 'android.intent.action.SET_ALARM',
      arguments: {
        'android.intent.extra.HOUR': 7, // Set hour (24-hour format)
        'android.intent.extra.MINUTES': 30, // Set minutes
        'android.intent.extra.MESSAGE': 'Flutter Alarm', // Alarm label
      },
    );
    await intent.launch();
  }
}
