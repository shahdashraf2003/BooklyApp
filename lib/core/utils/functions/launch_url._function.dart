import 'package:bookly_app/features/home/presentation/views/widgets/show_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lunchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showSnackBar(context, 'could not launch $url');
    }
  }
}
