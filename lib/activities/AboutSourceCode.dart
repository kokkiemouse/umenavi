import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
class AboutSourceCodePage extends StatefulWidget{
  _AboutSourceCodePageState createState()=>new _AboutSourceCodePageState();
}
class _AboutSourceCodePageState extends State<AboutSourceCodePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("About SourceCode"),
      ),
      body: ListView(
        children:[
          InkWell(
              onTap: ()async{
                HapticFeedback.heavyImpact();
                await launch("https://github.com/FukukouSSJouhou/umenavi");
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      SvgPicture.asset("images/icon/iconumenavi.svg",height: 270,),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("Download SourceCode"),
                            subtitle: Text("本アプリはMITライセンスのため、ソースコードの閲覧が可能です。"),
                          )
                      ),
                    ],
                  )
              )
          )
          ]
      ),
    );
  }
}