import 'package:cupang_apps/cubit/informasi_detail_cubit.dart';
import 'package:cupang_apps/pages/informasi_detail.dart';
import 'package:cupang_apps/style.dart';
import 'package:cupang_apps/widget/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/navbar_cubit.dart';

class InformasiPage extends StatefulWidget {
  const InformasiPage({Key? key}) : super(key: key);

  @override
  State<InformasiPage> createState() => _InformasiPageState();
}

class _InformasiPageState extends State<InformasiPage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<NavbarCubit>().changePage(pages.informasi);
    super.initState();
  }

  Widget header() {
    return Container(
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            width: 158,
            child: Text(
              'Informasi Ikan Cupang',
              style: textBold.copyWith(fontSize: 24),
            )),
        CircleAvatar(
          backgroundImage: AssetImage('assets/img/logo.png'),
        )
      ]),
    );
  }

  Widget card(
      {required String title, required String content, required action}) {
    return Container(
      width: double.infinity,
      height: 170,
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(90, 0, 0, 20),
                blurRadius: 1.0,
                offset: Offset(0, 2))
          ]),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textBold.copyWith(fontSize: 14),
            ),
            Text(
              content,
              textAlign: TextAlign.start,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: textRegular.copyWith(fontSize: 12),
            ),
            TextButton(
              onPressed: action,
              child: Text(
                'Read More',
                style: textRegular.copyWith(color: Colors.white, fontSize: 12),
              ),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 27),
                  backgroundColor: purpleColor),
            )
          ]),
    );
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Anda Yakin?'),
            content: Text('Apakah anda ingin keluar?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('No'),
              ),
              TextButton(
                onPressed: () => SystemNavigator.pop(),
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: SafeArea(
              child: Stack(
            children: [
              ListView(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                children: [
                  header(),
                  SizedBox(
                    height: 50,
                  ),
                  card(
                      title: 'Budidaya Ikan Cupang',
                      content:
                          'Cara budidaya ikan cupang yang pertama yakni memilih indukan ikan Cupang. Kalian harus bisa memastikan indukan betina dan jantan yang sudah memasuki fase matang atau siap kawin. Untuk membedakan ikan cupang betina dan jantan tak terlalu sulit. Ikan cupang jantan memiliki ciri-ciri sirip melebar, ekor lebar mengembang, tubuh lebih besar, gerakkan lincah dan warna lebih cerah.',
                      action: () {
                        context
                            .read<InformasiDetailCubit>()
                            .setPage(pageDetail: informasiDetail.budidaya);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InformasiDetailPage(
                                      titlePage: "Budidaya Ikan Cupang",
                                    )));
                      }),
                  card(
                      title: 'Pemasaran Ikan Cupang',
                      content:
                          'menetukan lokasi penjualan dengan cara melihat perkembangan di setiap lokasi yang ingin anda jelajahi. kalau anda berjualan di lokasi yang tidak tepat,maka resiko nya adalah ikan anda tidak akan laku ataupun lambat terjual,cara menentukan lokasi nya adalah selalu melihat perkembangan pada lokasi tersebut,',
                      action: () {
                        context
                            .read<InformasiDetailCubit>()
                            .setPage(pageDetail: informasiDetail.pemasaran);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InformasiDetailPage(
                                    titlePage: "Pemasaran Ikan Cupang")));
                      }),
                  card(
                      title: 'Tentang Ikan Cupang',
                      content:
                          'Ikan cupang sudah ada dari ratusan tahun yang lalu dan tempat asal mereka di lembah Mekong Laos, Thailand, Kamboja, Malaysia, Indonesia, Vietnam, dan sebagian wilayah di China.Ikan cupang liar dapat ditemukan di habitat aslinya di kolam dangkal, persawahan, dan aliran air yang berada di suhu lebih dari 80 derajat celsius.',
                      action: () {
                        context
                            .read<InformasiDetailCubit>()
                            .setPage(pageDetail: informasiDetail.tentang);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InformasiDetailPage(
                                    titlePage: "Tentang Ikan Cupang")));
                      }),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
              Positioned(
                child: NavbarMenu(),
                bottom: 20,
                left: 20,
                right: 20,
              )
            ],
          )),
        ),
        onWillPop: _onWillPop);
  }
}
