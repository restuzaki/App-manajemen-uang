import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  bool isSwitched = true;
  List<String> list = ['Makan dan Jajan', 'Transportasi', 'Nonton Film'];
  late String dropDownValue = list.first;
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add transaction")),
      body: SingleChildScrollView(child: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
      Row(
              children: [
                Switch(
                  value: isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value; // Update the switch state
                    });
                  },
                  inactiveTrackColor: Colors.green[200],
                  inactiveThumbColor: Colors.white,
                  activeTrackColor: Colors.red[200],
                ),
                Text(isSwitched ? 'Expense' : 'Income', style: GoogleFonts.montserrat(fontSize: 14),)
              ],
            ), 
            SizedBox(height: 10,), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(keyboardType: TextInputType.number,
            decoration: InputDecoration(border: UnderlineInputBorder(), labelText: "Amount"),
            ),
          ), 
          SizedBox(height: 25,), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Category', 
            style: GoogleFonts.montserrat(fontSize: 16),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DropdownButton<String>(
              value: dropDownValue,
              isExpanded: true,
              icon: Icon(Icons.arrow_downward),
              items: list.map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(value: value, child: Text(value),);
            }).toList(), 
            onChanged: (String? value){
              
            }),
          ),
        SizedBox(height: 25,), 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            readOnly: true,
            controller: dateController,
            decoration: InputDecoration(labelText:"Enter Date" ), 
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(context: context, 
              initialDate: DateTime.now(), 
              firstDate: DateTime(2022) , 
              lastDate: DateTime(2099));
          
              if(pickedDate != null){
                String formattedDate = 
                DateFormat('yyy-MM-dd').format(pickedDate);
          
                dateController.text = formattedDate;
              }
            } ,
          ),
        ),
        SizedBox(height: 25,), 
        Center(child: ElevatedButton(onPressed: (){}, child: Text("Save")))
      ],
      ))),
    );
  }
}