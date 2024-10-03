import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  static const logo = 'assets/icons/logo.svg';
  static const equalizer = 'assets/icons/equalizer.svg';
  static const microphoneActive = 'assets/icons/microphone_active.svg';
  static const microphone = 'assets/icons/microphone.svg';
  static const music = 'assets/icons/music.svg';
  static const note = 'assets/icons/note.svg';
  static const playlistActive = 'assets/icons/playlist_active.svg';
  static const playlist = 'assets/icons/playlist.svg';
  static const radioActive = 'assets/icons/radio_active.svg';
  static const radio = 'assets/icons/radio.svg';
  static const search = 'assets/icons/search.svg';
  static const share = 'assets/icons/share.svg';
  static const logout = 'assets/icons/logout.svg';
  static const edit = 'assets/icons/edit.svg';
  static const arrowCentr = 'assets/icons/arrow-centr.svg';
  static const arrowTop = 'assets/icons/arrow_top.svg';
  static const arrowRight = 'assets/icons/arrow_right.svg';
  static const crown = 'assets/icons/crown.svg';
  static const copy = 'assets/icons/copy.svg';
  static const hqBorder = 'assets/icons/hq_border.svg';
  static const trumpet = 'assets/icons/trumpet.svg';
  static const trash = 'assets/icons/trash.svg';
  static const userNote = 'assets/icons/user-note.svg';
  static const noteList = 'assets/icons/note_list.svg';
  static const save = 'assets/icons/save.svg';
  static const dots = 'assets/icons/dots.svg';
  static const favorite = 'assets/icons/favorite.svg';
  static const like = 'assets/icons/like.svg';
  static const play = 'assets/icons/play.svg';
  static const google = 'assets/icons/google.svg';
  static const arrowBottom = 'assets/icons/arrow_bottom.svg';
  static const download = 'assets/icons/download.svg';
  static const next = 'assets/icons/next.svg';
  static const previus = 'assets/icons/previus.svg';
  static const shuffle = 'assets/icons/shuffle.svg';
  static const rotate = 'assets/icons/rotate.svg';
  static const hq = 'assets/icons/hq.svg';
  static const pausa = 'assets/icons/pausa.svg';
  static const rotate_1 = 'assets/icons/rotate_1.svg';
  static const bankCheckmarkCircle = 'assets/icons/bank-checkmark-circle.svg';
}

extension SvgExt on String {
  SvgPicture svg({
    Color? color,
    double? width,
    double? height,
  }) {
    return SvgPicture.asset(
      this,
      colorFilter:
          color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      width: width,
      height: height,
    );
  }
}
