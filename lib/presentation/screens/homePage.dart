import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<Widget> pageViewList = [];
  List<Tab> tabBarbuttonList = [];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    pageViewList.add(videoList());
    pageViewList.add(recommendedList());
    tabBarbuttonList.add(tabButton('Home'));
    tabBarbuttonList.add(tabButton('Recommended'));
    _tabController = TabController(length: pageViewList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Androstream'),
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu));
          },
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        bottom: TabBar(controller: _tabController, tabs: tabBarbuttonList),
      ),
      drawer: Drawer(),
      body: Column(children: [
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: pageViewList,
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.upload),
        onPressed: () {},
      ),
    );
  }

  Widget videoList() {
    return const Center(child: Text('Video List'));
  }

  Widget recommendedList() {
    return const Center(child: Text('Recommended List'));
  }

  Tab tabButton(String name) {
    return Tab(
      text: name,
    );
  }
}
