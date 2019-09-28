import 'package:flutter/material.dart';
import 'package:wallet/tab/transfer.dart';
import 'package:wallet/tab/wallet.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            Wallet(),
            Transfer(),
            Container(
              color: Colors.yellowAccent,
            ),
            Container(
              color: Colors.yellowAccent,
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Container(
              height: 52.0,
              child: Tab(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.account_balance_wallet, size: 24.0,),
                ),
                child: Text("Wallet", style: TextStyle(fontSize: 11.0),),
              ),
            ),
            Container(
              height: 52.0,
              child: Tab(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.compare_arrows, size: 24.0,),
                ),
                child: Text("Transfer", style: TextStyle(fontSize: 11.0),),
              ),
            ),
            Container(
              height: 52.0,
              child: Tab(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.file_upload, size: 24.0, ),
                ),
                child: Text("Pay", style: TextStyle(fontSize: 11.0),),
              ),
            ),
            Container(
              height: 52.0,
              child: Tab(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.person_outline, size: 24.0,),
                ),
                child: Text("Account", style: TextStyle(fontSize: 11.0),),
              ),
            ),
          ],
          labelColor: Colors.redAccent,
          unselectedLabelColor: Colors.grey[300],
          indicatorColor: Colors.white,
        ),
      ),
    );
  }
}
