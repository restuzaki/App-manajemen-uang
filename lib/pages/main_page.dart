import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:projek_uang/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAppBar(
        backButton: false,
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.blueAccent, child: Icon(Icons.add), ),
      body: HomePage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:  BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.home)),
        SizedBox(
        width: 20,
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.list)),
      ],),) ,
    );
  }
} 