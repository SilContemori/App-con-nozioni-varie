import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  //Metodi di logica
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Botton"),
          centerTitle: true,
        ),
        body:body(),
        //Center(child: body()), 
      ),
    );
  }
}

Widget body()=>SafeArea(
  child: SingleChildScrollView(
  child: Column(
  children:List.generate(
    100, 
    (index) => GestureDetector(
      onTap: (){
        print("Clicked: ${index+1},pokemon");
      },
      child:  Padding(
        padding: EdgeInsets.only(top: 10,left: 10,),
        child:Text("#${index+1} Pokemon"),
      ),
    ),
  ),
)));

/*NOTIFICA
Widget body()=>Stack(
  children:[
    Icon(
      Icons.person,
      size: 80,
    ),
    Positioned(
      right: 0,
      bottom: 0,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            "2",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          )
        ),
      ),
    ),
  ],
  
  );
*/

/*COLUMN E ROW
Widget body()=>Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  mainAxisSize: MainAxisSize.max,
  children: [
    Text("Riga 1"),
    Text("Riga 2"),
    Text("Riga 3"),
  ],
);
*/
/*CARD CON BOTTONE
Widget body()=> Card(
  child: InkWell(
    onTap:(){},
      child: Container(
        height: 200,
        width: 200,
        child: Text("Card"),
      ),
  ),
);
*/

/*CARD CON I CONTEINER  
Widget body()=>Container(
  width: 200,
  height: 200,  
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.grey.shade300,width: 1),
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        blurRadius: 5,
        spreadRadius: 2,
        color: Colors.black.withOpacity(0.3),
      ),
    ],
  ),
  child: Center(child: Text("Card"),),
);
*/
/*"IMMAGINE" PROFILO
Widget body()=> CircleAvatar(
  radius: 50,
  backgroundImage: AssetImage("assets/image/neom-bOMVTvE2QFU-unsplash.jpg"),
);
*/
/*
  IMMAGINI
  Widget body()=>SizedBox(
  width: 200,
  height: 200,
  child: Image(
  //image:AssetImage("assets/image/neom-bOMVTvE2QFU-unsplash.jpg"), -> immagine dal locale pubspec.yaml
    image: NetworkImage("https://images.unsplash.com/photo-1710461638555-27795861894f?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    fit: BoxFit.cover,
  ),
);
*/
/*ICONE
Widget body() => Icon(
  Icons.auto_delete_outlined,
  size: 80,
  color: Colors.grey.shade600,
);
*/
  //Metodi di costruzione dell'interfaccia utente
/*COLORI
  Widget body()=>Text(
    "Empty",
      style: TextStyle(
        fontSize: 30,
        //color: Colors.indigo.shade300.withOpacity(0.9),
        color: Color.fromRGBO(0, 0, 255, 1),
      ),
  );*/

 /*ESEMPIO DI COME POSSO SOSTITUIRE LA FUNZIONE PRESENTE NELLA CLASSE App 
 AppBar appBar()=> AppBar(
      title: Text("Botton"),
  );
  
  BOTTONI
  Widget body()=>IconButton(
    onPressed:()=> print("Pressed"),
    icon: Icon(Icons.plus_one),
  );
}*/
