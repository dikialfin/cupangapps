import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

enum pages { gallery, beranda, informasi }

class NavbarCubit extends Cubit<pages> {
  NavbarCubit() : super(pages.beranda);

  bool changePage(pages pagesType) {
    switch (pagesType) {
      case pages.gallery:
        emit(pages.gallery);
        return true;
        break;
      case pages.beranda:
        emit(pages.beranda);
        return true;
        break;
      case pages.informasi:
        emit(pages.informasi);
        return true;
        break;
      default:
        return false;
    }
  }
}
