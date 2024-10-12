import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Row(children: [
                Row(children: [
                  Container(
                    child: Icon(Icons.attach_money,color: Colors.green ),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(3)),
                    ),
                    SizedBox(width: 15,
                    ),
                     Column(
                      children: [
                        Text(
                          "Income",
                        style:GoogleFonts.montserrat(color: Colors.white),
                        ),Text("Rp. 3.800.000")
                      ],
                    )
                ],)
              ],),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          )
        ],
        ))
    );
  }
}