import 'package:flutter/material.dart';
import 'package:lozano0373/pantallas0373/panel0373/item_pemex0373.dart';

class PanelPantalla0373 extends StatelessWidget {
  const PanelPantalla0373({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PEMEX Lozano0373', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff004811),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/DylanLozanoAvelar/Img_IOS/main/FlutterFlowA12/icon_pemex.jpg")),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff008400),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Busca algo...",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 20),
                  border: InputBorder.none,
                  prefix: Icon(Icons.search, color: Color(0xffffffff))),
            ),
          ),
          Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/DylanLozanoAvelar/Img_IOS/main/FlutterFlowA12/pemex1.jpg")))),
          ListTile(
            title: Text("Empleados del mes"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itempemex0373()],
          ))
        ],
      ),
    );
  }
}
