
import 'package:flutter/material.dart';
import 'package:flutter_tarea2/src/DataandPrivacity.dart';
import 'package:flutter_tarea2/src/HomeMain.dart';
import 'package:flutter_tarea2/src/PersonalInfromation.dart';
import 'package:flutter_tarea2/src/Widgets/ButtonRepli.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
     child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(142, 209, 201, 201),
        leading: ButtonRepli(icon: Icons.close,
          onPressed: () {},),
        title: const Text("Cuenta de Google"),
        actions:[
           ButtonRepli(
          icon: Icons.help_outline_outlined,
          onPressed: () {},
          ), 
            ButtonRepli(
          icon: Icons.search,
          onPressed: () {},
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage("https://kuninganmass.com/wp-content/uploads/2023/08/WhatsApp-Image-2023-08-01-at-17.55.48.jpg"),
          )
        ] ,
        bottom: const TabBar(
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          tabs: [
            Tab(
              child: Text("Pagina principal"),
            ),
             Tab(
              child: Text("Informacion personal"),
            ),
            Tab(
              child: Text("Datos y privacidad"),
            ),
          ],
        ),
      ),
      body: const TabBarView(children: [HomeMain(),PersonalInformation(),DataandPrivacity()],)
    )
  );
  }
}



