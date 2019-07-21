import 'package:flutter/material.dart';

class TabController extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: () =>{
              print("侧边栏")
            },
          ),
          title: Text(widget.title),   
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: ()=>{
                print('search')
              },
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist,size:128.0,color: Colors.black12),
            Icon(Icons.change_history,size:128.0,color: Colors.black12),
            Icon(Icons.directions_bike,size:128.0,color: Colors.black12),
          ],
        ),
      ),
    );
  }
}