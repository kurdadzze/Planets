import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
          primarySwatch: Colors.purple,
      ),
      home: HomeScreen(),
    );
  }
}

class PlanetModel{
    final String name;
    final String photo;
    final String description;

    PlanetModel({this.name, this.photo, this.description});

}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    final items = [
        PlanetModel(
            name:'Earth',
            photo: 'https://images.vexels.com/media/users/3/158022/isolated/lists/469aee059acfd1e579b12b9d33683b75-grey-earth-icon.png',
            description:'Earth is the third planet from the Sun and the only astronomical object known to harbor life. About 29% of Earths surface is land consisting of continents and islands. The remaining 71% is covered with waterr, mostly by oceans, seas, gulfs, and other salt water bodies.',
        ),
                PlanetModel(
            name:'Mars',
            photo: 'https://www.freepnglogos.com/uploads/mars-png/mars-transparent-png-stickpng-0.png',
            description:'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the "Red Planet".',
        ),
                PlanetModel(
            name:'Mercury',
            photo: 'https://th.bing.com/th/id/OIP.rZut7p0QmwTg47U8h1FezwHaFi?pid=ImgDet&rs=1',
            description:'Mercury is the smallest and closest planet to the Sun in the Solar System. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the planets in the Solar System. It is named after the Roman god Mercurius, god of commerce. ' ,
        ),
    ];

int activeIndex = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Planets"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 600,
            child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 36,
                ),  
                Text(
                  items[activeIndex].name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.network(items[activeIndex].photo), 
                SizedBox(
                  height: 30,
                ),
                
                Text(
                  items[activeIndex].description,
                  style: TextStyle(color: Colors.purple, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          setState(() {
            if(activeIndex == items.length - 1) 
                activeIndex =0;
                else ++activeIndex;
          });
        },
      ),
    );
  }
}