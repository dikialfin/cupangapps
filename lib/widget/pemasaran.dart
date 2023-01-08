import 'package:cupang_apps/style.dart';
import 'package:flutter/material.dart';

class Pemasaran extends StatelessWidget {
  const Pemasaran({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/img/img_content/pemasaran.png'),
                  fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(8)),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'Cara Pemasaran Ikan Cupang',
          style: textBold.copyWith(fontSize: 15),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          '1.Menentukan Lokasi Penjualan \n',
          style: textBold.copyWith(
            fontSize: 12,
          ),
        ),
        Text(
          'menetukan lokasi penjualan dengan cara melihat perkembangan di setiap lokasi yang ingin anda jelajahi. kalau anda berjualan di lokasi yang tidak tepat,maka resiko nya adalah ikan anda tidak akan laku ataupun lambat terjual,cara menentukan lokasi nya adalah selalu melihat perkembangan pada lokasi tersebut,contoh jika suatu lokasi tersebut lagi nge tren ikan cupang maka anda dapat berjualan ikan cupang disana, cara anda melihat nya jelas di sana banyak orang yang memlihara cupang ataupun menjual nya.loh bukan nya jika sudah ada penjual maka loksai tersebut sudah tidak bagus lagi untuk di jajaki. kalimat tersebut salah besar, JANGAN TAKUT BERSAING.itu kunci nya,lagian rezeki sudah di atur oleh yang maha kuasa.',
          style: textRegular.copyWith(fontSize: 12),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '2.Buatlah Promosi\n',
          style: textBold.copyWith(fontSize: 12),
        ),
        Text(
          'bagaimana cara nya anda ber promosi?salah satu contoh nya adalah, memberikan harga yang miring terhadap ikan. tetapi jangan terlalu lama dalam melakukan langkah ini, maksud nya jangan terlalu lama bagaimana ya? maksud nya lihat lah situasi nya, jika suudah banyak pelanggan yang membeli ikan ke toko anda maka hentikan langkah ini. langkah ini hanya untuk menarik minat pelanggan agar datang ke toko anda. . jika anda diberikan harga sedikit miring dan kualitas ikan tersebut bagus jelas anda akan mampir ke toko yang memberikan harga miring tersebut. dan keesokan nya anda akan datang lagi untuk mencari ikan yang bagus dengan harga yang miring lagi bukan? nah otomatis anda menjadi pelanggan si penjual,dan anda tidak akan sadar jika si penjual akan menaikan harga ikan dengan cara pelan-pelan.',
          style: textRegular.copyWith(fontSize: 12),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '3.Menyebarkan Informasi\n',
          style: textBold.copyWith(fontSize: 12),
        ),
        Text(
          'menyebarkan informasi sangat di perlukan disini,fungsi nya agar orang orang tahu kalau toko anda menjual ikan hias, cara nya mudah cukup menulis di kertas hvs yang berwarna dan tulis lah dengan bagus dan rapi serta rangkai lah kata kata yang se menarik mungkin agar orang yg membaca nya menjadi penasaran dan akan datang ke toko anda,nah bagaimana cara nya membuat tulisan atau merangkai kata agar orang tertarik atau akan datang ke toko anda? kita kembalikan ke poin nomor dua(langkah ke dua) buat lah promosi atau tulis lah beberpa jenis ikan yang harga nya miring dari pasaran. dengan demikian maka orang akan tertarik mengunjungi toko anda.jika anda mendapat kan penawaran yang seperti itu jelas anda tertarik bukan',
          style: textRegular.copyWith(fontSize: 12),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '4.Mengadakan Kontes\n',
          style: textBold.copyWith(fontSize: 12),
        ),
        Text(
          'langkah ini sebenar nya perlu dilakukan dan juga bisa tidak dilakukan.mengapa demikian?lihat lah situasi,jika di lokasi tempat anda berjualan itu sedikit orang yang suka ataupun hobi memelihara ikan hias. atau orang orang yang hobi tersebut semakin memudar? maka jalankan lah langkah ini, dengan mengadakan kontes maka akan orang akan tertarik untuk memlihara ikan hias tersebut. jika di tempat anda sudah banyak ataupun semakin ramai orang yang hobi memlihara ikan hias maka langkah ini tidak begitu diperlukan, tetapi tidak adda salah nya jika anda membuat kontes, ini akan&nbsp; bernilai positif terhadap penjualan anda, bahkan toko anda pun akan di kenal oleh banyak orang.bagaimana cara mengadkan kontes? buat lah kontes semenarik mungkin dengan cara memberikan hadiah yang cukup besar, jika modal anda terbatas, maka anda juga bisa mnegajukan proposal ataupun minta bantuan,sponsor dll.',
          style: textRegular.copyWith(fontSize: 12),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '5.Buat Tanda Pengenal Di Depan Toko\n',
          style: textBold.copyWith(fontSize: 12),
        ),
        Text(
          'tanda pengenal cukup penting,disini agar orang mudah mengenali ataupun mencari toko anda, contoh nya anda memasang spanduk di depan toko atau pun plang dengan tulisan yang menarik, dan jangan lupa cantumkan nama toko anda serta tulis lah hal yang se,menarik mungkin agar orang mau berkunjung ke toko anda contoh nya ya seperti mencantumkan hal-hal yang tidak di buat oleh toko lain.contoh kata yang menarik',
          style: textRegular.copyWith(fontSize: 12),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '6.Buatlah Social Media\n',
          style: textBold.copyWith(fontSize: 12),
        ),
        Text(
          'loh kok buat sosial media? buakn nya ini tentang bsinis ya? ini kan melenceng!! iya benar, ini memang sedikit melenceng dari topik tetapi sosial media juga sangat diperlukan fungsi nya apa? fungsi nya adalah untuk memperkenal kan toko dan ikan anda. cara nya bagaimana? buat lah akun sosial media seperti di facebook,instagram dan jika perlu buat lah blog dan akun youtube yang berisikan seputar ikan hias, dan janganlupa sertakan alamat anda dengan lengkap. jika di facebook cari lah grup ikan hias, nah disitu anda juga memasarkan ikan anda, dan beriklan lah semenarik mungkin. semakin anda banyak bergabung ke grup maka semakin bagus pula. dan jangan lupa sering lah update dan berbagi tips seputar ikan hias',
          style: textRegular.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
