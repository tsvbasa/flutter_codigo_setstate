import 'package:flutter/material.dart';

class StatusGeneralPage extends StatefulWidget {
  const StatusGeneralPage({super.key});

  @override
  State<StatusGeneralPage> createState() => _StatusGeneralPageState();
}

class _StatusGeneralPageState extends State<StatusGeneralPage> {
  bool isFontWeight = false;
  bool isTextDecoration = false;
  bool isShowAll = false;

  double valueSliderRed = 100;
  double valueSliderGreen = 100;
  double valueSliderBlue = 100;
  double valueSliderOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatusGeneral Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                  // color: Color(0xfff72585),
                  color: Color.fromRGBO(
                      valueSliderRed.toInt(),
                      valueSliderGreen.toInt(),
                      valueSliderBlue.toInt(),
                      valueSliderOpacity),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 14,
            // ),
            // Text(
            //   "Lorem Ipsum is simply dummy text of the printing. Lorem Ipsum has been the industry's standard dummy text ever since.",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: isFontWeight ? FontWeight.bold : FontWeight.normal,
            //     decoration: isTextDecoration
            //         ? TextDecoration.lineThrough
            //         : TextDecoration.none,
            //   ),
            // ),
            // const SizedBox(
            //   height: 8,
            // ),
            // Divider(),
            // const SizedBox(
            //   height: 8,
            // ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing anmmy text ever since the galley book. It has survived, but also the leap into electronic typesetting. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              maxLines: isShowAll ? 3 : null,
              overflow:
                  isShowAll ? TextOverflow.ellipsis : TextOverflow.visible,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            GestureDetector(
              onTap: () {
                isShowAll = !isShowAll;
                print(isShowAll);
                setState(() {});
              },
              child: Text(
                "Mostrar texto",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
            Divider(),
            const SizedBox(
              height: 14,
            ),
            // Checkbox(
            //   value: true,
            //   onChanged: (bool? value) {
            //     print(value);
            //   },
            // ),
            // CheckboxListTile(
            //   value: isFontWeight,
            //   onChanged: (bool? value) {
            //     isFontWeight = value!;
            //     setState(() {});
            //   },
            //   title: Text(
            //     "Cambiar Font Weight:: $isFontWeight",
            //   ),
            // ),
            // CheckboxListTile(
            //   value: isTextDecoration,
            //   onChanged: (bool? value) {
            //     isTextDecoration = value!;
            //     setState(() {});
            //   },
            //   title: Text(
            //     "Cambiar Text Decoration:: $isTextDecoration",
            //   ),
            // ),
            CheckboxListTile(
              value: isShowAll,
              onChanged: (bool? value) {
                isShowAll = value!;
                setState(() {});
              },
              title: Text(
                "Mostrar todo:: $isShowAll",
              ),
            ),
            Slider(
              value: valueSliderRed,
              min: 0,
              max: 255,
              onChanged: (double value) {
                valueSliderRed = value;
                setState(() {});
              },
            ),
            Slider(
              value: valueSliderGreen,
              min: 0,
              max: 255,
              onChanged: (double value) {
                valueSliderGreen = value;
                setState(() {});
              },
            ),
            Slider(
              value: valueSliderBlue,
              min: 0,
              max: 255,
              onChanged: (double value) {
                valueSliderBlue = value;
                setState(() {});
              },
            ),
            Slider(
              value: valueSliderOpacity,
              min: 0,
              max: 1,
              onChanged: (double value) {
                valueSliderOpacity = value;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
