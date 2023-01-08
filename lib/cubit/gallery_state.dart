part of 'gallery_cubit.dart';

@immutable
abstract class GalleryState {}

class GalleryInitial extends GalleryState {}

class GalleryLoading extends GalleryState {}

class GalleryLoaded extends GalleryState {
  List<CupangModel> listDataCupangModel;
  GalleryLoaded({required this.listDataCupangModel});
  List<CupangModel> getDataCupang() => this.listDataCupangModel;
}

class GalleryFailed extends GalleryState {}
