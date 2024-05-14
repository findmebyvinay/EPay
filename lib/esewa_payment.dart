import 'package:flutter/material.dart';
import 'package:pay/function/esewa.dart';

class Esewa_payment extends StatefulWidget {
  const Esewa_payment({super.key});

  @override
  State<Esewa_payment> createState() => _Esewa_paymentState();
}

class _Esewa_paymentState extends State<Esewa_payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 220, 140),
        appBar: AppBar(
          leading: Icon(Icons.menu),
          elevation: 0,
          title: Text("Esewa payment"),
          backgroundColor: const Color.fromARGB(255, 58, 137, 61),
        ),
        body:Center(
          child: Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(20)
              
            ),
            //color: Colors.deepPurple,
            child: ListView(
              children: [
               Center(
                 child: Padding(
                   padding: const EdgeInsets.all(70),
                   child: ElevatedButton(onPressed:(){
                    esewa eSewa =esewa();
                    eSewa.pay();
                   } , child:Text("pay with esewa",
                   style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                   ),)),
                 ),
               )
              ],
            ),
          ),
        )
    );
  } 
}