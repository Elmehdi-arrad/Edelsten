/*
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'model/pagedetails.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';*/
/*
class stats extends StatefulWidget {
  @override
  _statsState createState() => _statsState();
}
class _statsState extends State<stats> {
  DocumentReference documentReference;
  int no =0;
  var now = new DateTime.now();
  int likesperday = 0;
  int commentsperday = 0;
  static Firestore fireStore;
  @override
  void initState() {
    super.initState();
  //  getnumberoflikesperday();
    getlikesfromshared();
    getcommentsperday();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Dashboars"),backgroundColor: Colors.orangeAccent,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Text(
                "Stats for Likes",
                style: TextStyle(fontSize: 30),
              ),
              Container(
                  child: Card(elevation: 10,
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(), // Initialize category axis.
                        series: <LineSeries<salesdata, String>>[
                      // Initialize line series.
                      LineSeries<salesdata, String>(
                          dataSource: [
                            salesdata('stats', double.parse("$likesperday")),
                          ],
                          xValueMapper: (salesdata sales, _) => sales.year,
                          yValueMapper: (salesdata sales, _) => sales.sales,
                          dataLabelSettings: DataLabelSettings(isVisible: true))
                    ]),
                  )),
              Text(
                "Stats for Comments",
                style: TextStyle(fontSize: 30),
              ),
              Container(
                  child: Card(elevation: 20,
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(), // Initialize category axis.
                        series: <LineSeries<salesdata, String>>[
                      // Initialize line series.
                      LineSeries<salesdata, String>(
                          dataSource: [
                            salesdata('stats', double.parse("$commentsperday")),

                          ],
                          xValueMapper: (salesdata sales, _) => sales.year,
                          yValueMapper: (salesdata sales, _) => sales.sales,
                          dataLabelSettings: DataLabelSettings(isVisible: true))
                    ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
  void getlikesfromshared() async{
    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    int x= sharedPreferences.getInt("likes_per_day");
    setState(() {
      if(x==null){
        likesperday =0;
      }else{
        likesperday =x;
      }
    });
  }
  void getcommentsperday() async{
    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    int x= sharedPreferences.getInt("comments_per_day");
    setState(() {
      if(x==null){
        commentsperday =0;
      }else{
        commentsperday =x;
      }
    });
  }
}
class salesdata {
  salesdata(this.year, this.sales);

  final String year;
  final double sales;
}
*/
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'model/pagedetails.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class stats extends StatefulWidget {
  @override
  statsstate createState() => statsstate();
}
class statsstate extends State<stats> {
  DocumentReference documentReference;
  int no =0;
  var now = new DateTime.now();
  int likesperday = 0;
  int commentsperday = 0;
  static Firestore fireStore;
  @override
  void initState() {
    super.initState();
    //  getnumberoflikesperday();
    getlikesfromshared();
    commentsperdays();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Dashboars"),backgroundColor: Colors.orangeAccent,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "Stats for Likes",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 15,),
              Text(
                "number of likes $likesperday",
                style: TextStyle(fontSize: 30),
              ),
              Container(
                  child: Card(elevation: 10,
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(), // Initialize category axis.
                        series: <LineSeries<salesdata, String>>[
                          // Initialize line series.
                          LineSeries<salesdata, String>(
                              dataSource: [
                                salesdata('stats', double.parse("$likesperday")),
                              ],
                              xValueMapper: (salesdata sales, _) => sales.year,
                              yValueMapper: (salesdata sales, _) => sales.sales,
                              dataLabelSettings: DataLabelSettings(isVisible: true))
                        ]),
                  )),
              Text(
                "Stats for Comments",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 15,),
              Text(
                "number of comments $commentsperday",
                style: TextStyle(fontSize: 30),
              ),
              Container(
                  child: Card(elevation: 20,
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(), // Initialize category axis.
                        series: <LineSeries<salesdata, String>>[
                          // Initialize line series.
                          LineSeries<salesdata, String>(
                              dataSource: [
                                salesdata('stats', double.parse("$commentsperday")),
                              ],
                              xValueMapper: (salesdata sales, _) => sales.year,
                              yValueMapper: (salesdata sales, _) => sales.sales,
                              dataLabelSettings: DataLabelSettings(isVisible: true))
                        ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
  void getlikesfromshared() async{
    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    int x= sharedPreferences.getInt("likes_per_day");
    setState(() {
      if(x==null){
        likesperday =0;
      }else{
        likesperday =x;
      }
    });
  }
  void  commentsperdays() async{
    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    int x= sharedPreferences.getInt("comments_per_day");
    setState(() {
      if(x==null){
        commentsperday =0;
      }else{
        commentsperday =x;
      }
    });
  }
}
class salesdata {
  salesdata(this.year, this.sales);
  final String year;
  final double sales;
}
