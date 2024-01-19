import 'package:flutter/material.dart';
import 'package:netclean/Explore.dart';
import 'package:netclean/widgets/CContainer.dart';
class RefineScreen extends StatefulWidget {
  const RefineScreen({super.key});

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                height: 125.0,
                width: 125.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0),
                    bottomLeft: Radius.circular(20.0)
                  ),
                  gradient: LinearGradient(colors:[Color(0xffe5e9ec),Color(0xfff0f5f5),Color(0xfffdfdfd)]),
                ),
              ),

              const Column(
                children: [
                  SizedBox(height: 75.0,),
                  Center(child: Text("Join As",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                InkWell(onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const ExploreScreen()));
                },
                    child: CContainer(iconData: Icons.person_2_sharp,title: "Individual",body: "Join and build real community",)),
                const SizedBox(height: 40.0,),
                CContainer(iconData: Icons.business_center_outlined,title: "Professional",body:"Worlds largest real service time Community"),
                const SizedBox(height: 40.0,),
                CContainer(iconData: Icons.business_center_sharp,title: "Merchant",body:"Worlds largest real merchant time Community"),
              ],
            ),

          ),
          ]
    ),
    );
  }

}
