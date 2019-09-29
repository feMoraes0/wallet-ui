import 'package:flutter/material.dart';
import 'package:wallet/tab/account.dart';
import 'package:wallet/tab/pay.dart';
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
            Pay(),
            Account(),
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
                  child: Icon(Icons.person, size: 24.0,),
                ),
                child: Text("Account", style: TextStyle(fontSize: 11.0),),
              ),
            ),
          ],
          labelColor: Color(0xffff2d55),
          unselectedLabelColor: Colors.grey[400],
          indicatorColor: Colors.white,
        ),
      ),
    );
  }
}
