import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  final grokUri = Uri.parse('https://grok.com/chat');
  final phoneUri = Uri.parse('tel:03261772670');
  final emailUri = Uri.parse('mailto:shoaibayub172@gmail.com');
  final smsUri = Uri.parse('sms:03261772670');
  final gituri = Uri.parse('https://github.com/Shoaib-Ayub');
  final linkedinUri = Uri.parse(
      'https://www.linkedin.com/in/muhammad-shoaib-ayub-732a50285?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app');
  void launchGrok() async => await canLaunchUrl(grokUri)
      ? await launchUrl(grokUri)
      : throw 'Could not launch ${grokUri.toString()}';
  void launchPhone() async => await canLaunchUrl(phoneUri)
      ? await launchUrl(phoneUri)
      : throw 'Could not launch ${phoneUri.toString()}';
  void launchEmail() async => await canLaunchUrl(emailUri)
      ? await launchUrl(emailUri)
      : throw 'Could not launch ${emailUri.toString()}';
  void launchSMS() async => await canLaunchUrl(smsUri)
      ? await launchUrl(smsUri)
      : throw "Could not launch ${smsUri.toString()}";
  void launchGit() async {
    if (await canLaunchUrl(gituri)) {
      await launchUrl(gituri);
    } else {
      throw 'Could not launch ${gituri.toString()}';
    }
  }

  void launchLinkedin() async => await canLaunchUrl(linkedinUri)
      ? await launchUrl(linkedinUri)
      : throw 'Could not launch ${linkedinUri.toString()}';
}
