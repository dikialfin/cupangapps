import 'package:cupang_apps/cubit/gallery_cubit.dart';
import 'package:cupang_apps/cubit/navbar_cubit.dart';
import 'package:cupang_apps/models/cupang_model.dart';
import 'package:cupang_apps/pages/beranda.dart';
import 'package:cupang_apps/pages/gallery.dart';
import 'package:cupang_apps/pages/informasi.dart';
import 'package:cupang_apps/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavbarMenu extends StatefulWidget {
  const NavbarMenu({Key? key}) : super(key: key);

  @override
  State<NavbarMenu> createState() => _NavbarMenuState();
}

class _NavbarMenuState extends State<NavbarMenu> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, pages>(
      builder: (context, state) {
        return Container(
          height: 64,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(90, 0, 0, 20),
                    blurRadius: 1.0,
                    offset: Offset(0, 2))
              ]),
          child: Row(
            children: [
              Expanded(child: BlocBuilder<GalleryCubit, GalleryState>(
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () {
                      if (!context
                          .read<NavbarCubit>()
                          .changePage(pages.gallery)) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('oops, ada kesalahan'),
                          backgroundColor: Colors.red,
                        ));
                      }
                      if (state is GalleryLoaded) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GalleryPage(
                                      dataIkan: state.getDataCupang(),
                                    )));
                      }
                      ;
                    },
                    child: BlocBuilder<NavbarCubit, pages>(
                      builder: (context, state) {
                        return Container(
                          color: state == pages.gallery
                              ? purpleColor
                              : Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/img/gallery_icon.png'),
                                width: 18,
                                height: 18,
                                color: state == pages.gallery
                                    ? Colors.white
                                    : purpleColor,
                              ),
                              Text(
                                'Galeri',
                                style: textSemiBold.copyWith(
                                    fontSize: 12,
                                    color: state == pages.gallery
                                        ? Colors.white
                                        : purpleColor),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  if (!context.read<NavbarCubit>().changePage(pages.beranda)) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('oops, ada kesalahan'),
                      backgroundColor: Colors.red,
                    ));
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BerandaPage()));
                },
                child: Container(
                  color: state == pages.beranda ? purpleColor : Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/img/beranda_icon.png'),
                        width: 18,
                        height: 18,
                        color:
                            state == pages.beranda ? Colors.white : purpleColor,
                      ),
                      Text(
                        'Beranda',
                        style: textSemiBold.copyWith(
                            fontSize: 12,
                            color: state == pages.beranda
                                ? Colors.white
                                : purpleColor),
                      )
                    ],
                  ),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  if (!context.read<NavbarCubit>().changePage(pages.beranda)) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('oops, ada kesalahan'),
                      backgroundColor: Colors.red,
                    ));
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InformasiPage()));
                },
                child: Container(
                  color: state == pages.informasi ? purpleColor : Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/img/informasi_icon.png'),
                        width: 18,
                        height: 18,
                        color: state == pages.informasi
                            ? Colors.white
                            : purpleColor,
                      ),
                      Text(
                        'Informasi',
                        style: textSemiBold.copyWith(
                            fontSize: 12,
                            color: state == pages.informasi
                                ? Colors.white
                                : purpleColor),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        );
      },
    );
  }
}
