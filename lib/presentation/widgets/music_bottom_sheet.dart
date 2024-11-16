import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';

class MusicBottomSheet extends StatelessWidget {
  final String title;
  final String artist;
  final String duration;
  final String albumArt;

  const MusicBottomSheet({
    super.key,
    required this.title,
    required this.artist,
    required this.duration,
    required this.albumArt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF131217),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Center(
              child: SizedBox(
                width: 40,
                height: 5,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFFB5B5B5),
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Song info row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: albumArt,
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '$artist • $duration',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Action buttons
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFF2A292E),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildActionButton(
                  AppIcons.favorite.svg(
                    color: white,
                    height: 20,
                    width: 20,
                  ),
                  'Нравится музыка',
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFF3A393E),
                ),
                _buildActionButton(
                  AppIcons.download.svg(
                    color: white,
                    height: 20,
                    width: 20,
                  ),
                  'Скачать музыку',
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFF3A393E),
                ),
                _buildActionButton(
                  AppIcons.playlistPlus.svg(
                    color: white,
                    height: 20,
                    width: 20,
                  ),
                  'Добавить в плейлист',
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFF3A393E),
                ),
                _buildActionButton(
                  AppIcons.playlistSort.svg(
                    color: white,
                    height: 20,
                    width: 20,
                  ),
                  'Играть следующим',
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFF3A393E),
                ),
                _buildActionButton(
                  AppIcons.playlistText.svg(
                    color: white,
                    height: 20,
                    width: 20,
                  ),
                  'Показать тексты песен',
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFF3A393E),
                ),
                _buildActionButton(
                  AppIcons.shuffle.svg(
                    color: white,
                    height: 20,
                    width: 20,
                  ),
                  'Эквалайзер',
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFF3A393E),
                ),
                _buildActionButton(
                  AppIcons.share.svg(
                    color: white,
                    height: 20,
                    width: 20,
                  ),
                  'Поделиться',
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFF3A393E),
                ),
                _buildActionButton(
                  AppIcons.micRec.svg(
                    color: white,
                    height: 20,
                    width: 20,
                  ),
                  'Перейти к исполнителю',
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFF3A393E),
                ),
                _buildActionButton(
                  AppIcons.disc.svg(
                    color: white,
                    height: 20,
                    width: 20,
                  ),
                  'Перейти в альбом',
                ),
              ],
            ),
          ),

          const SizedBox(height: 16), // Bottom padding
        ],
      ),
    );
  }

  Widget _buildActionButton(Widget icon, String label) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 16),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Usage example
void showMusicOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    useRootNavigator: true,
    builder: (context) => const MusicBottomSheet(
      title: 'Друзьями',
      artist: 'Arut, Onative',
      duration: '4:06',
      albumArt: 'https://via.placeholder.com/60',
    ),
  );
}
