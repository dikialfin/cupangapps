import 'package:bloc/bloc.dart';
import 'package:cupang_apps/models/cupang_model.dart';
import 'package:cupang_apps/services/cupang_services.dart';
import 'package:meta/meta.dart';

part 'gallery_state.dart';

class GalleryCubit extends Cubit<GalleryState> {
  GalleryCubit() : super(GalleryInitial());

  void getDataCupang() {
    emit(GalleryLoading());
    List<CupangModel> data = CupangService().getDataIkan();
    emit(GalleryLoaded(listDataCupangModel: data));
  }
}
