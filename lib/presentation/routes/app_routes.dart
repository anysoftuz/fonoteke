import 'package:flutter/material.dart';
import 'package:fonoteke/presentation/common/view/error_view.dart';
import 'package:fonoteke/presentation/common/view/main_view.dart';
import 'package:fonoteke/presentation/common/view/splash_view.dart';
import 'package:fonoteke/presentation/common/widgets/custom_transition_page.dart';
import 'package:fonoteke/presentation/pages/auth/auth_main_view.dart';
import 'package:fonoteke/presentation/pages/collection/albums_view.dart';
import 'package:fonoteke/presentation/pages/collection/collection_view.dart';
import 'package:fonoteke/presentation/pages/collection/performers_view.dart';
import 'package:fonoteke/presentation/pages/collection/playlists_view.dart';
import 'package:fonoteke/presentation/pages/collection/save_view.dart';
import 'package:fonoteke/presentation/pages/home/home_view.dart';
import 'package:fonoteke/presentation/pages/home/music_view.dart';
import 'package:fonoteke/presentation/pages/home/new_reels_view.dart';
import 'package:fonoteke/presentation/pages/home/playlist_genre_view.dart';
import 'package:fonoteke/presentation/pages/home/playlist_of_the_day_view.dart';
import 'package:fonoteke/presentation/pages/home/search_view.dart';
import 'package:fonoteke/presentation/pages/home/top_charty_view.dart';
import 'package:fonoteke/presentation/pages/karaoke/karaoke_view.dart';
import 'package:fonoteke/presentation/pages/karaoke/playlists_karaoke_view.dart';
import 'package:fonoteke/presentation/pages/profile/invite_friend_view.dart';
import 'package:fonoteke/presentation/pages/profile/premium_subscription_view.dart';
import 'package:fonoteke/presentation/pages/profile/profile_edit_view.dart';
import 'package:fonoteke/presentation/pages/profile/profile_view.dart';
import 'package:fonoteke/presentation/pages/profile/settings_view.dart';
import 'package:fonoteke/presentation/pages/radio/radio_view.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

sealed class AppRouts {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: AppRoutePath.splash,
    errorBuilder: (context, state) => const ErrorView(),
    routes: [
      GoRoute(
        path: AppRoutePath.errorFound,
        builder: (context, state) => const ErrorView(),
      ),
      GoRoute(
        path: AppRoutePath.auth,
        builder: (context, state) => const AuthMainView(),
      ),
      GoRoute(
        path: AppRoutePath.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutePath.inviteFriend,
        builder: (context, state) => const InviteFriendView(),
      ),
      GoRoute(
        path: AppRoutePath.profileEdit,
        builder: (context, state) => const ProfileEditView(),
      ),
      GoRoute(
        path: AppRoutePath.premiumSubscription,
        builder: (context, state) => const PremiumSubscriptionView(),
      ),
      GoRoute(
        path: AppRoutePath.search,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: AppRoutePath.music,
        pageBuilder: (context, state) => customTransitionPage(
          context: context,
          state: state,
          child: const MusicView(),
        ),
      ),
      mainView,
    ],
  );

  static final mainView = StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      return MainView(navigationShell: navigationShell);
    },
    branches: <StatefulShellBranch>[
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: AppRoutePath.home,
            builder: (context, state) => const HomeView(),
          ),
          GoRoute(
            path: AppRoutePath.newReels,
            builder: (context, state) => const NewReelsView(),
          ),
          GoRoute(
            path: AppRoutePath.playlistGenre,
            builder: (context, state) => const PlaylistGenreView(),
          ),
          GoRoute(
            path: AppRoutePath.topCharty,
            builder: (context, state) => const TopChartyView(),
          ),
          GoRoute(
            path: AppRoutePath.playlistOfTheDay,
            builder: (context, state) => const PlaylistOfTheDayView(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: AppRoutePath.radio,
            builder: (context, state) => const RadioView(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: AppRoutePath.karaoke,
            builder: (context, state) => const KaraokeView(),
          ),
          GoRoute(
            path: AppRoutePath.karaokePlaylist,
            builder: (context, state) => const PlaylistsKaraokeView(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: AppRoutePath.collection,
            builder: (context, state) => const CollectionView(),
          ),
          GoRoute(
            path: AppRoutePath.playlists,
            builder: (context, state) => const PlaylistsView(),
          ),
          GoRoute(
            path: AppRoutePath.albums,
            builder: (context, state) => const AlbumsView(),
          ),
          GoRoute(
            path: AppRoutePath.performers,
            builder: (context, state) => const PerformersView(),
          ),
          GoRoute(
            path: AppRoutePath.save,
            builder: (context, state) => const SaveView(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: AppRoutePath.profile,
            builder: (context, state) => const ProfileView(),
          ),
          GoRoute(
            path: AppRoutePath.settings,
            builder: (context, state) => const SettingsView(),
          ),
        ],
      ),
    ],
  );
}
