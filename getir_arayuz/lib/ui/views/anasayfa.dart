import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getir_arayuz/ui/views/kampanya_sayfa.dart';
import 'package:getir_arayuz/ui/views/profil_sayfa.dart';
import 'package:getir_arayuz/ui/views/urun_sayfa.dart';

import '../../database/entity/kategoriler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  late Timer _timer;

  Future<List<Kategoriler>> kategorileriYukle() async {
    var kategoriListesi = <Kategoriler>[];
    var k1 = Kategoriler(id: 1, ad: "Süper İkili", resim: "superikili.png");
    var k2 = Kategoriler(id: 2, ad: "İndirimler", resim: "indirimler.png");
    var k3 = Kategoriler(id: 3, ad: "Gol Olur", resim: "gololur.png");
    var k4 =
        Kategoriler(id: 4, ad: "Kazandıranlar", resim: "kazandiranlar.png");
    var k5 =
        Kategoriler(id: 5, ad: "Şımart Kendini", resim: "simartkendini.png");
    var k6 = Kategoriler(id: 6, ad: "Yaz Bitmesin", resim: "yazbitmesin.png");
    var k7 = Kategoriler(id: 7, ad: "Fuse Tea", resim: "fusetea.png");
    var k8 = Kategoriler(id: 8, ad: "Su & İçecek", resim: "suveicecek.png");
    var k9 = Kategoriler(id: 9, ad: "Meyve & Sebze", resim: "meyvevesebze.png");
    var k10 = Kategoriler(id: 10, ad: "Süt Ürünleri", resim: "suturunleri.png");
    var k11 = Kategoriler(id: 11, ad: "Fırından", resim: "firindan.png");
    var k12 =
        Kategoriler(id: 12, ad: "Atıştırmalık", resim: "atistirmalik.png");
    var k13 = Kategoriler(id: 13, ad: "Dondurma", resim: "dondurma.png");
    var k14 = Kategoriler(id: 14, ad: "Temel Gıda", resim: "temelgida.png");
    var k15 = Kategoriler(id: 15, ad: "Kahvaltılık", resim: "kahvaltilik.png");
    var k16 = Kategoriler(id: 16, ad: "Yiyecek", resim: "yiyecek.png");
    var k17 = Kategoriler(id: 17, ad: "Fit & Form", resim: "fitveform.png");
    var k18 =
        Kategoriler(id: 18, ad: "Kişisel Bakım", resim: "kisiselbakim.png");
    var k19 = Kategoriler(id: 19, ad: "Ev Bakım", resim: "evbakim.png");
    var k20 = Kategoriler(id: 20, ad: "Ev & Yaşam", resim: "evveyasam.png");
    var k21 = Kategoriler(id: 21, ad: "Evcil Hayvan", resim: "evcilhayvan.png");
    var k22 = Kategoriler(id: 22, ad: "Bebek", resim: "bebek.png");
    var k23 =
        Kategoriler(id: 23, ad: "Cinsel Sağlık", resim: "cinselsaglik.png");

    kategoriListesi.addAll([
      k1,
      k2,
      k3,
      k4,
      k5,
      k6,
      k7,
      k8,
      k9,
      k10,
      k11,
      k12,
      k13,
      k14,
      k15,
      k16,
      k17,
      k18,
      k19,
      k20,
      k21,
      k22,
      k23
    ]);

    return kategoriListesi;
  }

  final List<String> imageList = [
    'resimler/algidaindirim.png',
    'resimler/doldursu.png',
    'resimler/dortyuztlindirim.png',
    'resimler/elliindirim.png',
    'resimler/haftaningorevleri.png',
    'resimler/siparissenden.png',
    'resimler/yuzdeotuz.png',
    'resimler/yuztlcekilis.png',
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < imageList.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      _buildHomePage(),
      UrunSayfa(), // Example page
      ProfilSayfa(), // Example page
      KampanyaSayfa(), // Example page
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDEEF0),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFF5D3EBD),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            "getir",
            style: TextStyle(color: Color(0xFFFDD012)),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              50,
            ),
            side: const BorderSide(color: Colors.white, width: 3),
          ),
          backgroundColor: const Color(0xFF6B41DB),
          onPressed: () {},
          child: SizedBox(
              width: 40, height: 40, child: Image.asset("resimler/float.png")),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFEDEEF0),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF5C3FBC),
        unselectedItemColor: const Color(0xFFA0A0A0),
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.search,
                size: 40,
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.person,
                size: 40,
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.card_giftcard,
                size: 40,
              )),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }

  Widget _buildHomePage() {
    return FutureBuilder<List<Kategoriler>>(
      future: kategorileriYukle(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var kategorilerListesi = snapshot.data!;
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 340,
                      child: const Expanded(
                        flex: 7,
                        child: Row(
                          children: [
                            Text(
                              "Ev,",
                              style: TextStyle(color: Color(0xFF6343A0)),
                            ),
                            Text(
                                "Adres ... mahallesi ... sokağı no... ANKA..."),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF563EAE),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      color: const Color(0xFFFFD00C),
                      child: const Column(
                        children: [
                          Text(
                            "TVS",
                            style: TextStyle(color: Color(0xFF6343A0)),
                          ),
                          Text(
                            "20-30 dk",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6343A0),
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        imageList[index],
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  itemCount: kategorilerListesi.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, childAspectRatio: 1 / 1.3),
                  itemBuilder: (context, index) {
                    var kategori = kategorilerListesi[index];
                    return Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("resimler/${kategori.resim}"),
                          ),
                          Text(
                            kategori.ad.length <= 10
                                ? kategori.ad
                                : '${kategori.ad.substring(0, 7)}...',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
