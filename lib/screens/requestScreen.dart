import 'package:app/dialogs/userRequestAcceptDialog.dart';
import 'package:app/models/appointmentHistoryModel.dart';
import 'package:app/models/businessLayer/baseRoute.dart';
import 'package:app/models/businessLayer/global.dart' as global;
import 'package:app/models/userRequestModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shimmer/shimmer.dart';

class RequestScreen extends BaseRoute {
  RequestScreen({a, o}) : super(a: a, o: o, r: 'RequestScreen');
  @override
  _RequestScreenState createState() => new _RequestScreenState();
}

class _RequestScreenState extends BaseRouteState {
  GlobalKey<ScaffoldState> _scaffoldKey;
  List<AppointmentHistory> _appointmentHistoryList = [];
  List<UserRequest> _userRequest = [];
  bool _isDataLoaded = false;
  _RequestScreenState() : super();





  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return null;
      },
      child: sc(
        DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                title: Text(
                  'Hair Way',
                  style: TextStyle(color: Colors.black),
                ),
                centerTitle: true,bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      'Ongoing',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Tab(
                      child: Text(
                        'History',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ))
                ],
              ),
              ),
              body: TabBarView(
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          margin: EdgeInsets.only(top: 20),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                // Container(
                                //   margin: EdgeInsets.only(top: 25, bottom: 10),
                                //   child: Text(
                                //     AppLocalizations.of(context).lbl_user_request,
                                //     style: Theme.of(context)
                                //         .primaryTextTheme
                                //         .headline3,
                                //   ),
                                // ),
                                _isDataLoaded
                                    ? _userRequest.length > 0
                                    ? Expanded(
                                  child: ListView.builder(
                                      itemCount: _userRequest.length,
                                      itemBuilder: (BuildContext context,
                                          int index) {
                                        return Container(
                                          height: 85,
                                          child: Card(
                                            margin: const EdgeInsets.only(
                                                top: 8),
                                            child: ListTile(
                                              onTap: () {
                                                if (_userRequest[index]
                                                    .statustext ==
                                                    "Pending") {
                                                  _userRequestDialog(
                                                      index);
                                                }
                                              },
                                              contentPadding:
                                              EdgeInsets.zero,
                                              leading: Padding(
                                                padding: global.isRTL
                                                    ? EdgeInsets.only(
                                                    right: 5)
                                                    : EdgeInsets.only(
                                                    left: 5),
                                                child: CircleAvatar(
                                                  child: _userRequest[
                                                  index]
                                                      .user ==
                                                      null
                                                      ? CircleAvatar(
                                                      radius: 25,
                                                      backgroundImage:
                                                      AssetImage(
                                                          'assets/userImage.png'))
                                                      : _userRequest[index]
                                                      .user
                                                      .image ==
                                                      'N/A'
                                                      ? CircleAvatar(
                                                      radius: 25,
                                                      backgroundImage:
                                                      AssetImage(
                                                          'assets/userImage.png'))
                                                      : CachedNetworkImage(
                                                    imageUrl: global
                                                        .baseUrlForImage +
                                                        _userRequest[index]
                                                            .user
                                                            .image,
                                                    imageBuilder:
                                                        (context,
                                                        imageProvider) =>
                                                        CircleAvatar(
                                                          radius:
                                                          25,
                                                          backgroundImage:
                                                          imageProvider,
                                                        ),
                                                    placeholder: (context,
                                                        url) =>
                                                        Center(
                                                            child:
                                                            CircularProgressIndicator()),
                                                    errorWidget: (context,
                                                        url,
                                                        error) =>
                                                        Icon(Icons
                                                            .error),
                                                  ),
                                                  radius: 25,
                                                ),
                                              ),
                                              title: Padding(
                                                padding: const EdgeInsets
                                                    .only(),
                                                child: Text(
                                                  _userRequest[index]
                                                      .user !=
                                                      null
                                                      ? '${_userRequest[index].user.name}'
                                                      : 'No Name',
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .subtitle2,
                                                  maxLines: 1,
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                ),
                                              ),
                                              subtitle: Padding(
                                                padding:
                                                const EdgeInsets.only(
                                                    left: 0),
                                                child: Text(
                                                  '${_userRequest[index].service_date}\n${_userRequest[index].service_time}',
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .subtitle1,
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                  maxLines: 2,
                                                ),
                                              ),
                                              horizontalTitleGap: 7,
                                              trailing: Container(
                                                width: 120,
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .end,
                                                  children: [
                                                    _userRequest[index]
                                                        .statustext ==
                                                        "Pending"
                                                        ? Row(
                                                      mainAxisSize:
                                                      MainAxisSize
                                                          .min,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      children: [
                                                        InkWell(
                                                          onTap:
                                                              () {
                                                            _userRequestDialog(
                                                                index);
                                                          },
                                                          child: Container(
                                                              padding: EdgeInsets.all(4),
                                                              decoration: BoxDecoration(
                                                                color:
                                                                Theme.of(context).primaryColor,
                                                                borderRadius:
                                                                BorderRadius.all(
                                                                  Radius.circular(11),
                                                                ),
                                                              ),
                                                              child: Text(
                                                                'Accept',
                                                                style:
                                                                Theme.of(context).primaryTextTheme.bodyText1,
                                                              )),
                                                        ),
                                                        InkWell(
                                                          onTap:
                                                              () {
                                                            _requestCancelConfirmationDialog(
                                                                _userRequest[index].id);
                                                          },
                                                          child: Container(
                                                              margin: EdgeInsets.only(left: 3, right: 6),
                                                              padding: EdgeInsets.all(4),
                                                              decoration: BoxDecoration(color: Theme.of(context).primaryColorLight, borderRadius: BorderRadius.all(Radius.circular(12))),
                                                              child: Text(
                                                                'Cancel',
                                                                style:
                                                                Theme.of(context).primaryTextTheme.bodyText2,
                                                              )),
                                                        )
                                                      ],
                                                    )
                                                        : GestureDetector(
                                                      onTap: () {
                                                        if (_userRequest[index]
                                                            .statustext ==
                                                            "Confirmed") {
                                                          _requestCompleteConfirmationDialog(
                                                              _userRequest[index]
                                                                  .id);
                                                        }
                                                      },
                                                      child:
                                                      Container(
                                                        height: 30,
                                                        width: 130,
                                                        margin: EdgeInsets.only(
                                                            left: 5,
                                                            right:
                                                            5),
                                                        decoration: BoxDecoration(
                                                            color: _userRequest[index].statustext == "Pending"
                                                                ? Colors.amber
                                                                : _userRequest[index].statustext == "Completed"
                                                                ? Colors.green[600]
                                                                : _userRequest[index].statustext == "Cancelled"
                                                                ? Colors.grey
                                                                : _userRequest[index].statustext == "Payment Failed"
                                                                ? Colors.red
                                                                : _userRequest[index].statustext == "Confirmed"
                                                                ? Colors.blue[600]
                                                                : Colors.red,
                                                            borderRadius: BorderRadius.all(Radius.circular(5))),
                                                        padding:
                                                        EdgeInsets
                                                            .all(4),
                                                        child:
                                                        Center(
                                                          child:
                                                          Text(
                                                            '${_userRequest[index].statustext}',
                                                            style: Theme.of(context)
                                                                .primaryTextTheme
                                                                .headline5
                                                                .copyWith(color: Theme.of(context).primaryTextTheme.headline5.color.withOpacity(0.8)),
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets
                                                          .only(
                                                          top: 3,
                                                          left: 15,
                                                          right: 5),
                                                      child: Text(
                                                        '${global.currency.currency_sign}${_userRequest[index].total_price}',
                                                        style: Theme.of(
                                                            context)
                                                            .primaryTextTheme
                                                            .subtitle2,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                )
                                    : Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: MediaQuery.of(context)
                                            .size
                                            .height /
                                            3),
                                    child: Text(AppLocalizations.of(
                                        context)
                                        .txt_user_request_will_be_shown_here),
                                  ),
                                )
                                    : Expanded(child: _shimmer())
                              ],
                            ),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      // Container(
                      //   height: 100,
                      //   width: MediaQuery.of(context).size.width,
                      //   child: ColorFiltered(
                      //     colorFilter: ColorFilter.mode(
                      //       Theme.of(context).primaryColor,
                      //       BlendMode.screen,
                      //     ),
                      //     child: Image.asset(
                      //       'assets/banner.jpg',
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                          ),
                          margin: EdgeInsets.only(top: 20),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                // Container(
                                //   margin: EdgeInsets.only(top: 30, bottom: 10),
                                //   child: Text(AppLocalizations.of(context).lbl_appointment_history, style: Theme.of(context).primaryTextTheme.headline3),
                                // ),
                                _isDataLoaded
                                    ? _appointmentHistoryList.length > 0
                                    ? Expanded(
                                  child: ListView.builder(
                                      itemCount: _appointmentHistoryList.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            _detailDialog(index);
                                          },
                                          child: Card(
                                            margin: EdgeInsets.only(top: 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: global.isRTL ? EdgeInsets.only(right: 5) : EdgeInsets.only(left: 5),
                                                  child: CircleAvatar(
                                                    child: _appointmentHistoryList[index].user == null
                                                        ? CircleAvatar(radius: 25, backgroundImage: AssetImage('assets/userImage.png'))
                                                        : _appointmentHistoryList[index].user.image == 'N/A'
                                                        ? CircleAvatar(radius: 25, backgroundImage: AssetImage('assets/userImage.png'))
                                                        : CachedNetworkImage(
                                                      imageUrl: global.baseUrlForImage + _appointmentHistoryList[index].user.image,
                                                      imageBuilder: (context, imageProvider) => CircleAvatar(
                                                        radius: 25,
                                                        backgroundImage: imageProvider,
                                                      ),
                                                      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                                    ),
                                                    radius: 25,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding: global.isRTL ? EdgeInsets.only(right: 10.0, top: 5) : EdgeInsets.only(left: 10.0, top: 5),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                            child: Text(
                                                              _appointmentHistoryList[index].user != null ? '${_appointmentHistoryList[index].user.name}' : 'No Name',
                                                              style: Theme.of(context).primaryTextTheme.subtitle2,
                                                            )),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 2),
                                                          child: Text(
                                                            '${_appointmentHistoryList[index].serviceDate} \n${_appointmentHistoryList[index].serviceTime}',
                                                            style: Theme.of(context).primaryTextTheme.subtitle1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 80,
                                                  margin: EdgeInsets.only(right: 5),
                                                  padding: const EdgeInsets.only(top: 15),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        '${global.currency.currency_sign}${_appointmentHistoryList[index].totalPrice}',
                                                        style: Theme.of(context).primaryTextTheme.subtitle2,
                                                      ),
                                                      Container(
                                                        height: 40,
                                                        width: 118,
                                                        child: Text(
                                                          '${_appointmentHistoryList[index].statustext}',
                                                          style: Theme.of(context).primaryTextTheme.subtitle1,
                                                          maxLines: 2,
                                                          overflow: TextOverflow.ellipsis,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                )
                                    : Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
                                    child: Text(AppLocalizations.of(context).txt_appointment_history_will_be_shown_here),
                                  ),
                                )
                                    : Expanded(child: _shimmer())
                              ],
                            ),
                          ))
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
  getAppointmentHistory() async {
    try {
      bool isConnected = await br.checkConnectivity();
      if (isConnected) {
        await apiHelper.getAppointmentHistory(global.user.id).then((result) {
          if (result != null) {
            if (result.status == "1") {
              _appointmentHistoryList = result.recordList;
            } else {
              _appointmentHistoryList = [];
            }
          }
        });
      } else {
        showNetworkErrorSnackBar(_scaffoldKey);
      }
    } catch (e) {
      print("Exception - appointmentHistoryScreen.dart - getAppointmentHistory():" + e.toString());
    }
  }
  getUserRequest() async {
    try {
      bool isConnected = await br.checkConnectivity();
      if (isConnected) {
        await apiHelper.getUserRequest(global.user.id).then((result) {
          if (result != null) {
            if (result.status == "1") {
              _userRequest = result.recordList;
            } else {
              _userRequest = [];
            }
          }
        });
      } else {
        showNetworkErrorSnackBar(_scaffoldKey);
      }
    } catch (e) {
      print(
          "Exception - requestScreen.dart - getUserRequest():" + e.toString());
    }
  }

  init() async {
    try {
      setState(() {
        _isDataLoaded = false;
      });
      await getUserRequest();
      await getAppointmentHistory();
      _isDataLoaded = true;
      setState(() {});
    } catch (e) {
      print("Exception - requestScreen.dart - init():" + e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }
  _detailDialog(int _index) {
    try {
      showDialog(
          context: context,
          builder: (context) => UserRequestAcceptDialog(
            _appointmentHistoryList[_index].id,
            true,
            1,
            a: widget.analytics,
            o: widget.observer,
          ));
    } catch (e) {
      print('Exception: appointmentHistoryScreen: _detailDialog(): ${e.toString()}');
    }
  }

  _cancelRequest(int orderId) async {
    try {
      bool isConnected = await br.checkConnectivity();
      if (isConnected) {
        showOnlyLoaderDialog();
        await apiHelper.cancelRequest(orderId).then((result) {
          if (result.status == "1") {
            Navigator.of(context).pop();
            init();
          } else {
            Navigator.of(context).pop();
            showSnackBar(
                key: _scaffoldKey, snackBarMessage: '${result.message}');
          }
        });
      } else {
        showNetworkErrorSnackBar(_scaffoldKey);
      }
    } catch (e) {
      print(
          "Exception - requestScreen.dart - _cancelRequest():" + e.toString());
    }
  }

  Future _requestCancelConfirmationDialog(orderId) async {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              AppLocalizations.of(context).lbl_cancel_request,
            ),
            content: Text(AppLocalizations.of(context)
                .txt_confirmation_message_for_cancel_request),
            actions: [
              TextButton(
                child: Text(AppLocalizations.of(context).lbl_no),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text(AppLocalizations.of(context).lbl_yes),
                onPressed: () async {
                  Navigator.of(context).pop();
                  await _cancelRequest(orderId);
                },
              )
            ],
          );
        });
  }

  Future _requestCompleteConfirmationDialog(orderId) async {
    try {
      showDialog(
          context: context,
          builder: (context) => UserRequestAcceptDialog(
                orderId,
                false,
                2,
                a: widget.analytics,
                o: widget.observer,
              ));
    } catch (e) {
      print(
          "Exception - requestScreen.dart - _requestCompleteConfirmationDialog():" +
              e.toString());
    }
  }

  Widget _shimmer() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 85,
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Card(),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Card(
                                margin:
                                    EdgeInsets.only(bottom: 5, left: 5, top: 5),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Card(
                                  margin: EdgeInsets.only(
                                      bottom: 5, left: 5, top: 5)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  _userRequestDialog(int _index) {
    try {
      showDialog(
          context: context,
          builder: (context) => UserRequestAcceptDialog(
                _userRequest[_index].id,
                false,
                1,
                a: widget.analytics,
                o: widget.observer,
              ));
    } catch (e) {
      print(
          'Exception - requestScreen - _userRequestDialog(): ${e.toString()}');
    }
  }
}
