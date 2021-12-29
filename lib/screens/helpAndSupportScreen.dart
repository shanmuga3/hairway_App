import 'package:app/models/businessLayer/baseRoute.dart';
import 'package:app/models/faqModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';

class HelpAndSupportScreen extends BaseRoute {
  HelpAndSupportScreen({a, o}) : super(a: a, o: o, r: 'HelpAndSupportScreen');
  @override
  _HelpAndSupportScreenState createState() => new _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends BaseRouteState {
  GlobalKey<ScaffoldState> _scaffoldKey;
  List<Faqs> _faqList = [];
  bool _isDataLoaded = false;
  _HelpAndSupportScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return sc(
      WillPopScope(
        onWillPop: () {
          Navigator.of(context).pop();
          return null;
        },
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_left_outlined,
                    color: Colors.black,
                  ),

                ],
              ),
            ),
          ),
          resizeToAvoidBottomInset: false,
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "FAQ's,",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ), SizedBox(
                    height: 15,
                  ),
                  Card(
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.whatsapp,color: Colors.green,
                            size: 50,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            '+917784026558',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Card(
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.phone,color: Colors.blue,
                            size: 50,
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            '+917784026558',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Card(
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image(height: 240,
                        image: AssetImage('assets/intro_1.png',),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  getFaqs() async {
    try {
      bool isConnected = await br.checkConnectivity();
      if (isConnected) {
        await apiHelper.getFaqs().then((result) {
          if (result != null) {
            if (result.status == "1") {
              _faqList = result.recordList;
            } else {
              _faqList = [];
            }
          }
        });
      } else {
        showNetworkErrorSnackBar(_scaffoldKey);
      }
    } catch (e) {
      print("Exception - helpAndSupportScreen.dart - _getFaqss():" +
          e.toString());
    }
  }

  init() async {
    try {
      await getFaqs();
      _isDataLoaded = true;
      setState(() {});
    } catch (e) {
      print("Exception - helpAndSupportScreen.dart - init():" + e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }

//   Widget _shimmer() {
//     return Padding(
//       padding: const EdgeInsets.all(15),
//       child: Shimmer.fromColors(
//         baseColor: Colors.grey[300],
//         highlightColor: Colors.grey[100],
//         child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: 8,
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                   height: 60,
//                   padding: const EdgeInsets.only(bottom: 8),
//                   child: Card());
//             }),
//       ),
//     );
//   }
}
