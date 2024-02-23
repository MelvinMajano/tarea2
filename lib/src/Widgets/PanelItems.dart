import 'package:flutter/material.dart';
class PanelItems extends StatelessWidget {
  const PanelItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [ const SizedBox( 
      width: 380 ,
      height: 40,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text("¿Buscas otra informacion?", style: TextStyle(color: Colors.black, fontSize: 17),)],)
      ),
      InkWell(
        onTap: (){},
        child: const SizedBox( 
        width: 380 ,
        height: 65,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [Icon(Icons.search),FittedBox(child: Text("     Buscar en la cuenta de google                             ")),Icon(Icons.chevron_right)],)
               ),
      ),
     InkWell(
      onTap: (){},
       child: const SizedBox( 
        width: 380 ,
        height: 65,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [Icon(Icons.help_outline_outlined),FittedBox(child: Text("     Ver las Opciones de ayuda                                   ")),Icon(Icons.chevron_right)],)
       ),
     ),
     InkWell(
      onTap: (){},
       child: const SizedBox( 
        width: 380 ,
        height: 65,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [Icon(Icons.message),FittedBox(child: Text("     Enviar comentarios                                               ")),Icon(Icons.chevron_right)],)
       ),
     ),
      ],
    );
  }
}