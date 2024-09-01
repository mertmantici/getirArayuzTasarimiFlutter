import 'package:flutter/material.dart';

import '../../database/entity/urunler.dart';

class UrunSayfa extends StatefulWidget {
  const UrunSayfa({super.key});

  @override
  State<UrunSayfa> createState() => _UrunSayfaState();
}

class _UrunSayfaState extends State<UrunSayfa> {
  var tfArama = TextEditingController();
  Future<List<Urunler>> urunYukle() async {
    var urunListesi = <Urunler>[];
    var u1 = Urunler(
        id: 1,
        ad: "Santa Maria Armut",
        fiyat: 69.99,
        gram: "900 g",
        resim: "armut.jpg");
    var u2 = Urunler(
        id: 2,
        ad: "Beypazarı Maden Suyu",
        fiyat: 35.55,
        gram: "6x200 ml",
        resim: "beypazari.jpg");
    var u3 = Urunler(
        id: 3,
        ad: "Mutlu Makarna",
        fiyat: 13.99,
        gram: "500 g",
        resim: "makarna.jpg");
    var u4 = Urunler(
        id: 4,
        ad: "Kuzeyden Su",
        fiyat: 12.20,
        gram: "330 ml",
        resim: "su.jpg");
    var u5 = Urunler(
        id: 5,
        ad: "Pürsu Cam",
        fiyat: 23.99,
        gram: "750 ml",
        resim: "sucam.jpg");
    var u6 = Urunler(
        id: 6,
        ad: "İçim %3 Yağlı Süt",
        fiyat: 44.30,
        gram: "1 L",
        resim: "sut.jpg");
    var u7 = Urunler(
        id: 7, ad: "Üzüm", fiyat: 42.99, gram: "500 g", resim: "uzum.jpg");
    var u8 = Urunler(
        id: 8,
        ad: "Sütaş Kaymaksız Yoğurt",
        fiyat: 47.99,
        gram: "600 g",
        resim: "yogurt.jpg");
    var u9 = Urunler(
        id: 9,
        ad: "Komili Riviera Zeytinyağı",
        fiyat: 699.95,
        gram: "3 L",
        resim: "zeytinyagi.jpg");

    urunListesi.addAll([u1, u2, u3, u4, u5, u6, u7, u8, u9]);
    return urunListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEEF0),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_rounded),
                    color: const Color(0xFF593EB1),
                    iconSize: 35,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 7,
                  child: TextField(
                    controller: tfArama,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Ürün Ara",
                        hintStyle: TextStyle(color: Color(0xFFB6B6B6))),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mic_none_rounded),
                    color: const Color(0xFF697487),
                    iconSize: 35,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Popüler Aramalar",
                    style: TextStyle(color: Color(0xFF6A707C)),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: const Color(0xFFffffff),
                height: 65,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          onPressed: () {},
                          child: const Text(
                            "cips",
                            style: TextStyle(color: Color(0xFF6A5CA9)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          onPressed: () {},
                          child: const Text(
                            "su",
                            style: TextStyle(color: Color(0xFF6A5CA9)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          onPressed: () {},
                          child: const Text(
                            "dondurma",
                            style: TextStyle(color: Color(0xFF6A5CA9)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          onPressed: () {},
                          child: const Text(
                            "süt",
                            style: TextStyle(color: Color(0xFF6A5CA9)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          onPressed: () {},
                          child: const Text(
                            "çikolata",
                            style: TextStyle(color: Color(0xFF6A5CA9)),
                          )),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Çok Satanlar",
                    style: TextStyle(color: Color(0xFF6A707C)),
                  ),
                ],
              ),
            ),
            FutureBuilder(
                future: urunYukle(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var urunListesi = snapshot.data;
                    return Expanded(
                      child: Container(
                        color: Colors.white,
                        child: GridView.builder(
                          itemCount: urunListesi!.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, childAspectRatio: 1 / 1.3),
                          itemBuilder: (context, index) {
                            var urun = urunListesi[index];
                            return Column(
                              children: [
                                Stack(children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: const Color(0xFFF2F1F6)),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      width: 100,
                                      height: 100,
                                      child: Image.asset(
                                          "resimler/${urun.resim}")),
                                  Positioned(
                                    right: -15,
                                    top: -15,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add),
                                      color: const Color(0xFF583ABC),
                                      iconSize: 30,
                                    ),
                                  )
                                ]),
                                Text(
                                  "₺${urun.fiyat}",
                                  style: const TextStyle(
                                      color: Color(0xFF563BAF),
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                  child: Text(
                                    urun.ad.length < 10
                                        ? urun.ad
                                        : "${urun.ad.substring(0, 10)}...",
                                  ),
                                ),
                                Expanded(
                                    child: Text(
                                  urun.gram,
                                  style:
                                      const TextStyle(color: Color(0xFFA8A8A8)),
                                ))
                              ],
                            );
                          },
                        ),
                      ),
                    );
                  } else {
                    return const Center();
                  }
                }),
          ],
        ),
      ),
    );
  }
}
