

import 'package:flutter/material.dart';
class Listtvieww extends StatefulWidget {
  const Listtvieww({Key? key}) : super(key: key);

  @override
  State<Listtvieww> createState() => _ListtviewwState();
}

class _ListtviewwState extends State<Listtvieww> {
   List<int>c=<int>[];
  TextEditingController a=TextEditingController();



  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          TextFormField(
              controller: a,
              // autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'Enter value')
          ),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: (){
            setState(() {
              c.add(int.parse(a.text));
            });
          }, child:Text("OK")),
          SizedBox(height: 100,),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(border: Border.all()
            ),
            child:ListView.builder(
                scrollDirection:Axis.vertical,

                itemCount: c.length,
                //  prototypeItem: ListTile(title: Text(c.last),),
                itemBuilder: (BuildContext context,int index )
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(c[index].toString()),
                  );
                }






            ),
          ),
          // Text("max${c.last}",style: TextStyle(fontSize: 30),),
          // Text("min${c.first}",style: TextStyle(fontSize: 30),),
          // Container(
          //   height: 300,
          //   width: 100,
          //   decoration: BoxDecoration(border: Border.all()
          //   ),
          //   child:ListView.builder(
          //       scrollDirection:Axis.vertical,
          //
          //       itemCount: c.length,
          //       //  prototypeItem: ListTile(title: Text(c.last),),
          //       itemBuilder: (BuildContext context,int index )
          //       {
          //         return Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Text(c[index]),
          //         );
          //       }
          //
          //
          //
          //
          //
          //
          //   ),
          // )
          ElevatedButton(onPressed: (){
            var g = c.reduce((value, element) => value < element ? value : element);
           // var f = c.reduce((value, element) => value > element ? value : element);
            a.text = g.toString();

          }, child: Text("min")),
          ElevatedButton(onPressed: (){
            var f = c.reduce((value, element) => value > element ? value : element);
            a.text=f.toString();
          }, child: Text("max")),
          ElevatedButton(onPressed: (){
            c.sort();
             a.text=c.toString();
          }, child: Text("SORT"))
        ],
      ),
    );
  }
}




