import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF7BCCF),
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  'U&I',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Parisienne',
                    fontSize: 80.0,
                  ),
                ),
                Text(
                  "우리 처음 만난 날",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Sunflower',
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "2021.12.27",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Sunflower',
                    fontSize: 20.0,
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                Text(
                  "D+1",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Sunflower',
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
