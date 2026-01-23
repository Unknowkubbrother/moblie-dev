import 'package:flutter/material.dart';

class MyHistoryPage extends StatefulWidget {
  const MyHistoryPage({super.key});

  @override
  State<MyHistoryPage> createState() => _MyHistoryPageState();
}

class _MyHistoryPageState extends State<MyHistoryPage> {
  List<Map<String, dynamic>> _transactions = [];

  @override
  void initState() {
    super.initState();
    _transactions = [
      {
        'title': 'โอนเงินให้ น.ส ณัฐณิชา',
        'date': '24 ธ.ค. 68, 14:30',
        'amount': -500.0,
      },
      {
        'title': 'รับเงินจาก นายวิเชียร',
        'date': '23 ธ.ค. 68, 09:15',
        'amount': 1200.0,
      },
      {'title': 'ชำระค่าอาหาร', 'date': '22 ธ.ค. 68, 18:45', 'amount': -150.0},
      {
        'title': 'โอนเงินให้ น.ส ณัฐณิชา',
        'date': '20 ธ.ค. 68, 10:00',
        'amount': -2000.0,
      },
    ];
  }

  @override
  void dispose() {
    super.dispose();
    _transactions.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          'ประวัติการโอนเงิน',
          style: TextStyle(fontFamily: 'Prompt'),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemCount: _transactions.length,
        itemBuilder: (context, index) {
          final item = _transactions[index];
          final bool isExpense = item['amount'] < 0;

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: isExpense
                      ? Colors.red[50]
                      : Colors.green[50],
                  child: Icon(
                    isExpense ? Icons.arrow_upward : Icons.arrow_downward,
                    color: isExpense ? Colors.red : Colors.green,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title'],
                        style: const TextStyle(
                          fontFamily: 'Prompt',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        item['date'],
                        style: TextStyle(
                          fontFamily: 'Prompt',
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '${isExpense ? "" : "+"}${item['amount'].toStringAsFixed(2)}',
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isExpense ? Colors.black : Colors.green,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
