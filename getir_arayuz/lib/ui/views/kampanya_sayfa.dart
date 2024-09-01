import 'package:flutter/material.dart';

class KampanyaSayfa extends StatefulWidget {
  const KampanyaSayfa({super.key});

  @override
  State<KampanyaSayfa> createState() => _KampanyaSayfaState();
}

class _KampanyaSayfaState extends State<KampanyaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEEF0),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 60,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2F0FD),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Kampanyalar",
                        style: TextStyle(color: Color(0xFF69549E)),
                      ),
                    ),
                    const Text(
                      "Duyurular",
                      style: TextStyle(color: Color(0xFF787D84)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 5, // Gölgenin yayılma alanı
                                blurRadius: 7, // Gölgenin bulanıklık derecesi
                                offset: Offset(
                                    0, 3), // Gölgenin konumu: x ve y ekseninde
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Color(0xFF564294),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Kampanya Kodu Ekle",
                          style: TextStyle(color: Color(0xFF564294)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: SizedBox(
                  height: 120,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: const Color(0xFF5D3EBD),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: SizedBox(
                                        width: 30,
                                        height: 30,
                                        child: Image.asset(
                                            "resimler/arkadasgetir.png")),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    "Arkadaşını getir, ₺100 kazan",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 4,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: const Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Text(
                                        "Her yeni ilk siparişte ikinize de hediye. Davet kodu paylaş, birlikte kazanın!"),
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Color(0xFF553EA6),
                                      size: 20,
                                    ))
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Image.asset("resimler/yuzdeelli.png")),
                          )),
                      const Expanded(
                        child: Text(
                          "Yarı Yarıya Saatlere özel, seçili ürünlerde %50 indirim",
                          style: TextStyle(color: Color(0xFF533F95)),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 7,
                                child: Text(
                                    "Seçili ürünlerde 300 TL'ye kadar indirim uygulanır."),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                    color: Color(0xFF533F95),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                    "resimler/yuzdeellialgida.png")),
                          )),
                      const Expanded(
                        child: Text(
                          "Algida ürünlerinde %50 indirim!",
                          style: TextStyle(color: Color(0xFF533F95)),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 7,
                                child: Text(
                                    "Seçili ürünlerde 100 TL'ye kadar indirim uygulanır."),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                    color: Color(0xFF533F95),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 260,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child:
                                    Image.asset("resimler/yuzdeyirmibes.png")),
                          )),
                      const Expanded(
                        child: Text(
                          "Sana özel %25 indirim!",
                          style: TextStyle(color: Color(0xFF533F95)),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 7,
                                child: Text(
                                    "Kampanyadan faydalanmak için 1000TL minimum sepet tutarını geçmelisin."),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                    color: Color(0xFF533F95),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
