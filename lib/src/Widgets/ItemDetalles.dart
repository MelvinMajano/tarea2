import 'package:flutter/material.dart';

class ItemDetalles extends StatelessWidget {
  const ItemDetalles({super.key,
  required this.titulo,required this.cuerpo, this.onPressed,required this.detalles, required this.foto});
   
   final String titulo;
   final String cuerpo;
   final Function()? onPressed;
   final String detalles;
   final String foto;
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      height: 150,
      child: ListTile(
          title: Text(titulo,style: const TextStyle(color: Colors.black)),
          subtitle:   SizedBox(
            height: 120,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(cuerpo,style: const TextStyle(color: Color.fromARGB(255, 98, 93, 93))),
                  TextButton(onPressed: onPressed,child:  Text(detalles, style:  TextStyle(color: Colors.blue[500], fontSize: 14),),),
                ],
                ),
          ),
          trailing:  Padding(padding:const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child:  CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(foto),
            )
            ),
        ),
    );
  }
}