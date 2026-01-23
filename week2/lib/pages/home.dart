import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void handlerOnPressed() {
    setState(() {
      count++;
    });
    debugPrint(count.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_basket),
            onPressed: () {
              debugPrint("Shopping");
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint("Menu");
          },
        ),
      ),
      body: Column(
        children: [
          const Text('Hello CS 37 '),
          const Text('KMUTNB'),
          Text('Count: $count'), // Display the count
          ElevatedButton(onPressed: handlerOnPressed, child: const Text("OK")),
          SizedBox(height: 20),
          SizedBox(
            height: 200,
            width: 200,
            child: Image.network(
              "https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/457332312_2216423502072678_7919905955431641026_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=aYolYzI4JFwQ7kNvwFIMnHU&_nc_oc=AdkZ4BBZg0hhTMwmFGEAyEZX1QMekLHYAUZ3th5ilKeEnw4nrkf-ZfVaj7VismzKbYk&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=zkQsAXEO0wPnVtB9KvJ--g&oh=00_AfkeK9Vos3qNIB3phfQEJAoRMaOuxh0QshnWbTq55hxF9g&oe=69512512",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.heart_broken, color: Colors.red),
              Icon(Icons.desktop_mac, color: Colors.blue),
            ],
          ),
          Card(
            color: Colors.red,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [Text('บุ้ง น้อย เอวลอย ยิ้มหวาน ')]),
            ),
          ),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your name',
              hintText: 'ผักกาด',
            ),
          ),
        ],
      ),
    );
  }
}
