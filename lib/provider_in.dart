import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'implimentation_intent_plus.dart';
import 'url_launcher_p.dart';

final urlLauntureProvider = Provider<UrlLauncher>((ref) => UrlLauncher());
final intentProvider =
    Provider<ImplimentationIntentPlus>((ref) => ImplimentationIntentPlus());
final navigationProvider = StateProvider<String>((ref) => 'home');
