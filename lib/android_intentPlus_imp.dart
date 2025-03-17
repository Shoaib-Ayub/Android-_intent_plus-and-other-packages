import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'provider_in.dart';

class AndroidIntentplusImp extends ConsumerStatefulWidget {
  const AndroidIntentplusImp({super.key});

  @override
  ConsumerState<AndroidIntentplusImp> createState() =>
      _AndroidIntentplusImpState();
}

class _AndroidIntentplusImpState extends ConsumerState<AndroidIntentplusImp> {
  @override
  Widget build(BuildContext context) {
    final intentProviders = ref.watch(intentProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      "Here is the Android IntentPlus Implementation",
                      speed: const Duration(milliseconds: 90),
                    ),
                    WavyAnimatedText('I hope you like it!'),
                  ],
                  isRepeatingAnimation: true,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    intentProviders.openCamera();
                  },
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                        child: CircleAvatar(
                      child: Image.asset(
                        "assets/camera.png",
                        fit: BoxFit.fill,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    intentProviders.openAlarm();
                  },
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                        child: CircleAvatar(
                      child: Image.asset(
                        "assets/clock.png",
                        fit: BoxFit.fill,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    intentProviders.openGallery();
                  },
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                        child: CircleAvatar(
                      child: Image.asset(
                        "assets/gallery.png",
                        fit: BoxFit.fill,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    intentProviders.openAlQuran();
                  },
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                        child: CircleAvatar(
                      child: Image.asset(
                        "assets/contact-list.png",
                        fit: BoxFit.fill,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    intentProviders.openWhatsApp();
                  },
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                        child: CircleAvatar(
                      child: Image.asset(
                        "assets/whatsapp.png",
                        fit: BoxFit.fill,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    intentProviders.openYoutube();
                  },
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                        child: CircleAvatar(
                      child: Image.asset(
                        "assets/youtube.png",
                        fit: BoxFit.fill,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Card(
                      child: Text(
                    "Check connection",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
