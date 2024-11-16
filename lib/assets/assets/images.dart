import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppImages {
  static const logo = 'assets/images/logo.png';
  static const inviteFriend = 'assets/images/invite_friend.png';
  static const piano = 'assets/images/piano.png';
  static const google = 'assets/images/google.png';
  static const avat = 'assets/images/avat.png';
  static const radio = 'assets/images/radio.png';
  static const top = 'assets/images/top.png';
  static const throne = 'assets/images/throne.png';
  static const playlist = 'assets/images/playlist.png';
  static const newRel = 'assets/images/new_rel.png';
  static const image_9 = 'assets/images/image_9.png';
  static const image_8 = 'assets/images/image_8.png';
  static const image_7 = 'assets/images/image_7.png';
  static const image_6 = 'assets/images/image_6.png';
  static const image_5 = 'assets/images/image_5.png';
  static const image_4 = 'assets/images/image_4.png';
  static const image_3 = 'assets/images/image_3.png';
  static const image_2 = 'assets/images/image_2.png';
  static const image_1 = 'assets/images/image_1.png';
  static const classic = 'assets/images/classic.png';
  static const pop = 'assets/images/pop.png';
  static const hiphop = 'assets/images/hiphop.png';
  static const instrum = 'assets/images/instrum.png';
  static const maqom = 'assets/images/maqom.png';
  static const retro = 'assets/images/retro.png';
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
