part of 'package:fonoteke/presentation/pages/home/home_view.dart';

mixin HomeViewMixin on State<HomeView> {
  static int _nextMediaId = 0;
  List<String> whatToListenTo = [
    AppImages.image_1,
    AppImages.image_2,
  ];

  List<String> playlistByGenre = [
    AppImages.image_5,
    AppImages.image_6,
    AppImages.image_5,
    AppImages.image_6,
  ];

  List<String> artist = [
    AppImages.image_7,
    AppImages.image_8,
    AppImages.image_7,
    AppImages.image_8,
  ];

  final playlist = ConcatenatingAudioSource(
    children: [
      ClippingAudioSource(
        start: const Duration(seconds: 60),
        end: const Duration(seconds: 90),
        child: AudioSource.uri(Uri.parse(
            "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3")),
        tag: MediaItem(
          id: '${_nextMediaId++}',
          album: "Science Friday",
          title: "A Salute To Head-Scratching Science (30 seconds)",
          artUri: Uri.parse(
              "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg"),
        ),
      ),
      AudioSource.uri(
        Uri.parse(
            "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3"),
        tag: MediaItem(
          id: '${_nextMediaId++}',
          album: "Science Friday",
          title: "A Salute To Head-Scratching Science",
          artUri: Uri.parse(
              "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg"),
        ),
      ),
      AudioSource.uri(
        Uri.parse(
            "https://s3.amazonaws.com/scifri-segments/scifri201711241.mp3"),
        tag: MediaItem(
          id: '${_nextMediaId++}',
          album: "Science Friday",
          title: "From Cat Rheology To Operatic Incompetence",
          artUri: Uri.parse(
              "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg"),
        ),
      ),
      AudioSource.uri(
        Uri.parse(
            "https://s3.amazonaws.com/scifri-segments/scifri201711241.mp3"),
        tag: MediaItem(
          id: '${_nextMediaId++}',
          album: "Science Friday",
          title: "From Cat Rheology To Operatic Incompetence",
          artUri: Uri.parse(
              "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg"),
        ),
      ),
      AudioSource.uri(
        Uri.parse(
            "https://s3.amazonaws.com/scifri-segments/scifri201711241.mp3"),
        tag: MediaItem(
          id: '${_nextMediaId++}',
          album: "Science Friday",
          title: "From Cat Rheology To Operatic Incompetence",
          artUri: Uri.parse(
              "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg"),
        ),
      ),
    ],
  );
}

class AudioMetadata {
  final String album;
  final String title;
  final String artwork;

  AudioMetadata({
    required this.album,
    required this.title,
    required this.artwork,
  });
}
