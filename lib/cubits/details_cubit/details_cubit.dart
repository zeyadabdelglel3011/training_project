import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:training_project/data/models/details_model.dart';
import 'package:training_project/data/remote_data_source/details_controller.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());
  DetailsModel detailsModel = DetailsModel();
  getDetailsData({required num id})async{
    emit(DetailsLoading());
    var response = await DetailsController().getDetailsData(id: id);
    if(response != null){
      emit(DetailsSuccess());
    }
    else{
      emit(DetailsFailed());
    }
  }
}
