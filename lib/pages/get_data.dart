import 'package:flutter/material.dart';
import 'package:passing_data_flutter/model/model.dart';

class GetData extends StatefulWidget {
  final UserModel value;

  const GetData({Key key, this.value}) : super(key: key);

  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data'),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: new Text(
                  'Username : ' + widget.value.username,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: new Text(
                  'Email : ${widget.value.email}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
