import 'package:flutter/material.dart';
import '../red_page/red_page.dart';
import '../blue_page/blue_page.dart';
import '../green_page/green_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 10),
                const Text("Connected"),
                const SizedBox(width: 5),
                Container(
                  height: 4,
                  width: 4,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 5),
                const Text("example@gmail.com"),
                const Expanded(child: SizedBox()),
                FilledButton(
                    onPressed: () => {}, child: const Text("Disconnect"))
              ],
            ),
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Red'),
                Tab(text: 'Green'),
                Tab(text: "Settings"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics:
                    const NeverScrollableScrollPhysics(), // Disable swiping
                children: const [
                  RedPage(),
                  GreenPage(),
                  BluePage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
