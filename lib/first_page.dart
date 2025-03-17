import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'android_intentPlus_imp.dart';
import 'provider_in.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final urlLauncher = ref.watch(urlLauntureProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: 250,
              child: DefaultTextStyle(
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Bobbers',
                      fontWeight: FontWeight.bold),
                  child: AnimatedTextKit(animatedTexts: [
                    TyperAnimatedText('Hi, I am Shoaib Ayub'),
                    TyperAnimatedText('I implimented uri_launcher'),
                    TyperAnimatedText(
                        'Click on the button below to see the implimentation'),
                  ])),
            ),
            OverflowBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: urlLauncher.launchGrok,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: const Card(
                        child: Text(
                      "Grok",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
                ElevatedButton(
                    onPressed: urlLauncher.launchPhone,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: const Card(
                        child: Text(
                      "Phone",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
                ElevatedButton(
                    onPressed: urlLauncher.launchEmail,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: const Card(
                        child: Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
              ],
            ),
            OverflowBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: urlLauncher.launchSMS,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: const Card(
                        child: Text(
                      "SMS",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
                ElevatedButton(
                    onPressed: urlLauncher.launchGit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: const Card(
                        child: Text(
                      "Github",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
                ElevatedButton(
                    onPressed: urlLauncher.launchLinkedin,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: const Card(
                        child: Text(
                      "Linkedin",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(navigationProvider.notifier).state =
                      'androidIntentPlusImp';
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AndroidIntentplusImp()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Next page",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
