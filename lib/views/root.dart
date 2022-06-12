import 'package:flutter/material.dart';
import 'package:flutter_memo_sample/views/home_page.dart';
import 'package:flutter_memo_sample/views/edit_page.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentIndex = 0;
  List<StatelessWidget> pageWidgetList = [
    const Home(),
    const Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: pageWidgetList,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const Edit(),
              ),
            ),
          },
          child: const Icon(Icons.edit),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => {
            setState(
              () => currentIndex = index,
            )
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'home',
            ),
          ],
        ),
      ),
    );
  }
}
