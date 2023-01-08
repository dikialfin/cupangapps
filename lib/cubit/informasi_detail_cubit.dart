import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

enum informasiDetail { budidaya, pemasaran, tentang, init }

class InformasiDetailCubit extends Cubit<informasiDetail> {
  InformasiDetailCubit() : super(informasiDetail.init);

  void setPage({required informasiDetail pageDetail}) {
    emit(pageDetail);
  }
}
