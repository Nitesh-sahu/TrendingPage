import 'package:flutter/material.dart';
import 'list.dart';
import 'Homepage.dart';
class TrendingPage extends StatefulWidget {
  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: const Text("Trending Page"),
        centerTitle: true,
      ),
      //Drwer
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountEmail: Text("Nitesh@gmail"),
              accountName: Text("Nitesh"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                backgroundImage: AssetImage("image/logo.png"),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.home),
              title: Text("Homepage"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homepage()));
              },
            ),
            ListTile(
              trailing: Icon(Icons.trending_up),
              title: Text("Trending Page"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrendingPage()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[for (int i = 0; i < 5; i++) texting(context, i)],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
        onPressed: (){
          print("You can Add your Blog");
        },

      ) ,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70.0,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
  Widget texting(BuildContext context,int index)
  {
    double deviceHeight=MediaQuery.of(context).size.height /3;
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
      child: Card(
        elevation: 5.0,
        child: Container(
          height: deviceHeight,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: deviceHeight/1.5,
                width: MediaQuery.of(context).size.width,
                child: FadeInImage(
                  image: NetworkImage(blogimage[index]),
                  placeholder: AssetImage("image/logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: deviceHeight /4,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(
                          color: Colors.transparent,
                          height: 5.0,
                        ),
                        Text(
                          item[index],
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          color: Colors.transparent,
                          height: 3.0,
                        ),
                        Text(
                          blogsubtitle[index],
                          style: TextStyle(fontSize: 12.0),
                        ),

                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Text(ratings[index],style: TextStyle(fontSize: 10.0),),
                        SizedBox(
                          width: 3.0,
                        ),
                        Icon(Icons.favorite,color: Colors.red,)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
