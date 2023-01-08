import 'package:cupang_apps/models/cupang_model.dart';
import 'package:cupang_apps/style.dart';
import 'package:cupang_apps/widget/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/navbar_cubit.dart';

class GalleryPage extends StatefulWidget {
  final List<CupangModel> dataIkan;
  const GalleryPage({Key? key, required this.dataIkan}) : super(key: key);

  @override
  State<GalleryPage> createState() =>
      _GalleryPageState(dataIkan: this.dataIkan);
}

class _GalleryPageState extends State<GalleryPage> {
  final List<CupangModel> dataIkan;
  _GalleryPageState({required this.dataIkan});

  @override
  void initState() {
    // TODO: implement initState
    context.read<NavbarCubit>().changePage(pages.gallery);
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
              'Gallery Ikan Cupang',
              style: textBold.copyWith(fontSize: 24),
            )),
        CircleAvatar(
          backgroundImage: AssetImage('assets/img/logo.png'),
        )
      ]),
    );
  }

  Widget card({required namaIkan, required urlPath}) {
    return Container(
      width: double.infinity,
      height: 226,
      margin: EdgeInsets.symmetric(vertical: 8),
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
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          width: double.infinity,
          height: 182,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(urlPath), fit: BoxFit.cover)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              namaIkan,
              style: textBold.copyWith(fontSize: 14),
            ),
          ],
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> listCard = [];

    for (var element in dataIkan) {
      listCard.add(card(namaIkan: element.namaIkan, urlPath: element.urlPath));
    }

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
                  ...listCard,
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
