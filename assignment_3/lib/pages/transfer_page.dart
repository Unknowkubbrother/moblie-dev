import 'package:flutter/material.dart';
import 'package:assignment_3/pages/verify_page.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({
    super.key,
    required this.balance,
    required this.accountNumber,
    required this.name,
  });

  final double balance;
  final String accountNumber;
  final String name;

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _receiverController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _messageController.dispose();
    _receiverController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('โอนเงิน', style: TextStyle(fontFamily: 'Prompt')),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[50]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('จาก', style: TextStyle(fontFamily: 'Prompt', fontSize: 16)),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.lightBlue),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.accountNumber,
                        style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                      ),
                      Text(
                        widget.balance.toStringAsFixed(2),
                        style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'ไปยัง',
                style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'หมายเลขพร้อมเพย์ผู้รับเงิน',
                style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
              ),
              TextField(
                controller: _receiverController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'กรอกหมายเลขพร้อมเพย์ผู้รับเงิน',
                  hintStyle: TextStyle(fontFamily: 'Prompt', fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'จำนวนเงิน',
                style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
              ),
              TextField(
                controller: _amountController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: '฿ 00.00',
                  hintStyle: TextStyle(fontFamily: 'Prompt', fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'ข้อความ',
                style: TextStyle(fontFamily: 'Prompt', fontSize: 16),
              ),
              TextField(
                controller: _messageController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'กรอกข้อความถึงผู้รับ',
                  hintStyle: TextStyle(fontFamily: 'Prompt', fontSize: 15),
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  if (_receiverController.text.isEmpty ||
                      _amountController.text.isEmpty) {
                    return;
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyVerifyPage(
                        accountNumber: widget.accountNumber,
                        sender: widget.name,
                        receiver: _receiverController.text,
                        amount: _amountController.text,
                        message: _messageController.text,
                      ),
                    ),
                  );
                },
                child: Text(
                  'ตรวจสอบข้อมูล',
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
