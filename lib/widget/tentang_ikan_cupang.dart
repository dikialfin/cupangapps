import 'package:cupang_apps/style.dart';
import 'package:flutter/material.dart';

class TentangIkanCupang extends StatelessWidget {
  const TentangIkanCupang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 174,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/img/img_content/tentang_ikan_cupang.png'),
                  fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(8)),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'Asal Usul Ikan Cupang',
          style: textBold.copyWith(fontSize: 15),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'Ikan cupang sudah ada dari ratusan tahun yang lalu dan tempat asal mereka di lembah Mekong Laos, Thailand, Kamboja, Malaysia, Indonesia, Vietnam, dan sebagian wilayah di China. Ikan cupang liar dapat ditemukan di habitat aslinya di kolam dangkal, persawahan, dan aliran air yang berada di suhu lebih dari 80 derajat celsius.',
          style: textRegular.copyWith(fontSize: 12),
        ),
        Text(
          'Seperti dilansir Its A Fish Thing, cupang termasuk ke dalam kelompok khusus yang dikenal sebagai ikan labirin yang dapat bertahan hidup di air yang sangat sedikit dengan menghirup oksigen dari permukaan air. Bahkan sebelum tahun 1800-an, anak-anak di Malaysia sudah tertarik dengan cupang. Mereka mengumpulkan lebih dari 50 ikan cupang sekaligus dari sawah dan mengadakan pertarungan.',
          style: textRegular.copyWith(fontSize: 12),
        ),
        Text(
          'Ikan cupang biasanya berukuran kecil dengan panjang 6-8 cm dan bertahan hidup rata-rata selama dua tahun. Di alam liar, cupang jantan tidak pernah menumbuhkan sirip yang indah. Cupang yang ada di toko-toko ikan dengan warna sirip dari merah sampai keemasan menurut Animal Diversity Web, University of Michigan merupakan hasil dari pengembangbiakan selektif.',
          style: textRegular.copyWith(fontSize: 12),
        ),
        Text(
          'Ikan cupang liar memiliki warna hijau kusam dan sirip pendek, yang akan mereka nyalakan untuk menarik pasangan dan menangkal predator seperti salamander, kucing, dan ikan yang lebih besar.',
          style: textRegular.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
