



import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Booking is here',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: DatePage(),
    );
  }
}

class DatePage extends StatefulWidget {
  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  DateTime _selectedDate;
  
  @override
  void initState() {
    _resetSelectedDate();
    super.initState();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 5));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16,left: 15),
              child: Text(
                'When would you like your service?',
                style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
            CalendarTimeline(
              showYears:false,
              initialDate: _selectedDate,
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(Duration(days: 365)),
              onDateSelected: (date) {
                setState(() {

                  _selectedDate = date;
                });
              },
              leftMargin: 10,
              monthColor: Colors.grey,
              dayColor: Colors.teal[200],
              dayNameColor: Colors.white,
              activeDayColor: Colors.white,
              activeBackgroundDayColor: Colors.redAccent[100],
              dotsColor: Color(0xFF333A47),
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en',
            ),

            SizedBox(height: 10),
            // Padding(
            //   padding: const EdgeInsets.only(left: 16),
            //   child: TextButton(
            //     style: ButtonStyle(
            //         backgroundColor:
            //             MaterialStateProperty.all(Colors.teal[200])),
            //     child:
            //         Text('RESET', style: TextStyle(color: Color(0xFF333A47))),
            //     onPressed: () => setState(() => _resetSelectedDate()),
            //   ),
            // ),
            // SizedBox(height: 20),
            // Center(
            //     child: Text('Selected date is $_selectedDate',
            //         style: TextStyle(color: Colors.white),),)
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 8.0),
              child: Text('At what time should the professional arrive?',style:  TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [FaIcon(FontAwesomeIcons.coffee,size: 15,),SizedBox(width: 10,),Text('Morning',style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),],),
            ),
            Container(
              child: GridView.count(
                padding: EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 10),
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 5 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 8,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [FaIcon(FontAwesomeIcons.sun,size: 15,),SizedBox(width: 10,),Text('Afternoon',style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),],),
            ),
            Container(
              child: GridView.count(
                padding: EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 10),
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 5 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 8,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [FaIcon(FontAwesomeIcons.cloudMoon,size: 15,),SizedBox(width: 10,),Text('Evening',style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold
              ),),],),
            ),
            Container(
              child: GridView.count(
                padding: EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 10),
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 5 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 8,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text('12 am'),
                        )),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: FlatButton(onPressed: (){}, child: Text('Proceed to Pay'),color: Colors.blue,),
            )
          ],
        ),
      ),
    );
  }
}
