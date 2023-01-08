import 'package:cupang_apps/style.dart';
import 'package:flutter/material.dart';

class Budidaya extends StatelessWidget {
  const Budidaya({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/img/img_content/budidaya.png'),
                  fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(8)),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'Cara Budi Daya Ikan Cupang',
          style: textBold.copyWith(fontSize: 15),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'Pilih Indukan Cupang ',
          style: textBold.copyWith(
            fontSize: 12,
          ),
        ),
        Text(
          '\nCara budidaya ikan cupang yang pertama yakni memilih indukan ikan Cupang. Kalian harus bisa memastikan indukan betina dan jantan yang sudah memasuki fase matang atau siap kawin. Untuk membedakan ikan cupang betina dan jantan tak terlalu sulit. Ikan cupang jantan memiliki ciri-ciri sirip melebar, ekor lebar mengembang, tubuh lebih besar, gerakkan lincah dan warna lebih cerah. Sedangkan, ikan cupang betina memiliki ciri-ciri sirip pendek, ekor lebih pendek, tubuh lebih kecil, gerakkan lamban dan warna kusam. Adapun ciri-ciri ikan cupang sudah matang atau siap kawin adalah sebagai berikut :',
          style: textRegular.copyWith(fontSize: 12),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'Pemijahan & Ternak Ikan Cupang ',
          style: textBold.copyWith(fontSize: 12),
        ),
        Text(
          '\nCara budidaya ikan cupang selanjutnya adalah proses Pada tahap ini, kalian hanya perlu menyiapkan wadah baskom kecil atau akuarium berukuran 20x20x20 cm. Siapkan juga gelas plastik untuk ikan cupang betina ya. Kalian bisa menyediakan tumbuhan air seperti kiambang. Setiap kawin, ikan cupang bisa menghasilkan 1000 butir telur. Nantinya telur tersebut akan menetas dalam kurun waktu 24 jam setelah pembuahan. Namun, dari 1000 butir biasanya yang bisa dipanen sekitar 30-50 ikan cupang hidup. Ya, memang tingkat kematian pembenihan ikan cupang cukup begitu, Sekedar informasi, indukan jantan bisa dikawinkan hingga 8 kali dengan interval waktu 2-3 minggu. Sementara indukan betina disarankan dikawinkan hanya satu kali saja.',
          style: textRegular.copyWith(fontSize: 12),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'Tahap Pemijahan ',
          style: textBold.copyWith(fontSize: 12),
        ),
        Text(
          '\n 1. Isi tempat pemijahan dengan air bersih 10-15 cm. \n 2. Tambahkan tanaman air \n 3. Masukkan Ikan Cupang Jantan. Biarkan ikan cupang jantan berada di dalam wadah selama satu hari. Nantinya ikan cupang jantan akan membuat gelembung-gelembung udara yang berguna untuk menyimpan telur yang sudah dibuahi. \n  4. Masukkan Ikan Cupang Betina. Setelah ikan jantan membuat gelembung, kalian bisa memasukkan indukan betina. Biasanya waktu pemijahan terjadi sekitar pukul 7-10 pagi atau pukul 4-6 sore. Perlu diingat, ikan cupang akan begitu sensitif saat kawin. Untuk itu tutup wadah dengan koran dan letakkan wadah dari kebisingan orang-orang. \n 5. Angkat Indukan Betina. Setelah terjadi pembuahan, angkat indukan betina dengan segera. Sebab, yang bertanggung jawab menjaga dan membesarkan anakan adalah ikan cupang jantan. \n 6. Biarkan Ikan Cupang jantan selama satu minggu sambil memberi makan anak kutu air.',
          style: textRegular.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
