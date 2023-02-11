import 'package:flutter/material.dart';

var serviceList = [
  {'title': 'Men\s Hair Cut', 'duration': 45, 'price': 30},
  {'title': 'Women\s Hair Cut', 'duration': 60, 'price': 50},
  {'title': 'Color & Blow Dry', 'duration': 90, 'price': 75},
  {'title': 'Oil Treatment', 'duration': 30, 'price': 20},
];

class DetailScreen extends StatelessWidget {
  final stylist;
  DetailScreen(this.stylist);

  // const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height + 200,
        child: Stack(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height / 3 + 20,
                width: MediaQuery.of(context).size.width,
                child: Stack(fit: StackFit.expand, children: <Widget>[
                  Image.asset('assets/detail_bg.png', fit: BoxFit.fill),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.purple.withOpacity(0.1),
                  )
                ])),
            Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    })),
            Positioned(
                top: MediaQuery.of(context).size.height / 3 - 30,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50)),
                    ),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 140),
                            Text("Service List",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 30),
                            ServiceTile(serviceList[0]),
                            ServiceTile(serviceList[1]),
                            ServiceTile(serviceList[2]),
                            ServiceTile(serviceList[3]),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                    padding: EdgeInsets.all(20),
                                    width: MediaQuery.of(context).size.width,
                                    color: Color(0xff4E295B),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text('Angel Howard • ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            Text('Mar 9, 2020',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.white)),
                                            SizedBox(width: 30),
                                            ...[1, 2, 3, 4, 5]
                                                .map((title) => Icon(Icons.star,
                                                    color: Color(0xffFF8573),
                                                    size: 16))
                                                .toList()
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                            "Cameron is the best stylist I've ever seen. Seriously!",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300))
                                      ],
                                    ))),
                          ],
                        )))),
            Positioned(
                top: MediaQuery.of(context).size.height / 3 - 100,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 3 - 20,
                            height: MediaQuery.of(context).size.height / 6 + 20,
                            decoration: BoxDecoration(
                              color: stylist["bgColor"],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                                Stack(fit: StackFit.expand, children: <Widget>[
                              Positioned(
                                  right: -25,
                                  top: 10,
                                  child: Image.asset(stylist['imgUrl'],
                                      scale: 1.7)),
                            ]),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(stylist['stylistName'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              SizedBox(height: 5),
                              Text(stylist['salonName'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey,
                                      fontSize: 12)),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star,
                                      size: 12, color: Color(0xffFF8573)),
                                  Text(stylist['rating'],
                                      style:
                                          TextStyle(color: Color(0xffFF8573))),
                                  SizedBox(width: 5),
                                  Text('(${stylist["rateAmount"]})',
                                      style: TextStyle(color: Colors.grey))
                                ],
                              )
                            ],
                          )
                        ]))),
            Positioned(
                right: 10,
                top: MediaQuery.of(context).size.height / 3,
                child: MaterialButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(10),
                    shape: CircleBorder(),
                    color: Colors.white,
                    child: Icon(Icons.favorite_border_outlined)))
          ],
        ),
      )),
    );
  }
}

class ServiceTile extends StatelessWidget {
  // const ServiceTile({super.key});

  final service;
  ServiceTile(this.service);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 40,
                        child: Text(
                          service['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                    SizedBox(height: 5),
                    Text('${service["duration"]} Min',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  ]),
              Text('₱${service['price']}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              // Text('Wow',
              //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              MaterialButton(
                onPressed: () {},
                color: Color(0xffFF8573),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Book",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              )
            ]));
  }
}
