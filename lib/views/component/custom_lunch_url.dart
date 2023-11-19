import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLunchUrl(context, String? url) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Can Not Lunch $url')));
    }
  }
}
