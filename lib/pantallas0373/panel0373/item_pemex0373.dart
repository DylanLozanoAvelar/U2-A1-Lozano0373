import 'package:flutter/material.dart';

class Itempemex0373 extends StatelessWidget {
  const Itempemex0373({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://raw.githubusercontent.com/DylanLozanoAvelar/Img_IOS/main/FlutterFlowA12/empleados.jpg"),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Uriel Rivas",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                5,
                (index) =>
                    Icon(Icons.star, color: Color(0xffffd600), size: 18)))
      ]),
    );
  }
}
