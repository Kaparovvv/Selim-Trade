import 'dart:io';

import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncher {
  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      throw 'Could not launch: $launchUri';
    }
  }

  Future<void> makeWhatsapp(String phoneNumber) async {
    String androidUrl = "whatsapp://send?phone=+996$phoneNumber";
    String iosUrl = "https://wa.me/996$phoneNumber";
    if (Platform.isAndroid) {
      if (await canLaunchUrlString(androidUrl)) {
        await launchUrlString(androidUrl);
      } else {
        throw 'Could not launch: $androidUrl';
      }
    } else if (Platform.isIOS) {
      if (await canLaunchUrlString(iosUrl)) {
        await launchUrlString(iosUrl);
      } else {
        throw 'Could not launch: $iosUrl';
      }
    }
  }

  Future<void> makeInstagram() async {
    const String nativeUrl = "instagram://user?username=selimtrade";
    const String webUrl = "https://www.instagram.com/selimtrade/";
    if (await canLaunchUrlString(nativeUrl)) {
      await launchUrlString(nativeUrl);
    } else if (await canLaunchUrlString(webUrl)) {
      await launchUrlString(webUrl);
    } else {
      throw 'Could not launch: $nativeUrl';
    }
  }
}
