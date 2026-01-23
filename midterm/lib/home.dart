import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String username;

  const Home({super.key, required this.username});

  @override
  State<Home> createState() => _MyHome();
}

class _MyHome extends State<Home> {
  TextEditingController _messageCon = TextEditingController();
  TextEditingController _nameCon = TextEditingController();

  String mesR = '';
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('PM Checker 0.1 ${widget.username} welcome'),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: [Icon(Icons.add), Icon(Icons.person)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'ค่าฝุ่นวันนี้: 62 US AQ!',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('12:00', style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('12:00', style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('12:00', style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('12:00', style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'แดงเดือด',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'แดงเดือด',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Image.network(
                'https://media.discordapp.net/attachments/1322517442446098482/1444714693624336485/image.png?ex=69743f28&is=6972eda8&hm=a41f20ee99b9ebc8b77fa45050530faa452c19e10f3f8b760873872f50431271&=&format=webp&quality=lossless&width=996&height=882',
                width: 300,
                height: 300,
              ),

              TextField(
                controller: _messageCon,
                onChanged: (value) => setState(() => mesR = value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter what you want?',
                  fillColor: Colors.red,
                  filled: true,
                ),
              ),

              Text("${mesR}"),

              TextField(
                controller: _nameCon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter you name",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    name = _nameCon.text;
                  });
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              Text("${name}"),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/test');
                },
                child: Text('Test'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
