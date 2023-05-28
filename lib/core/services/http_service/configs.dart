// To use different flavor apis
import 'package:my_beeline/flavors.dart';

class Configs {
  const Configs._();

  static String apiBaseUrl = currentFlavor.baseUrl;
}
