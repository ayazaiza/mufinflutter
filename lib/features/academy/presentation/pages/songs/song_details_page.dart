import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/presentation/cubits/enrolls/enrolled_details/enrolled_details_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/event_enrolls/event_enroll_details/event_enroll_details_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/loading_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/router_const.dart';
import '../../../domain/entities/utils/song.dart';
import '../../cubits/song/song_details/song_details_cubit.dart';
import '../../widgets/details_widget.dart';
import '../../widgets/heading_title_widget.dart';

class SongDetailsPage extends HookWidget {
  const SongDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<SongDetailsCubit, SongDetailsState>(
          builder: (context, state) {
            return Text(
                state.song != null ? state.song!.songName : AppStrings.appName);
          },
        ),
      ),
      body: BlocBuilder<SongDetailsCubit, SongDetailsState>(
        builder: (context, state) {
          return LoadingErrorWidget<Song>(
              isLoading: state.isLoading,
              error: state.error,
              type: state.song,
              child: state.song == null
                  ? Container()
                  : SafeArea(
                      child: Column(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    HeadingTitleWidget(
                                        title: state.song!.songName),
                                    DetailsWidget(
                                      title: AppStrings.songTitle,
                                      detail: state.song!.songName,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.songUrl,
                                      detail: state.song!.songUrl,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.description,
                                      detail: state.song!.songLongDesc,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.shortDescription,
                                      detail: state.song!.songShortDesc,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.songAlbum,
                                      detail: state.song!.songAlbum,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.songArtist,
                                      detail: state.song!.songArtist,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.songGenre,
                                      detail: state.song!.songGenre,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.studentName,
                                      detail: state.song!.studentName,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.time,
                                      detail: state.song!.timestamp
                                          .toDate()
                                          .toString(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
        },
      ),
    );
  }
}
