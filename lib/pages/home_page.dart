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
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(7),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children: [
                  Container(
                    child: Icon(Icons.attach_money,color: Colors.green ),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(3)),
                    ),
                    SizedBox(width: 15,
                    ),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Income",
                        style:GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(height: 4,),
                        Text("Rp. 3.800.000",
                        style:GoogleFonts.montserrat(color: Colors.white, fontSize: 14),)
                      ],
                    )
                ],),
                Row(children: [
                  Container(
                    child: Icon(Icons.attach_money,color: const Color.fromARGB(255, 175, 76, 76) ),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(3)),
                    ),
                    SizedBox(width: 15,
                    ),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expense",
                        style:GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(height: 4,),
                        Text("Rp. 3.800.000",
                        style:GoogleFonts.montserrat(color: Colors.white, fontSize: 14),)
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
          ),
          //set transaksi
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Transaction", style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          //list transaksi
          Padding(
            padding: const EdgeInsets.all(14),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                children: [Icon(Icons.delete),Icon(Icons.add)
                ],),
                title: Text("Rp. 20.000"),
                subtitle: Text("Makan"),
                leading: Container(
                        child: Icon(Icons.attach_money,color: Colors.green ),
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(3)),
                        ),
              ),
            ),
          )
        ],
        ))
    );
  }
}