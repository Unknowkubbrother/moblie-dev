import 'package:flutter/material.dart';
import 'package:assignment_3/pages/slip_page.dart';

class MyVerifyPage extends StatelessWidget {
  final String accountNumber;
  final String sender;
  final String receiver;
  final String amount;
  final String message;

  const MyVerifyPage({
    super.key,
    required this.accountNumber,
    required this.sender,
    required this.receiver,
    required this.amount,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตรวจสอบข้อมูล', style: TextStyle(fontFamily: 'Prompt')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
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
                      style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                    ),
                    Text(
                      accountNumber,
                      style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
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
                  'ไปยัง',
                  style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'น.ส. ณัฐณิชา ไกรศิริ',
                      style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                    ),
                    Text(
                      receiver,
                      style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
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
                  'ค่าธรรมเนียม',
                  style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                ),
                Text(
                  '0.00',
                  style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'บันทึกช่วยจำ',
                      style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                    ),
                    Text(
                      message,
                      style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
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

            SizedBox(height: 350),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySlipPage(
                      sender: sender,
                      accountNumber: accountNumber,
                      receiver: receiver,
                      amount: amount,
                    ),
                  ),
                  (route) => false,
                );
              },
              child: Text(
                'ยืนยัน',
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
    );
  }
}
