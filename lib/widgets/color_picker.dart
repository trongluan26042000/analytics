import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({Key? key,
    required this.onSelectColor,
    required this.initialColor,
    required this.availableColor})
      : super(key: key);

  final Function onSelectColor;
  final List<Color> availableColor;
  final Color initialColor;


  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {

  late Color _pickedColor;

  @override
  void initState() {
    _pickedColor = widget.initialColor;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 50,
              childAspectRatio: 1 / 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: widget.availableColor.length,
          itemBuilder: (context, index) {
            final itemColor = widget.availableColor[index];
            return InkWell(
              onTap: () {
                widget.onSelectColor(itemColor);
                setState(() {
                  _pickedColor = itemColor;
                });
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: itemColor,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1),
                ),
                child: itemColor == _pickedColor ? const Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                )
                    : Container(),
              ),
            );
          } ),
    );
  }
}