import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sismos',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        tabBarTheme: TabBarTheme(
          labelColor: Colors.orange,
          unselectedLabelColor: Colors.orange,
        ),
      ),
      home: MyHomePage(title: 'Sismos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(bottom: 1.0),
            child: Text(
              widget.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.help),
              color: Colors.orange,
              onPressed: () {
                print('Mostrar ayuda');
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Mapa'),
              Tab(text: 'Lista'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'assets/mapa.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20, // Ajusta la separación horizontal aquí
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange, // Color de fondo
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Lógica para el botón 1
                        },
                        child: Text(
                          '24 horas',
                          style: TextStyle(
                            color: Colors.white, // Color del texto
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 100, // Ajusta la separación horizontal aquí
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey, // Color de fondo
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Lógica para el botón 2
                        },
                        child: Text(
                          '15 días',
                          style: TextStyle(
                            color: Colors.white, // Color del texto
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Center(
                  child: Text('Contenido de la Lista'),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.waves),
                      color: Colors.orange,
                      onPressed: () {},
                    ),
                    Text('Sismos'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.hearing),
                      color: Colors.orange,
                      onPressed: () {},
                    ),
                    Text('¿Lo sentiste?'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.orange,
                      onPressed: () {},
                    ),
                    Text('Más'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
