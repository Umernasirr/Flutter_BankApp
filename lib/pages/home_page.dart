import 'package:banking_app/models/transactions.dart';
import 'package:banking_app/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Icon(Icons.menu), Icon(Icons.more_vert)],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 60,
                          child: Image.asset("assets/images/avatar.png"),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Umer Nasir",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.1),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Mobile Developer",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "\$8900",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 8.0),
                            Text("Income")
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "\$8900",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 8.0),
                            Text("Expenses")
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "\$8900",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 8.0),
                            Text("Loan")
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Overview",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.pink,
                          ),
                        ],
                      ),
                      Column(
                        children: [Text("Sept 13, 2020")],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: transactions.length,
                      itemBuilder: (context, index) =>
                          TransactionItem(transaction: transactions[index])),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        selectedItemColor: Theme.of(context).primaryColor,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: ('Transactions'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ('Profile'))
        ],
      ),
    );
  }
}
