import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_snack_bar.dart';

Future<void> LaunchCustomUrl(context, String? url)async{
  if (url!=null) {
    Uri uri =Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);

    }else{
      showSnackBar(context, 'can not launch url$url');
    }
  }
}

