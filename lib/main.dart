import 'package:flutter/material.dart';
void main()=>runApp(Leave());
class Leave extends StatelessWidget {
  const Leave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leave Summary',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Leave Summary',
            style: TextStyle(
                color: Colors.white,fontSize: 23,fontWeight: FontWeight.w400),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:  Alignment.bottomRight,
              colors: <Color>[Colors.cyan,Colors.lightBlue])
            ),
          ),

        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(50, 25, 50,25),
                  margin: EdgeInsets.fromLTRB(90, 20, 20, 24),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow:[ BoxShadow(
                        color: Colors.grey,
                        blurRadius:55,
                        offset: Offset(0,25),
                    ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors:[Colors.cyan,Colors.lightBlue] ),
                  ),
                  child: Image.asset('icons/img.png'),

                ),
              ],
            ),
            Row(
              children: [
                Center(
                  child: Container(
                    margin:EdgeInsets.fromLTRB(115,10,50,25) ,
                    child: Text('Tap to Apply leave',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.grey),),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20,20,10,20),
                  height: 10,
                  width: 10,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1),
                  child: Text('Total leaves',style: TextStyle(fontWeight: FontWeight.w400,fontSize:20,color: Colors.grey),),
                ),
                Container(
                  margin:  EdgeInsets.fromLTRB(70, 20,3, 20),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.lightBlue
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('Leaves Used',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.grey),),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20,50,45,170),
                  child: Icon(Icons.arrow_back_ios,size: 40,color: Colors.lightBlue,),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 50,20,170),
                  child: Text('May, 2023', style: TextStyle(fontSize:30,fontWeight: FontWeight.w400),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(60, 50, 20, 170),
                  child: Icon(Icons.arrow_forward_ios, size: 40,color: Colors.lightBlue,),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20,40, 20, 1),
                  child: Icon(Icons.home_outlined,color: Colors.grey,size: 33,),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(20,40, 20, 1),
                  child: Icon(Icons.calendar_month_outlined,color: Colors.grey,size:30,),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(120, 40, 20,1),
                  child: Icon(Icons.phone_outlined,color: Colors.grey,size:30,),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 40,20,1),
                  child: Icon(Icons.notifications_outlined,color: Colors.grey,size: 30,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


