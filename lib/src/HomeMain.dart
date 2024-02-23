import 'package:flutter/material.dart';
import 'package:flutter_tarea2/src/Widgets/ItemDetalles.dart';
import 'package:flutter_tarea2/src/Widgets/PanelItems.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});
     
   static const List<Map<String,dynamic>> espacio =[
    {
      "titulo":"Tu Cuenta esta Protegida",
      "cuerpo":"La verificacion de la seguridad reviso tu cuenta y no encontro acciones recomendadas",
      "detalles":"Ver detalles",
      "foto":"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT5nMepBuZXkfhWOS1BYqOEUFVFpeTECrLFgM5Cw0MCsuaq63Dx"
    }
    ,
    {
      "titulo":"Verificacion de Privacidad",
      "cuerpo":"Elige la configuracion de privacidad indicada para ti con esta guia paso a paso",
      "detalles":"Realizar la Verificacion de privacidad",
      "foto":"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSOF22oOCDDzvnqY4yqCb5Z0YVmwhdERPIs2cFgu2h_ku-SkMPm"
    }
   ];




  @override
  Widget build(BuildContext context) {
    return  
        Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemDetalles(
              titulo: espacio[0]['titulo']!,
              cuerpo: espacio[0]['cuerpo']!, 
              detalles:espacio[0]['detalles'],
              foto:espacio[0]["foto"],
                              ),
          ItemDetalles(
              titulo: espacio[1]['titulo']!,
              cuerpo: espacio[1]['cuerpo']!, 
             detalles:espacio[1]['detalles'],
             foto:espacio[1]["foto"],
          ),
        const  PanelItems(),
          MoreInformation(foto:espacio[1]["foto"])
        ],
      ); 
  }
}

class MoreInformation extends StatelessWidget {
  const MoreInformation({super.key,this.onPressed, required this.foto});

  final Function()? onPressed;
  final String foto;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
    child:   ListTile(
      subtitle:  RichText(
        text: TextSpan(
          children: [
           const TextSpan(text: "Solo tu puedes ver la informacion.Tambien puedes revisar tu configuarcion de Maps,"
           "la Busqueda o cualquier servicio de Google que uses con frecuencia.Google Protege La privacidad y la seguiriada de tus datos" , style: TextStyle(color: Color.fromARGB(255, 98, 93, 93), fontSize: 15.3) ),
            WidgetSpan(child: TextButton(onPressed:onPressed, child:  Text("Mas Informacion",style:  TextStyle(color: Colors.blue[500])))
        )],
        ),
      ),
      trailing: Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0,),
        child:  CircleAvatar(
          radius: 35,
              backgroundImage: NetworkImage(foto),
            )),
    )
    );
  }
}

