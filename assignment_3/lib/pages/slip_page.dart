import 'package:flutter/material.dart';
import 'package:assignment_3/pages/home_page.dart';

class MySlipPage extends StatelessWidget {
  final String sender;
  final String accountNumber;
  final String receiver;
  final String amount;

  const MySlipPage({
    super.key,
    required this.sender,
    required this.accountNumber,
    required this.receiver,
    required this.amount,
  });

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
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        body: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png", width: 50, height: 50),
                  SizedBox(width: 10),
                  Text(
                    'Shyne Banking',
                    style: TextStyle(
                      fontFamily: 'Prompt',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.only(top: 25, left: 10, right: 10),
              padding: EdgeInsets.all(5),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.check_circle, color: Colors.green),
                        SizedBox(width: 10),
                        Text(
                          'โอนเงินสำเร็จ',
                          style: TextStyle(
                            fontFamily: 'Prompt',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      DateTime.now().toString(),
                      style: TextStyle(
                        fontFamily: 'Prompt',
                        fontSize: 13,
                        color: Colors.grey.shade400,
                      ),
                    ),

                    Text(
                      'รหัสอ้างอิง : 202601115HztybZvcxOD67id',
                      style: TextStyle(
                        fontFamily: 'Prompt',
                        fontSize: 13,
                        color: Colors.grey.shade400,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      height: 1,
                      decoration: BoxDecoration(color: Colors.grey.shade400),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'จาก',
                          style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'นาย $sender ทรัพย์มีชัย',
                              style: TextStyle(
                                fontFamily: 'Prompt',
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              accountNumber,
                              style: TextStyle(
                                fontFamily: 'Prompt',
                                fontSize: 13,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ไปยัง',
                          style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'น.ส. ณัฐณิชา ไกรศิริ',
                              style: TextStyle(
                                fontFamily: 'Prompt',
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              receiver,
                              style: TextStyle(
                                fontFamily: 'Prompt',
                                fontSize: 13,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      height: 1,
                      decoration: BoxDecoration(color: Colors.grey.shade400),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'จำนวนเงิน',
                          style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                        ),
                        Text(
                          amount,
                          style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 250,
                          child: Text(
                            'ผู้รับเงินสามารถสแกนคิวอาร์โค๊ดนี้เพื่อตรวจสอบสถานะการโอนเงิน',
                            style: TextStyle(
                              fontFamily: 'Prompt',
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Image.network(
                          'https://pngimg.com/d/qr_code_PNG17.png',
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                  (route) => false,
                );
              },
              child: Text(
                'กลับหน้าแรก',
                style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
