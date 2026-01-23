import 'package:flutter/material.dart';
import 'package:assignment_1/const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            debugPrint("Menu");
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Center(
          child: Row(
            children: [
              const Text(
                "แยกพอร์ต",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              IconButton(
                onPressed: () {
                  debugPrint("visibility");
                },
                icon: const Icon(
                  Icons.visibility_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Menu");
            },
            icon: const Icon(Icons.format_list_bulleted, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          debugPrint("all");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [SizedBox(width: 5), Text("ทั้งหมด")],
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            0,
                            162,
                            255,
                          ),
                        ),
                        onPressed: () {
                          debugPrint("myport");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.area_chart,
                              size: 16,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "หัวแถวครับพี่",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          debugPrint("s&p 500");
                        },
                        child: Text("SP 500 พร้อมลั่น"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "มูลค่าเงินลงทุนรวม (18 ธ.ค 68 19:03 น.)",
                      style: TextStyle(fontSize: 13, color: textSecondaryColor),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "9,574",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: Text(
                              '.73',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          ' THB',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      '/25,000.00 THB',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(10),
                      value: 0.38,
                      backgroundColor: Colors.grey[200],
                      valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "% การเปลี่ยนแปลงจากวันก่อน",
                          style: TextStyle(fontSize: 14),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.south_east,
                              color: dangerColor,
                              size: 14.0,
                            ),
                            Text('4.13%', style: TextStyle(color: dangerColor)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "กำไรของทรัพย์สินที่ถืออยู่",
                          style: TextStyle(fontSize: 14),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.north_east,
                              color: primaryColor,
                              size: 14.0,
                            ),
                            Text(
                              '1.18% (+111.28 THB)',
                              style: TextStyle(color: primaryColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 239, 239),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/usd.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 5),
                      Text("1 USD = 31.39 THB", style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "เรียงตาม: มูลค่าสินทรัพย์",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            "กำไรขาดทุน",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(Icons.repeat),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Center(
                            child: Table(
                              columnWidths: {
                                0: FlexColumnWidth(1.3),
                                1: FlexColumnWidth(1.2),
                                2: FlexColumnWidth(1),
                              },

                              children: [
                                TableRow(
                                  children: [
                                    Text(
                                      "2 สินทรัพย์",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: textSecondaryColor,
                                      ),
                                    ),
                                    Text(
                                      "มูลค่าสินทรัพย์ (บาท)",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: textSecondaryColor,
                                      ),
                                    ),
                                    Text(
                                      "% กำไรและมูลค่า",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: textSecondaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    SizedBox(height: 13),
                                    SizedBox(height: 13),
                                    SizedBox(height: 13),
                                  ],
                                ),

                                TableRow(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5pIyxVsRn88qXmtCTl2Ycqq75jxZLo2fhwA&s",
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "NVDA",
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.pie_chart, size: 12),
                                                SizedBox(width: 5),
                                                Text(
                                                  "60.98%",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "5,838.72",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "= 186.01 USD",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: textSecondaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.south_east,
                                              color: dangerColor,
                                              size: 14.0,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              '- 7.75%',
                                              style: TextStyle(
                                                color: dangerColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),

                                        Text(
                                          '(-490.76 THB)',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: dangerColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                TableRow(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.shade200,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  children: const [
                                    SizedBox(height: 13),
                                    SizedBox(height: 13),
                                    SizedBox(height: 13),
                                  ],
                                ),

                                TableRow(
                                  children: const [
                                    SizedBox(height: 13),
                                    SizedBox(height: 13),
                                    SizedBox(height: 13),
                                  ],
                                ),

                                TableRow(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://s3-symbol-logo.tradingview.com/tesla--600.png",
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "TSLA",
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.pie_chart, size: 12),
                                                SizedBox(width: 5),
                                                Text(
                                                  "39.02%",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "3,736.01",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "= 119.02 USD",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: textSecondaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.north_east,
                                              color: primaryColor,
                                              size: 14.0,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              '19.21%',
                                              style: TextStyle(
                                                color: primaryColor,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '(+602.03 THB)',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.shade200,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  children: const [
                                    SizedBox(height: 13),
                                    SizedBox(height: 13),
                                    SizedBox(height: 13),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'หน้าแรก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.area_chart_outlined),
            label: 'ลุงทน',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: 'เงินสด'),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'สินทรัพย์',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse_rounded),
            label: 'รายการ',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'โปรไฟล์'),
        ],
        currentIndex: 3,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
