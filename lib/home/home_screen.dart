import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/home/quran/quran_tab.dart';
import 'package:islami_app/home/radio/radio_tab.dart';
import 'package:islami_app/home/tasbeh/tasbhe_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              AppLocalizations.of(context)!.app_title,
            ),
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/quran.png'),
                ),
                label: AppLocalizations.of(context)!.quran_title,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/ic_hadeth.png'),
                ),
                label: AppLocalizations.of(context)!.hadeth_title,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/sebha.png'),
                ),
                label: AppLocalizations.of(context)!.tasbeh_title,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/radio.png'),
                ),
                label: AppLocalizations.of(context)!.radio_title,
              ),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
