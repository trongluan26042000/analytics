import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
@override
Widget build(BuildContext context) {

  return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Analytics"),
          actions: const [
        Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.more_vert),
    ),
  ],
  backgroundColor: Colors.white.withOpacity(0.05),
  ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Weekly Stats',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
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
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Marketing '),
                        ),
                        Row(
                          children: const <Widget>[
                            Expanded(
                              child: Text('123.4M',
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
                      children: const <Widget> [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Conversion'),
                        ),
                      Expanded(
                        child: Text(' 537',
                            style: TextStyle(fontSize: 40,)),
                      ),
                      Expanded(
                        child: Text('+22% of target',
                         style: TextStyle(fontSize: 15)
                        ),
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
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Conversion'),
                        ),
                        Expanded(
                          child: Text('432.1M',
                              style: TextStyle(fontSize: 40,)),
                        ),
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
                        )
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
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Users'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
  );
}
  //
  //   floatingActionButon: FloatingActionButton(
  //     onPressed: _incrementCounter,
  //     tooltip: 'Increment',
  //     child: const Icon(Icons.add,color: Colors.black),
  //     backgroundColor: Colors.blue,
  //   ),
  // );
}



