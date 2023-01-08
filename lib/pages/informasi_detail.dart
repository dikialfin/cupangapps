import 'package:cupang_apps/cubit/informasi_detail_cubit.dart';
import 'package:cupang_apps/pages/informasi.dart';
import 'package:cupang_apps/style.dart';
import 'package:cupang_apps/widget/budidaya.dart';
import 'package:cupang_apps/widget/pemasaran.dart';
import 'package:cupang_apps/widget/tentang_ikan_cupang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InformasiDetailPage extends StatefulWidget {
  final String titlePage;
  const InformasiDetailPage({Key? key, required this.titlePage})
      : super(key: key);

  @override
  State<InformasiDetailPage> createState() =>
      _InformasiDetailPageState(titlePage: this.titlePage);
}

class _InformasiDetailPageState extends State<InformasiDetailPage> {
  final String titlePage;
  _InformasiDetailPageState({required this.titlePage});

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
          appBar: AppBar(
              backgroundColor: purpleColor,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              centerTitle: true,
              title: Text(
                this.titlePage,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textBold.copyWith(fontSize: 14, color: Colors.white),
              )),
          backgroundColor: primaryColor,
          body: Padding(
              padding: EdgeInsets.all(24),
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        BlocBuilder<InformasiDetailCubit, informasiDetail>(
                          builder: (context, state) {
                            if (state == informasiDetail.budidaya) {
                              return Budidaya();
                            }
                            if (state == informasiDetail.pemasaran) {
                              return Pemasaran();
                            }
                            if (state == informasiDetail.tentang) {
                              return TentangIkanCupang();
                            }
                            return Container();
                          },
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
        onWillPop: _onWillPop);
  }
}
