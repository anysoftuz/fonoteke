import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppImages {
  static const logo = 'assets/images/logo.png';
  static const inviteFriend = 'assets/images/invite_friend.png';
  static const piano = 'assets/images/piano.png';
  static const google = 'assets/images/google.png';
}

extension ImgExt on String {
  Image imgAsset({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(
      this,
      width: width,
      height: height,
      fit: fit,
    );
  }

  Image imgNetwork({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.network(
      this,
      width: width,
      height: height,
      fit: fit,
    );
  }

  Image imgFile({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.file(
      File(this),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
