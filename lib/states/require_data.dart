import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findfault/models/current_model.dart';
import 'package:findfault/states/show_map.dart';
import 'package:findfault/utility/my_dailo.dart';
import 'package:findfault/widgets/show_progess.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ReqireData extends StatefulWidget {
  const ReqireData({Key? key}) : super(key: key);

  @override
  _ReqireDataState createState() => _ReqireDataState();
}

class _ReqireDataState extends State<ReqireData> {
  List<String> breakers = [];
  String? brekerChoosed;
  bool loadBreaker = true;

  List<String> typeBreakers = ['SLG', '2PH', '2PHG', '3PH'];

  String? typeBreaker;
  String? currentMaxStr;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readDataFromdatabase();
  }

  Future<Null> readDataFromdatabase() async {
    await Firebase.initializeApp().then((value) async {
      print('## initial Success');
      await FirebaseFirestore.instance
          .collection('breaker')
          .snapshots()
          .listen((event) {
        for (var item in event.docs) {
          String nameBreaker = item.id;
          print('## nameBreaker = $nameBreaker');
          setState(() {
            loadBreaker = false;
            breakers.add(nameBreaker);
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reqire Data'),
      ),
      body: loadBreaker
          ? ShowProgess()
          : GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
              behavior: HitTestBehavior.opaque,
              child: Center(
                child: Column(
                  children: [
                    Dropdownbreaker(),
                    DropdownType(),
                    BuildCurrent(),
                    Buildcaculate()
                  ],
                ),
              ),
            ),
    );
  }

  Container Buildcaculate() {
    return Container(
      width: 250,
      child: ElevatedButton(
        onPressed: () {
          if (brekerChoosed == null) {
            Mydialog().normalDialog(context, 'Breaker?', '??????????????????????????????????????????');
          } else if (typeBreaker == null) {
            Mydialog().normalDialog(context, 'typeBreaker', '??????????????????????????????????????????');
          } else if ((currentMaxStr == null) || (currentMaxStr!.isEmpty)) {
            Mydialog().normalDialog(context, '???????????????????????????????????????', '??????????????????????????????????????????');
          } else {
            processCalculate();
          }
        },
        child: Text('????????????????????????'),
      ),
    );
  }

  Future<Null> processCalculate() async {
    print(
        '### breakerchoose = $brekerChoosed, typebreker =$typeBreaker, currentmax = $currentMaxStr');

    await Firebase.initializeApp().then((value) async {
      await FirebaseFirestore.instance
          .collection('breaker')
          .doc(brekerChoosed)
          .collection(typeBreaker!)
          .get()
          .then((value) {
        int? distant;
        CurrentModel? nearestModel;
        bool first = true;

        for (var item in value.docs) {
          CurrentModel model = CurrentModel.fromMap(item.data());
          int test = int.parse(currentMaxStr!) - model.current;
          test = test.abs();
          print(' ### test => $test');
          if (first) {
            distant = test;
            first = false;
            nearestModel = CurrentModel.fromMap(item.data());
          } else if (distant! > test) {
            distant = test;
            nearestModel = CurrentModel.fromMap(item.data());
          }
        }

        print('###current ????????????????????? ${nearestModel!.current}');

      });
    });

    // await Firebase.initializeApp().then((value) async {
    //   await FirebaseFirestore.instance
    //       .collection('breaker')
    //       .doc(brekerChoosed)
    //       .collection(typeBreaker!)
    //       .where('current', isEqualTo: currentMaxStr)
    //       .snapshots()
    //       .listen((event) {
    //     print('##event from Snapshot ==>> ${event.docs}');
    //     if (event.docs.toString() == '[]') {
    //       Mydialog().normalDialog(context, '?????????????????????????????????', '???????????????????????????????????????????????????');
    //     } else {
    //       for (var item in event.docs) {
    //         CurrentModle model = CurrentModle.fromMap(item.data());
    //         print('## lat = ${model.lat}, long = ${model.long}');
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => ShowMap(currentModle: model),
    //           ),
    //         );
    //       }
    //     }
    //   });
    // });
  }

  Container BuildCurrent() {
    return Container(
      width: 250,
      child: TextFormField(
        onChanged: (value) => currentMaxStr = value.trim(), //???????????????????????????????????????
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: '??????????????????????????????????????????',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  DropdownButton<String> DropdownType() {
    return DropdownButton(
      onChanged: (value) {
        setState(() {
          typeBreaker = value;
        });
      },
      hint: Text('Choose type Breaker'), // type Fault
      value: typeBreaker,
      items: typeBreakers
          .map(
            (e) => DropdownMenuItem(
              child: Text(e),
              value: e,
            ),
          )
          .toList(),
    );
  }

  DropdownButton<String> Dropdownbreaker() {
    return DropdownButton(
      onChanged: (value) {
        setState(() {
          brekerChoosed = value as String?;
        });
      },
      value: brekerChoosed,
      hint: Text('Please Choose Breaker'),
      items: breakers
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
    );
  }
}
