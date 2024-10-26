import 'package:flutter/material.dart';
import 'package:hive_app/database.dart';
class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WISTLISH'),
      ),
      body: ListView.separated(separatorBuilder: (context,index){
        return SizedBox(height: 10);
      },
       itemCount: 1,
       itemBuilder: (context,index){
        return Container(
          height: 100,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Database.MyList[index]['image']))),
              )
            ],
          ),
        );
       }),
    );
  }
}