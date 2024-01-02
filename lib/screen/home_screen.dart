import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF7BCCF),
        body: SafeArea(
          bottom: false,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                _TopPart(),
                _BottomPart(),
              ],
            ),
          ),
        ));
  }
}

class _TopPart extends StatefulWidget {
  const _TopPart({super.key});

  @override
  State<_TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<_TopPart> {
  DateTime selectedDateTime = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'U&I',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Parisienne',
              fontSize: 80.0,
            ),
          ),
          Column(
            children: [
              Text(
                "우리 처음 만난 날",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sunflower',
                  fontSize: 30.0,
                ),
              ),
              Text(
                "${selectedDateTime.year}.${selectedDateTime.month}.${selectedDateTime.day}",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sunflower',
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          IconButton(
              iconSize: 50.0,
              onPressed: () {
                showCupertinoDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 300.0,
                        color: Colors.white,
                        child: CupertinoDatePicker(
                          maximumDate: DateTime.now(),
                          initialDateTime: selectedDateTime,
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (DateTime date) {
                            setState(() {
                              selectedDateTime = date;
                            });
                          },
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.pink,
              )),
          Text(
            "D+${DateTime(
              DateTime.now().year,
              DateTime.now().month,
              DateTime.now().day,
            ).difference(selectedDateTime).inDays + 1}",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Sunflower',
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset('asset/img/middle_image.png'));
  }
}
