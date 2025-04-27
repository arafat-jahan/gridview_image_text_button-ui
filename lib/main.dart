import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GridViewExample(),
    );
  }
}

class GridViewExample extends StatelessWidget{
  const GridViewExample({super.key});


  //images set



  @override
  Widget build(BuildContext context ){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "GridView with image,text, button,description"
        ),

        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: (context, index){
          return Card(
            elevation: 5,
            color: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                  ),

                child: Image.asset(
                  'assets/pro.png',
                 fit: BoxFit.cover,
            ),

                ),
),
                const SizedBox(height: 10),
                Text(
                  'Item $index',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),

                  child: Text(
                    'This is a description for item $index. It explains more about the item.',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14,color:Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: (){
                      print('Button pressed for $index');
                    },
                    child: const Text('View Details'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                    ),
                  ),
                )
              ],
            ),
          );
        }
      ),

    );
  }
}