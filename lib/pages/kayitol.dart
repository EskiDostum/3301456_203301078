import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/models/sqlite/sq_helper.dart';
import 'package:mobilprogramlamaodev/models/sqlite/sq_helper_modul.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'package:mobilprogramlamaodev/widgets/alertdialog.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/widgets/butonbuild1.dart';
import 'package:mobilprogramlamaodev/widgets/textformfieldbuild.dart';

class KayitOlPage extends StatefulWidget {
  const KayitOlPage({Key? key}) : super(key: key);

  @override
  State<KayitOlPage> createState() => _KayitOlPageState();
}

class _KayitOlPageState extends State<KayitOlPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController emailk = TextEditingController();
  TextEditingController passwordtextk = TextEditingController();
  @override
  void initState() {
    super.initState();
    auth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(7),
            child: Container(
              width: 350.w,
              height: 122.h,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Center(
                  child: Text(
                "Farketmez Makineye Hoş geldiniz ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          ),
          // İnput girişlerinin olduğu textformfield
          SizedBox(
            width: 355.w,
            height: 150.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 300.w,
                  height: 65.h,
                  child: buildinput(helpertext: "İsminiz ", controller: emailk),
                ),
                SizedBox(
                  width: 300.w,
                  height: 65.h,
                  child: buildinput(
                      helpertext: "Şifreniz ", controller: passwordtextk),
                ),
              ],
            ),
          ),
          // buton kısmı
          SizedBox(
            child: Row(
              children: [
                Flexible(
                    fit: FlexFit.tight,
                    child: butonbuild(
                        text: "Kayıt Olun",
                        onPressed: () async {
                          try {
                            await auth.createUserWithEmailAndPassword(
                                email: emailk.text,
                                password: passwordtextk.text);
                            userdatadd();
                            DataBaseHandler().insertReports([
                              Report(
                                  name: "Alper",
                                  email: emailk.text,
                                  password: passwordtextk.text)
                            ]);
                            setState(() {
                              Future.delayed(const Duration(seconds: 3), () {
                                Get.toNamed(Routes.HOME);
                              });
                            });
                          } catch (e) {
                            return showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alertDialoga(
                                      text1: " hatalı işlem yapılmıştır ");
                                });
                          }
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }

  // auth eleman ekleme
  //ALEEEEEEEERTTTTTT ( LACOLHOST ÜZERİNDEN YAPILDIĞINDA TİCKER HATASI ALINIYOR ÇÖZ )
  void authadddata() async {
    var _userCredantial = await auth.createUserWithEmailAndPassword(
        email: emailk.text, password: passwordtextk.text);
  }

//firestore için ekleme alanı
  userdatadd() async {
    // sanırım sıkıntı çıkartıyor  var id = auth.idTokenChanges();
    Map<String, dynamic> _adduser = <String, dynamic>{};
    _adduser["Name"] = "Eski";
    _adduser["Lastname"] = "Dostum";
    _adduser["E-Mail"] = emailk.text;
    _adduser["password"] = passwordtextk.text;
    // _adduser["Userid"] = ;
    _firestore.collection("Users").add(_adduser);
  }
}

/*  
 if (passwordtextk.text.length > 6 && " Select * from emailk.text where LIKE " %@hotmail.com%" ") {
                          authadddata();
                          userdatadd();
                          // sqlfile add
                          DataBaseHandler().insertReports([
                            Report(
                                name: "Alper",
                                email: emailk.text,
                                password: passwordtextk.text)
                          ]);
                          //
                          // showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return alertDialoga(
                          //           text1: ""); // buraya bilgi eklenecek
                          //     });
                          setState(() {
                            Future.delayed(const Duration(seconds: 3), () {
                              Get.toNamed(Routes.HOME);
                            });
                          });
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertDialoga(
                                    text1: " Min karakter sayısı 6  ");
                              });
                        }
                      }, */