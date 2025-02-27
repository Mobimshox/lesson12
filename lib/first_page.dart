import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1661281211518-7bc99840fe64?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZmFtaWx5fGVufDB8fDB8fHww"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Text(
                    "Best Hotels",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          categoryItem(),
                          categoryItem(),
                          categoryItem(),
                          categoryItem(),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Text(
                    "Luxury Hotels",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryItem() {
    return Container(
      width: 100,
      color: Colors.green,
    );
  }
}
