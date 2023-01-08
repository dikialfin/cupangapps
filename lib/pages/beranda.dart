import 'package:cupang_apps/cubit/gallery_cubit.dart';
import 'package:cupang_apps/cubit/informasi_detail_cubit.dart';
import 'package:cupang_apps/cubit/navbar_cubit.dart';
import 'package:cupang_apps/pages/gallery.dart';
import 'package:cupang_apps/pages/informasi_detail.dart';
import 'package:cupang_apps/style.dart';
import 'package:cupang_apps/widget/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cupang_apps/models/cupang_model.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<NavbarCubit>().changePage(pages.beranda);
    context.read<GalleryCubit>().getDataCupang();
    super.initState();
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

  Widget card({required String nama_ikan, required String url_path}) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      width: 216,
      height: 160,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(90, 0, 0, 20),
                blurRadius: 1.0,
                offset: Offset(0, 2))
          ]),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: 208,
          height: 124,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(url_path), fit: BoxFit.cover)),
        ),
        Text(
          nama_ikan,
          style: textBold.copyWith(fontSize: 14),
        ),
      ]),
    );
  }

  Widget slider(List<CupangModel> data) {
    return Container(
      height: 160,
      child: ListView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          children: [
            card(nama_ikan: data[0].namaIkan, url_path: data[0].urlPath),
            card(nama_ikan: data[1].namaIkan, url_path: data[1].urlPath),
            card(nama_ikan: data[2].namaIkan, url_path: data[2].urlPath),
            card(nama_ikan: data[3].namaIkan, url_path: data[3].urlPath),
          ]),
    );
  }

  Widget cardMenu(
      {required String title, required String subtitle, required action}) {
    return Container(
      height: 72,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(90, 0, 0, 20),
                blurRadius: 1.0,
                offset: Offset(0, 2))
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textBold.copyWith(fontSize: 14),
              ),
              Text(
                subtitle,
                style: textRegular.copyWith(fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: action,
          child: Text(
            '>',
            style: textBold.copyWith(color: Colors.white),
          ),
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(9),
              backgroundColor: purpleColor,
              shape: CircleBorder()),
        )
      ]),
    );
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gallery Ikan Cupang',
                        style: textBold.copyWith(fontSize: 18),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      BlocBuilder<GalleryCubit, GalleryState>(
                        builder: (context, state) {
                          if (state is GalleryLoaded) {
                            return GestureDetector(
                                onTap: () {
                                  if (!context
                                      .read<NavbarCubit>()
                                      .changePage(pages.gallery)) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text('oops, ada kesalahan'),
                                      backgroundColor: Colors.red,
                                    ));
                                  }
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GalleryPage(
                                                dataIkan: state.getDataCupang(),
                                              )));
                                },
                                child: Text(
                                  'Selengkapnya >',
                                  style: textRegular.copyWith(
                                      fontSize: 12, color: purpleTransparent),
                                ));
                          }
                          return Container();
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  BlocBuilder<GalleryCubit, GalleryState>(
                    builder: (context, state) {
                      if (state is GalleryLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is GalleryLoaded) {
                        return slider(state.getDataCupang());
                      }
                      return Center(
                        child: Text('oops terjadi kesalahan'),
                      );
                    },
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Dari Hobi Jadi Rejeki',
                    style: textBold.copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  cardMenu(
                      title: 'Budidaya Ikan Cupang',
                      subtitle: 'Cara mudah budidaya ikan cupang',
                      action: () {
                        context
                            .read<InformasiDetailCubit>()
                            .setPage(pageDetail: informasiDetail.budidaya);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InformasiDetailPage(
                                      titlePage: "Budidaya Ikan Cupang",
                                    )));
                      }),
                  SizedBox(
                    height: 12,
                  ),
                  cardMenu(
                      title: 'Pemasaran ikan cupang',
                      subtitle: 'Cara mudah memasarkan ikan cupang',
                      action: () {
                        context
                            .read<InformasiDetailCubit>()
                            .setPage(pageDetail: informasiDetail.pemasaran);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InformasiDetailPage(
                                      titlePage: 'Pemasaran Ikan Cupang',
                                    )));
                      }),
                  SizedBox(
                    height: 12,
                  ),
                  cardMenu(
                      title: 'Tentang ikan cupang',
                      subtitle: 'Mengenal lebih dekat ikan cupang',
                      action: () {
                        context
                            .read<InformasiDetailCubit>()
                            .setPage(pageDetail: informasiDetail.tentang);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InformasiDetailPage(
                                      titlePage: 'Tentang Ikan Cupang',
                                    )));
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
