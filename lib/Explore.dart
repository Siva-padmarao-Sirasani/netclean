import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            // Container pinned to the top
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 125.0,
                  decoration:const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff0a2e41), Color(0xff143e59)],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 12.00,),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.menu_open, size: 35.0, color: Colors.white,),
                              SizedBox(width: 15.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Text(
                                      "Explore",
                                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on, size: 15, color: Colors.white,),
                                      Text("San Francisco, California", style: TextStyle(fontSize: 11.0, color: Colors.white),),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.notifications, color: Colors.white,),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            _buildTopOption('INDIVIDUAL', 0),
                            const SizedBox(width: 27.0,),
                            _buildTopOption('PROFESSIONAL', 1),
                            const SizedBox(width: 27.0,),
                            _buildTopOption('MERCHANT', 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Container(
                    height: 40.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.black54,),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.search,color: Colors.black54,),
                        ),
                        SizedBox(width: 10.0,),
                        Center(child: Text("Search")),
                      ],
                    ),
                  ),
                  const SizedBox(width: 25.0,),
                  const Icon(Icons.menu_sharp,color: Colors.black,size: 30.0,)
                ],
              ),
            ),
            // Additional Container
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: const Color(0xffd4d1e9)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0,top: 12.0),
                      child: Row(
                        children: [
                          Spacer(),
                          Text("+ INVITE",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black),)
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70.0,
                          width: 70.0,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xffd4d1e9),
                              image: const DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                                  fit: BoxFit.cover
                              ),
                          ),
                        ),
                        const SizedBox(width: 15.0,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Micheal Murphy",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),),
                            Text("San fransico,within 1KM",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 12.0),),
                            Divider(
                              height: 20,
                              thickness: 5,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.black,
                            ),                        ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0,),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text("Friendship | Coffe | Hangout",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14.0),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text("Hi community i am open to new connections",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 12.0),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: const Color(0xffd4d1e9)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0,top: 12.0),
                      child: Row(
                        children: [
                          Spacer(),
                          Text("PENDING",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black54),)
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70.0,
                          width: 70.0,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xffd4d1e9),
                              image: const DecorationImage(image: NetworkImage("https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg"),
                                  fit: BoxFit.cover
                              ),
                          ),
                        ),
                        const SizedBox(width: 15.0,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Micheal Murphy",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),),
                            Text("San fransico,within 1KM",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 12.0),),
                            Divider(
                              height: 20,
                              thickness: 5,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.black,
                            ),                        ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0,),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text("Coffe | MOVIE | HOBBIES",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14.0),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text("Going to berkly, with have san fransico",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 12.0),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color:const Color(0xffd4d1e9)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0,top: 12.0),
                      child: Row(
                        children: [
                          Spacer(),
                          Text("PENDING",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black54),)
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70.0,
                          width: 70.0,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xffd4d1e9),
                              image: const DecorationImage(image: NetworkImage("https://imgupscaler.com/images/samples/animal-after.webp"),
                                  fit: BoxFit.cover
                              ),
                          ),
                        ),
                        const SizedBox(width: 15.0,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Jennifer",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),),
                            Text("San fransico,within 1KM",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 12.0),),
                            Divider(
                              height: 20,
                              thickness: 5,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.black,
                            ),                        ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0,),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text("Friendship | Coffe | Hangout",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14.0),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text("Hi community i am open to new connections",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 12.0),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        currentIndex: _selectedOption,
        onTap: (index) {
          setState(() {
            _selectedOption = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: _selectedOption == 0 ? Colors.black : const Color(0xFFd4d1e9),),
            label: 'Refine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye_sharp, color: _selectedOption == 1 ? Colors.black : const Color(0xFFd4d1e9),),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.network_wifi, color: _selectedOption == 2 ? Colors.black : const Color(0xFFd4d1e9),),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: _selectedOption == 3 ? Colors.black :const Color(0xFFd4d1e9)),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts, color: _selectedOption == 4 ? Colors.black :const Color(0xFFd4d1e9)),
            label: 'Contacts',
          ),
        ],
        selectedLabelStyle: const TextStyle(color: Colors.black), // Set color for selected label
        unselectedLabelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildTopOption(String label, int index) {
    return Text(
      label,
      style: TextStyle(
        color: _selectedOption == index ? Colors.white : Colors.white.withOpacity(0.7),
      ),
    );
  }
}
