part of 'music_bloc.dart';

class MusicState extends Equatable {
  final AudioPlayer? player;

  const MusicState({
    this.player,
  });

  MusicState copyWith({
    AudioPlayer? player,
  }) =>
      MusicState(
        player: player ?? this.player,
      );

  @override
  List<Object?> get props => [
        player,
      ];
}
