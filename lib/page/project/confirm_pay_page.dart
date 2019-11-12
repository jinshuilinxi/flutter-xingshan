import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

import 'package:xingshan/common/utils/navigator_utils.dart';
class XSConfirmPayPage extends StatefulWidget {
  XSConfirmPayPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSConfirmPayPageState createState() => _XSConfirmPayPageState();
}

_renderItem(title, hintText) {
  return Container(
    color: XSColors.primaryLineValue,
    padding: EdgeInsets.only(left: 10.0,right: 10.0),
    height: 40.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Text(title, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
          flex: 1,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(hintText, style: TextStyle(fontSize: 14.0,color: XSColors.primaryTabValue),),
            ],
          ),
          flex: 1,
        ),
      ],
    )
  );
}

class _XSConfirmPayPageState extends State<XSConfirmPayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('我要出钱',style: TextStyle(color: XSColors.white,),),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(XSICons.PROJECT_BACKGROUND),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: double.infinity,
            margin: EdgeInsets.only(bottom: 94.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0),),
              color: XSColors.white,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '你将通过付钱的方式邀请大家来运动，共同支持',
                        style: TextStyle(fontSize: 14.0,color: XSColors.greyTextColor),
                      ),
                      Text(
                        '免费午餐',
                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Divider(color: XSColors.dividerColor, height: 2.0,),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('20.00', style: TextStyle(color: XSColors.redTextColor,fontSize: 36.0),),
                      Container(
                        padding: EdgeInsets.fromLTRB(10.0,12.0,10.0,12.0),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              new TextSpan(text: '中储粮公司为您配捐'),
                              new TextSpan(
                                text: '10.00',
                                style: TextStyle(
                                  color: XSColors.orangeTextColor
                                )
                              ),
                              new TextSpan(text: '元'),
                            ]
                          )
                        )
                      ),
                      Padding(padding: EdgeInsets.all(7.5),),
                      Text('支持免费午餐，为您健康买单', style: TextStyle(color: XSColors.greyTextColor),),
                      Padding(padding: EdgeInsets.all(17.5),),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 44.0,
                        color: Theme.of(context).primaryColor,
                        child: Text('建行卡支付', style: TextStyle(color: XSColors.white),),
                        onPressed: () {
                          NavigatorUtils.goPaySuccess(context);
                        },
                      ),
                      Padding(padding: EdgeInsets.all(5.0),),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: new OutlineButton(
                              borderSide:new BorderSide(color: Theme.of(context).primaryColor),
                              child: new Text('微信支付',style: new TextStyle(color: Theme.of(context).primaryColor),),
                              onPressed: (){},
                            )
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(5.0),),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: new OutlineButton(
                              borderSide:new BorderSide(color: Theme.of(context).primaryColor),
                              child: new Text('支付宝',style: new TextStyle(color: Theme.of(context).primaryColor),),
                              onPressed: (){},
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        )
      )
    );
  }
}