import 'package:url_launcher/url_launcher.dart';

class LinkLauncher {
  static Future<void> launch({required String url}) async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
