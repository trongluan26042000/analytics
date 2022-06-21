import 'package:analytics/ui/bar_chart.dart';
import 'package:analytics/ui/chart.dart';
//import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  get animate => null;


@override
Widget build(BuildContext context) {

  return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_rounded),
        title: const Text('Analytics'),
        actions: const [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          Icon(Icons.more_vert),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(
              height: 10,
            ),
            StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 134/234,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  <Widget> [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Marketing '),
                        ),
                        Row(
                          children: const <Widget>[
                            Expanded(
                              child: Text(' 123.4M',
                              style: TextStyle(fontSize: 40,)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                 StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 262/234,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  <Widget> [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Conversion'),
                        ),
                      const Text(' 537',
                          style: TextStyle(fontSize: 40,)),
                      const Text(' +22% of target',
                       style: TextStyle(fontSize: 15)
                      ),
                        Expanded(child:GroupedFillColorBarChart.withSampleData())
                    ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 262/234,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Conversion'),
                        ),
                        const Text(' 432.1M',
                            style: TextStyle(fontSize: 40,)),
                        const Text('  +12.3% of target',
                            style: TextStyle(fontSize: 15)
                        ),
                        Expanded(
                            child: SimpleTimeSeriesChart.withSampleData())

                      ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 168/234,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Sales'),
                        ),
                        Text(' 345.8M',
                        style: TextStyle(fontSize: 40,)),
                     Text('  +11% of target',
                      style: TextStyle(fontSize: 15)
                     ),
                      ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.85,
                  child:  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Users'),
                        ),
                        const Text(' 45.5M',
                            style: TextStyle(fontSize: 40,)
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child:  Align(
                            alignment: Alignment.topRight,
                             child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Save', style: TextStyle(fontSize: 16),)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 168/234,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Avg.session'),
                        ),
                        Text(' 4:35 H',
                            style: TextStyle(fontSize: 40,)),
                        Text('  +56.6%% of target',
                            style: TextStyle(fontSize: 15)
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  backgroundColor: const Color(0xff03dac6),
                  foregroundColor: Colors.black,
                  //mini: true,
                  onPressed: () {
                    // Respond to button press
                  },
                  child: const Icon(Icons.add),
                )
            ),

          ],
        ),
      )
  );
}










  // floatingActionButon: FloatingActionButton(
  // onPressed: _incrementCounter,
  // tooltip: 'Increment',
  // child: const Icon(Icons.add,color: Colors.black),
  // backgroundColor: Colors.blue,
  // );
}
