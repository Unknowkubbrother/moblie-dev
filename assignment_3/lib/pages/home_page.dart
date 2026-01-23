import 'package:flutter/material.dart';
import 'package:assignment_3/pages/transfer_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _name = 'ณัฐชานน';
  final double _balance = 6252.73;
  final String _accountNumber = '438-0737xx-x';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'สวัสดี',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Prompt',
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                _name,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Prompt',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16),

            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,

                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.grey[50]),
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'เงินฝากของฉัน',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Prompt',
                                color: Colors.grey.shade600,
                              ),
                            ),
                            Text(
                              _balance.toStringAsFixed(2),
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Prompt',
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 10),

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),

                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.wallet,
                                          size: 20,
                                          color: Colors.grey.shade500,
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 20),
                                            Text(
                                              'ออมทรัพย์',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Prompt',
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  _accountNumber,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Prompt',
                                                    color: Colors.grey.shade500,
                                                  ),
                                                ),

                                                SizedBox(width: 10),

                                                Icon(
                                                  Icons.copy,
                                                  color: Colors.grey.shade500,
                                                  size: 16,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          _balance.toStringAsFixed(2),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Prompt',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.symmetric(vertical: 15),
                                width: double.infinity,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                ),
                              ),

                              Row(
                                children: [
                                  SizedBox(width: 16),
                                  Text(
                                    'กดเพื่อดูรายละเอียดเพิ่มเติม',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Prompt',
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 30),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransferPage(
                                  balance: _balance,
                                  accountNumber: _accountNumber,
                                  name: _name,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'โอนเงิน',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Prompt',
                              color: Colors.white,
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade600,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/history');
                          },
                          child: Text(
                            'ประวัติการโอนเงิน',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Prompt',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        'https://media.discordapp.net/attachments/1133807349266653264/1182652173960626357/4E0477FD-DF43-4F92-9976-BCBA29FA812F.jpg?ex=6968d62a&is=696784aa&hm=f4437c7b7520fa1dd5dc13c4f54e673fc8f4d03c320654a9b10c2eb7b8440812&=&format=webp&width=526&height=700',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
