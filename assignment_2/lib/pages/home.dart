import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assignment Demo')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 233, 233),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://i.pinimg.com/originals/65/45/d7/6545d7586aa48bdf487ea306d7cd853b.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            'โครงการคนละครึ่งพลัส สนับสนุนโดยภาครัฐ มาตรการกระตุ้นเศรษฐกิจ 50-50%',
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.account_balance_wallet_outlined),
                            SizedBox(width: 3),
                            Text('ยอดคงเหลือสิทธิ์วันนี้'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '50',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 3),
                            Text('บาท'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 233, 233),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ยอดใช้สิทธิ์แล้ววันนี้'),
                    Row(
                      children: [
                        Text(
                          '150',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 3),
                        Text('บาท'),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 233, 233),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://filtersupply.in.th/wp-content/uploads/2018/02/UP05NR02LZ.jpg',
                      width: 90,
                      height: 90,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'เครื่องกรองน้ำ Filter ...',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('กรองน้ำแบบ 3ท่อ 5L/min ส...'),
                      ],
                    ),

                    Row(
                      children: [
                        Text('4.5', style: TextStyle(fontSize: 16)),
                        Icon(Icons.star, size: 16),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                color: const Color.fromARGB(255, 233, 233, 233),

                child: Column(
                  children: [
                    Image.network(
                      'https://filtersupply.in.th/wp-content/uploads/2018/02/UP05NR02LZ.jpg',
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'เครื่องกรองน้ำ Water Filter RO-01',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'เครื่องกรองน้ำดื่มแบบ RO-01 ปริมาณ 15 L/min สำหรับ',
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Text('4.5', style: TextStyle(fontSize: 16)),
                                  Icon(Icons.star, size: 16),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Add to Cart'),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Buy Now'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 233, 233),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.network(
                                'https://picsum.photos/250?image=9',
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(width: 10),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'เครื่องกรองน้ำ Water Filter RO-01',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'เครื่องกรองน้ำดื่มแบบ RO-01 ปริมาณ 15 L/min',
                                ),
                              ],
                            ),
                          ],
                        ),

                        Icon(Icons.more_vert_rounded),
                      ],
                    ),

                    SizedBox(height: 10),

                    Image.network(
                      'https://p.lnwfile.com/_/p/_raw/ug/5s/5x.jpg',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(children: [Icon(Icons.thumb_up), Text('Like')]),
                        Row(children: [Icon(Icons.comment), Text('Comment')]),
                        Row(children: [Icon(Icons.share), Text('Share')]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
