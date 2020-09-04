import 'package:flutter/material.dart';
import 'package:passing_data_flutter/model/model.dart';
import 'package:passing_data_flutter/pages/pages.dart';

class PagePassingValue extends StatefulWidget {
  @override
  _PagePassingValueState createState() => _PagePassingValueState();
}

class _PagePassingValueState extends State<PagePassingValue> {
  //declare variable
  var _userController = new TextEditingController();
  var _emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Passing Data'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextFormField(
                  controller: _userController,
                  decoration: InputDecoration(
                    hintText: 'Input Username',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Input Email',
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 5),
                      child: MaterialButton(
                        color: Colors.white,
                        textColor: Colors.black,
                        onPressed: () => print('Cancel'),
                        child: Text('Cancel'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      child: MaterialButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        onPressed: () {
                          var route = new MaterialPageRoute(
                              builder: (BuildContext context) => GetData(
                                    value: UserModel(
                                      _userController.text,
                                      _emailController.text,
                                    ),
                                  ));
                          Navigator.of(context).push(route);
                        },
                        child: Text('Submit'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
