import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chat'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              const SizedBox(
                width: 20,
              ),
              const Center(
                  child: Padding(
                padding: EdgeInsets.all(30),
                child: Icon(Icons.search),
              )),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        const PopupMenuItem(child: Text('New Group')),
                        const PopupMenuItem(child: Text('Setting ')),
                        const PopupMenuItem(child: Text('Logout ')),
                      ]),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          // for camra
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 1,
                  itemBuilder: ((context, index) => const ListTile(
                        leading: Icon(Icons.camera_alt),
                      ))),
              // for chat
              ListView.builder(
                  itemCount: 3,
                  itemBuilder: ((context, index) => const ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/15595250/pexels-photo-15595250.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        title: Text('Rabia Ehsan'),
                        subtitle: Text('whatsupp??'),
                        trailing: Text('2:30 AM'),
                      ))),
              // for Status,
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) => ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.green,
                                  width: 4,
                                  strokeAlign: StrokeAlign.inside)),
                          child: const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/15595250/pexels-photo-15595250.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                        title: const Text('Rabia Ehsan'),
                        subtitle: const Text('34 minuts ago'),
                      ))),
              //for Calls
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: ((context, index) => ListTile(
                        leading: const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/15595250/pexels-photo-15595250.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        title: Text('Rabia Ehsan'),
                        subtitle: Text('35 minuts ago'),
                        trailing: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            index == 2 ? Icons.call : Icons.video_call,
                            color: Colors.teal,
                          ),
                        ),
                      ))),
            ],
          )),
    );
  }
}
