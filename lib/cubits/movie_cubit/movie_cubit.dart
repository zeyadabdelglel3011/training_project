import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/movie_model.dart';
import '../../data/remote_data_source/movie_controller.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());
  MovieModel movieModel = MovieModel();
  getMovieData()async
  {
    emit(MovieLoading());
    var response = await MovieController.getMovieData();
    if(response != null)
    {
      movieModel = response ;
      emit(MovieSuccess());
    }
    else {
      emit(MovieFailed());
    }
  }
}
