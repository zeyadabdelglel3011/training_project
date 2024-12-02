import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:training_project/data/remote_data_source/image_request.dart';

import '../../data/models/movie_model.dart';
import '../../data/remote_data_source/movie_controller.dart';
import 'image_state.dart';



class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageInitial());
  MovieModel movieModel = MovieModel();
  getImageData({required num id})async
  {
    emit(ImageLoading());
    var res = await ImageRequest.getImageData(id : id);
    if(res != null)
    {
      movieModel = res as MovieModel;
      emit(ImageSuccess());
    }
    else {
      emit(ImageFailed());
    }
  }
}

