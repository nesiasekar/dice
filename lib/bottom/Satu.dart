import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Satu extends StatefulWidget {

  @override
  _SatuState createState() => _SatuState();
}

class _SatuState extends State<Satu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 212, 226),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          Container(
            padding: const EdgeInsets.only(top:190),
            child:const CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('images/anya.jpg'),
            
            ),
          ),
          SizedBox(
            height: 30, // <-- space
          ),
          const Text(
          "Nesia  Ayu Sekarwangi",
          textAlign: TextAlign.center,
          textScaleFactor: 1.0,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25.0
          ),
        ),
        SizedBox(
            height: 5, // <-- space
          ),
        const Text(
          "Flutter Developer",
          textAlign: TextAlign.center,
          textScaleFactor: 1.0,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
            fontSize: 20.0
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 2,
          indent: 150,
          endIndent: 150,
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
           shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Color.fromARGB(255, 139, 64, 43),
            ),
            title:Text('087882832406') ,
          ),
        ),
         Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
           shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: Color.fromARGB(255, 139, 64, 43),
            ),
            title:Text('nesiaayusekar@gmail.com') ,
          ),
        )
        ],
      )
    );
  }
}

