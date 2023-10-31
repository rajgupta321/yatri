import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RideEvee(),
    );
  }
}

class RideEvee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: 229,
                      height: 74,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Image/Ride_Evee.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 200),
                    Icon(Icons.notifications_on, color: Colors.white, size: 40),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 263,
                  child: Text(
                    'India’s Leading \nOne Way Inter-City \nCab Service Provider',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 488,
                  height: 132,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Image/Clear_car.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SizedBox(height: 20),
                DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(icon:Icon(Icons.map),text: 'Outstation Trip'),
                          Tab(icon:Icon(Icons.bus_alert),text: 'Local Trip'),
                          Tab(icon:Icon(Icons.airplane_ticket),text: 'Airport Transfer'),
                        ],
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.white,
                        indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 250,
                        child: TabBarView(
                          children: [
                            DefaultTabController(
                              length: 2,
                              child: Column(
                                children: [
                                  TabBar(
                                    tabs: [
                                      Tab(text: 'One Way Trip',),
                                      Tab(text: 'Round Trip'),
                                    ],
                                    labelColor: Colors.green,
                                    unselectedLabelColor: Colors.white,
                                    indicator: BoxDecoration(color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                     )),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: TabBarView(
                                      children: [
                                        Container(
                                          width: 398,
                                          height: 405,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                bottomLeft: Radius.circular(40),
                                                bottomRight: Radius.circular(40),
                                              ),
                                            ),
                                          ),
                                          child:
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: 4,
                                            itemBuilder: (BuildContext context, int index) {
                                              List<String> titles = ['Pick-up City', 'Destination', 'Pick-up Date', 'Time'];
                                              List<String> prices = ['Faizabad, Utter Pradesh', 'Lucknow, Utter Pradesh', '20/10/2023', '04:45 PM'];
                                              List<Icon> cornerTexts = [Icon(Icons.close),Icon(Icons.close),Icon(Icons.close),Icon(Icons.close)];
                                              List<String> imagePaths = [
                                                'assets/Image/Rectangle 1422.png',
                                                'assets/Image/Flag.png',
                                                'assets/Image/Frame.png',
                                                'assets/Image/Watch.png'
                                              ];

                                              return Card(
                                                child: ListTile(
                                                  leading: CircleAvatar(
                                                    radius: 30,
                                                    backgroundImage: AssetImage(imagePaths[index]),
                                                  ),
                                                  title: Text(titles[index]),
                                                  subtitle: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Text(prices[index],
                                                          style: TextStyle(
                                                              fontSize: 12, color: Colors.black87)),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),

                                        ),
                                        Container(
                                          width: 398,
                                          height: 405,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40),
                                                bottomLeft: Radius.circular(40),
                                                bottomRight: Radius.circular(40),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            DefaultTabController(
                              length: 2,
                              child: Column(
                                children: [
                                  TabBar(
                                    tabs: [
                                      Tab(text: 'One Way Trip'),
                                      Tab(text: 'Round Trip'),
                                    ],
                                    labelColor: Colors.green,
                                    unselectedLabelColor: Colors.white,
                                    indicator: BoxDecoration(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: TabBarView(
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Text('Local Tab 1'),
                                          ),
                                        ),
                                        Container(
                                          child: Center(
                                            child: Text('Local Tab 2 '),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            DefaultTabController(
                              length: 2,
                              child: Column(
                                children: [
                                  TabBar(
                                    tabs: [
                                      Tab(text: 'One Way Trip'),
                                      Tab(text: 'Round Trip'),
                                    ],
                                    labelColor: Colors.green,
                                    unselectedLabelColor: Colors.white,
                                    indicator: BoxDecoration(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: TabBarView(
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Text('Airport Tab 1 '),
                                          ),
                                        ),
                                        Container(
                                          child: Center(
                                            child: Text('Airport Tab 2 '),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 488,
                  height: 132,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Image/Rectangle 1433.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(color: Colors.green,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
              },
            ),
            IconButton(
              icon: Icon(Icons.map),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.wallet),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
