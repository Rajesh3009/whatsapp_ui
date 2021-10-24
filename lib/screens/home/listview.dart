// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/chats.dart';

Widget listview() {
  var _data = data;
  return ListView.builder(
    itemCount: _data.length,
    itemBuilder: (context, index) {
      return SizedBox(
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CircleAvatar(
                child: Icon(Icons.account_balance),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  _data[index]['name'].toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(_data[index]['message'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    )),
              ],
            )
          ],
        ),
      );
    },
  );
}
