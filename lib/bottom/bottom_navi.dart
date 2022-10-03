
import 'package:flutter/material.dart';
import 'package:latihan/bottom/Satu.dart';
import 'package:latihan/bottom/Dua.dart';
import 'package:latihan/bottom/Tiga.dart';

// ignore: use_key_in_widget_constructors
class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {

  int currentIndex = 0;
  final List<Widget> body =[
    Satu(),
    Dua(),
    Tiga()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
      items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color:Color.fromARGB(185, 170, 116, 82),),
            label: 'Home',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.nat, color:Color.fromARGB(255, 141, 151, 255),),
            label: 'Activity',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite
            , color:Color.fromARGB(255, 255, 145, 187)),
            label: 'About',
          ),
        ],
      ),
      
    );
  }
  void ontap(int index){
  setState(() {
    currentIndex = index;

  });
}
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Image.network(
          'https://picsum.photos/200/300',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

