import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/common.dart';
import 'package:fonoteke/presentation/common/widgets/control_buttons.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';
part 'package:fonoteke/presentation/pages/home/mixin/music_view_mixin.dart';

class MusicView extends StatefulWidget {
  const MusicView({super.key});

  @override
  State<MusicView> createState() => _MusicViewState();
}

class _MusicViewState extends State<MusicView> with MusicViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: AppIcons.arrowBottom.svg(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppIcons.dots.svg(),
          ),
        ],
        title: Column(
          children: [
            Text(
              "Моя волна",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: white.withOpacity(.5),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Радостно",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<SequenceState?>(
              stream: _player.sequenceStateStream,
              builder: (context, snapshot) {
                final state = snapshot.data;
                if (state?.sequence.isEmpty ?? true) {
                  return const SizedBox();
                }
                final metadata = state!.currentSource!.tag as MediaItem;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Center(
                          child: Image.network(metadata.artUri.toString()),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                metadata.title,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: white,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                metadata.album ?? "Nomalum",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: white.withOpacity(.6),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: AppIcons.like.svg(),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: AppIcons.microphone.svg(),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
          StreamBuilder<PositionData>(
            stream: _positionDataStream,
            builder: (context, snapshot) {
              final positionData = snapshot.data;
              return SeekBar(
                duration: positionData?.duration ?? Duration.zero,
                position: positionData?.position ?? Duration.zero,
                bufferedPosition:
                    positionData?.bufferedPosition ?? Duration.zero,
                onChangeEnd: (newPosition) {
                  _player.seek(newPosition);
                },
              );
            },
          ),
          const SizedBox(height: 32),
          ControlButtons(_player),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: AppIcons.hq.svg(color: white),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: AppIcons.equalizer.svg(color: white),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: AppIcons.microphone.svg(color: white.withOpacity(.6)),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: AppIcons.download.svg(color: white),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: AppIcons.share.svg(color: white.withOpacity(.6)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
