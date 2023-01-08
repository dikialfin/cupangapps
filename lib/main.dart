import 'package:cupang_apps/cubit/gallery_cubit.dart';
import 'package:cupang_apps/cubit/informasi_detail_cubit.dart';
import 'package:cupang_apps/cubit/navbar_cubit.dart';
import 'package:cupang_apps/pages/beranda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';

void main() {
  // disable apps screen rotate
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
        BlocProvider(
          create: (context) => GalleryCubit(),
        ),
        BlocProvider(
          create: (context) => InformasiDetailCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sikumbang Hobbies',
        home: BerandaPage(),
      ),
    );
  }
}
