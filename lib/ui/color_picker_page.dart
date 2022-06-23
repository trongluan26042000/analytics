import 'dart:async';
import 'package:analytics/widgets/color_picker.dart';
import 'package:flutter/material.dart';

class ColorPickerPage extends StatefulWidget {
  const ColorPickerPage({Key? key}) : super(key: key);

  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {

  StreamController colorController = StreamController<Color>();
  Stream get colorStream => colorController.stream;

  Color _color = Colors.blue;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            StreamBuilder(
                stream: colorStream,
                builder: (context, snapshot) {
                  return Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: _color,
                    ),
                  );
                }
            ),
            const SizedBox(
              height: 30,
            ),
            ColorPicker(
                onSelectColor: (value) {
                  _color = value;
                  colorController.sink.add(_color);
                },
                availableColor:const [
                  Colors.blue,
                  Colors.green,
                  Colors.greenAccent,
                  Colors.yellow,
                  Colors.orange,
                  Colors.red,
                  Colors.purple,
                  Colors.grey,
                  Colors.deepOrange,
                  Colors.teal,
                  Colors.white10,
                  Colors.tealAccent,
                  Colors.lightBlueAccent,
                ],initialColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}