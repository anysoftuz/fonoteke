import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:just_audio/just_audio.dart';

class ControlButtons extends StatelessWidget {
  final AudioPlayer player;

  const ControlButtons(this.player, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        StreamBuilder<bool>(
          stream: player.shuffleModeEnabledStream,
          builder: (context, snapshot) {
            final shuffleModeEnabled = snapshot.data ?? false;
            return IconButton(
              icon: AppIcons.shuffle.svg(
                color: shuffleModeEnabled ? white : white.withOpacity(.6),
              ),
              onPressed: () async {
                final enable = !shuffleModeEnabled;
                if (enable) {
                  await player.shuffle();
                }
                await player.setShuffleModeEnabled(enable);
              },
            );
          },
        ),
        StreamBuilder<SequenceState?>(
          stream: player.sequenceStateStream,
          builder: (context, snapshot) => IconButton(
            icon: AppIcons.previus.svg(),
            onPressed: player.hasPrevious ? player.seekToPrevious : null,
          ),
        ),
        StreamBuilder<PlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (processingState == ProcessingState.loading ||
                processingState == ProcessingState.buffering) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                width: 80,
                height: 80,
                child: const CircularProgressIndicator(),
              );
            } else if (playing != true) {
              return IconButton(
                icon: AppIcons.play.svg(height: 80),
                iconSize: 80,
                onPressed: player.play,
              );
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                icon: AppIcons.pausa.svg(height: 80),
                iconSize: 80,
                onPressed: player.pause,
              );
            } else {
              return IconButton(
                icon: const Icon(Icons.replay),
                iconSize: 80,
                onPressed: () => player.seek(Duration.zero,
                    index: player.effectiveIndices!.first),
              );
            }
          },
        ),
        StreamBuilder<SequenceState?>(
          stream: player.sequenceStateStream,
          builder: (context, snapshot) => IconButton(
            icon: AppIcons.next.svg(),
            onPressed: player.hasNext ? player.seekToNext : null,
          ),
        ),
        StreamBuilder<LoopMode>(
          stream: player.loopModeStream,
          builder: (context, snapshot) {
            final loopMode = snapshot.data ?? LoopMode.off;
            final icons = [
              AppIcons.rotate.svg(color: white.withOpacity(.6)),
              AppIcons.rotate.svg(color: white),
              AppIcons.rotate_1.svg(color: white),
            ];
            const cycleModes = [
              LoopMode.off,
              LoopMode.all,
              LoopMode.one,
            ];
            final index = cycleModes.indexOf(loopMode);
            return IconButton(
              icon: icons[index],
              onPressed: () {
                player.setLoopMode(cycleModes[
                    (cycleModes.indexOf(loopMode) + 1) % cycleModes.length]);
              },
            );
          },
        ),
      ],
    );
  }
}
