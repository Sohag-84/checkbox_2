import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool firstAlarm = false;
  bool secondAlarm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Checkbox with header and subtitle',style: TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            Container(
              child: CheckboxListTile(
                title: const Text('Ringing at 6.00 AM everyday'),
                subtitle: const Text('Ringing after 10 hours'),
                secondary: const Icon(Icons.alarm),
                checkColor: Colors.black,
                activeColor: Colors.deepPurpleAccent,
                //tileColor: Colors.brown,
                value: firstAlarm,
                onChanged: (bool? value) {
                  setState(() {
                    firstAlarm = value!;
                  });
                },
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.red),
              ),
            ),

            const SizedBox(height: 10,),
            CheckboxListTile(
              title: const Text('Ringing at 10.00 AM everyday'),
              subtitle: const Text('Ringing after 12 hours'),
              secondary: const Icon(Icons.alarm),
              checkColor: Colors.black,
              activeColor: Colors.deepPurpleAccent,
              tileColor: Colors.brown,
              value: secondAlarm,
              onChanged: (bool? value) {
                setState(() {
                  secondAlarm = value!;
                });
              },
              ),
          ],
        ),
      ),
    );
  }
}
