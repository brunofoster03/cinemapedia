import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/widgets/delegates/search_movie_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/movie.dart';

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  Icons.movie_outlined,
                  color: colors.primary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Cinemapedia',
                  style: titleStyle,
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      final searchedMovies = ref.read(searchedMoviesProvider);
                      final searchQuery = ref.read(searchQueryProvider);
                      showSearch<Movie?>(
                          query: searchQuery,
                          context: context,
                          delegate: SearchMovieDelegate(
                            initialMovies: searchedMovies,
                            searchMovies: ref.read(searchedMoviesProvider.notifier).searchMoviesByQuery));
                    },
                    icon: const Icon(Icons.search_outlined))
              ],
            ),
          ),
        ));
  }
}