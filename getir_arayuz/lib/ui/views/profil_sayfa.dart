import 'package:flutter/material.dart';

class ProfilSayfa extends StatefulWidget {
  const ProfilSayfa({super.key});

  @override
  State<ProfilSayfa> createState() => _ProfilSayfaState();
}

class _ProfilSayfaState extends State<ProfilSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color(0xFFF5F5F5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(7)),
                            child: const Icon(
                              Icons.person,
                              color: Color(0xFF5C3FBD),
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "Osman Mert Mantıcı",
                              style: TextStyle(fontSize: 19),
                            ),
                          )),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF5C3FBD),
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset("resimler/mail.png")),
                        ),
                      ),
                      const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "example@example.com",
                              style: TextStyle(color: Color(0xFF717681)),
                            ),
                          )),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF5C3FBD),
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset("resimler/tel.png")),
                        ),
                      ),
                      const Expanded(
                          flex: 8,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "+90 543",
                              style: TextStyle(color: Color(0xFF717681)),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset("resimler/canlidestek.png")),
                        ),
                      ),
                      const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "Canlı Destek",
                            ),
                          )),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF5C3FBD),
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset("resimler/adres.png")),
                        ),
                      ),
                      const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "Adreslerim",
                            ),
                          )),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF5C3FBD),
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset("resimler/favori.png")),
                        ),
                      ),
                      const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "Favori Ürünlerim",
                            ),
                          )),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF5C3FBD),
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child:
                                  Image.asset("resimler/gecmissiparisler.png")),
                        ),
                      ),
                      const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "Geçmiş Siparişlerim",
                            ),
                          )),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF5C3FBD),
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset("resimler/odemeyontemi.png")),
                        ),
                      ),
                      const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "Ödeme Yöntemlerim",
                            ),
                          )),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF5C3FBD),
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset("resimler/fatura.png")),
                        ),
                      ),
                      const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "Fatura Bilgilerim",
                            ),
                          )),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF5C3FBD),
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset("resimler/iletisim.png")),
                        ),
                      ),
                      const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              "İletişim Tercihleri",
                            ),
                          )),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF5C3FBD),
                          size: 15,
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
