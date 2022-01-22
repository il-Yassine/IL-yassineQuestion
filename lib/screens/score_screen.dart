import 'package:faucon_qcm/color.dart';
import 'package:flutter/material.dart';
class ScoreScreen extends StatelessWidget {

   final Color coulVal;
   final String mesVal;
   final double scoreVal;
  const ScoreScreen({ Key? key,
   required this.coulVal , 
   required this.mesVal,
   required this.scoreVal,
  
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff23293f),
      appBar: AppBar(
        backgroundColor: Color(0xff23293f),
        title: const Text("Flutter Quiz"),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffcedce7),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                Image.asset("assets/images/congrats.png"),
                const Text(
                  "Félicitations !!!",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text('Score de '+
                  scoreVal.toStringAsFixed(2) + "%",
                  style: TextStyle(
                    color:coulVal,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(mesVal
                  ,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
      
    
  }
}


