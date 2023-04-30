import 'package:flutter/material.dart';
import "form.dart";
import 'auto_gen_msg.dart';

class PanelSwitcher extends StatefulWidget {
  @override
  _PanelSwitcherState createState() => _PanelSwitcherState();
}

class _PanelSwitcherState extends State<PanelSwitcher> {
  int _selectedIndex = 0;

  void _onButton1Pressed() {
    setState(() {
      _selectedIndex = 0;
    });
  }

  void _onButton2Pressed() {
    setState(() {
      _selectedIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Container(
                margin: EdgeInsets.all(10),
                child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      textStyle: TextStyle(fontSize: 15),

                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: const Text('Business'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      textStyle: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    child: const Text('Auto Response Message'),
                  ),
                ],
              ),
            ),

              //  display form here

              _selectedIndex == 0 ? MyForm() : WhatsappMessage(),



            ],
          ),
        ),
      ),
    );
  }
}




// class PanelOne extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Panel One'),
//     );
//   }
// }

class PanelTwo extends StatefulWidget {
  @override
  _PanelTwoState createState() => _PanelTwoState();
}

class _PanelTwoState extends State<PanelTwo> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Panel Two'),
              SizedBox(height: 20),
              Switch(
                value: _isOn,
                onChanged: (value) {
                  setState(() {
                    _isOn = value;
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}


// import 'package:f_app1/auto_gen_msg.dart';
// import 'package:flutter/material.dart';
// import 'qr_gen.dart';
// import 'form.dart';
//
// class Setings extends StatefulWidget {
//   const Setings({super.key});
//
//
//   @override
//   State<Setings> createState() => _SetingsState();
// }
//
//
// // create a settings pag=
// class _SetingsState extends State<Setings> {
//   bool formDisplay = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children:  [
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: Row(
//
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       padding: EdgeInsets.all(15),
//                       textStyle: TextStyle(fontSize: 15),
//
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         formDisplay = true;
//                       });
//                     },
//                     child: const Text('Business'),
//                   ),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       padding: EdgeInsets.all(15),
//                       textStyle: TextStyle(fontSize: 15),
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         formDisplay = false;
//                       });
//                     },
//                     child: const Text('Auto Response Message'),
//                   ),
//                 ],
//               ),
//             ),
//
//               //  display form here
//
//
//               formDisplay?  : WhatsappMessage(),
//
//
//
//             ],
//           ),
//         ),
//       ),
//
//
//
//       // Center(
//       //
//       //   //create a element display on top of page using align
//       //
//       //
//       //
//       //
//       //
//       //
//       //
//       //
//       //
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: [
//       //       Container(
//       //         // 2 buttons side by side
//       //         margin: EdgeInsets.all(10),
//       //         // 2 buttons side by side
//       //         child: Row(
//       //           // put the buttons in the top of page
//       //
//       //
//       //
//       //
//       //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //           children: <Widget>[
//       //             ElevatedButton(
//       //               style: ElevatedButton.styleFrom(
//       //                 padding: EdgeInsets.all(15),
//       //                 textStyle: TextStyle(fontSize: 15),
//       //
//       //               ),
//       //               onPressed: () {
//       //                 // print(nameController.text);
//       //                 // print(passwordController.text);
//       //               },
//       //               child: const Text('Business'),
//       //             ),
//       //             ElevatedButton(
//       //               style: ElevatedButton.styleFrom(
//       //                 padding: EdgeInsets.all(15),
//       //                 textStyle: TextStyle(fontSize: 15),
//       //               ),
//       //               onPressed: () {
//       //                 // print(nameController.text);
//       //                 // print(passwordController.text);
//       //               },
//       //               child: const Text('Auto Response Message'),
//       //             ),
//       //           ],
//       //         ),
//       //
//       //
//       //       ),
//       //
//       //       Row(
//       //         mainAxisAlignment: MainAxisAlignment.center,
//       //         children: [
//       //           // create a button for auto response message
//       //           ElevatedButton(
//       //             child: const Text('Auto Response Message'),
//       //             style: ElevatedButton.styleFrom(
//       //               padding: EdgeInsets.all(20),
//       //               elevation: 0,
//       //             ),
//       //             onPressed: () {
//       //               Navigator.pop(context);
//       //             },
//       //           ),
//       //
//       //         ],
//       //       ),
//       //     //  create a container with 1 button
//       //       Container(
//       //         margin: EdgeInsets.all(10),
//       //         child: ElevatedButton(
//       //           child: const Text('Generate QR Code'),
//       //           style: ElevatedButton.styleFrom(
//       //             padding: EdgeInsets.all(15),
//       //             textStyle: TextStyle(fontSize: 15),
//       //             elevation: 0,
//       //           ),
//       //           onPressed: () {
//       //             Navigator.push(
//       //               context,
//       //               MaterialPageRoute(builder: (context) => QR()),
//       //             );
//       //           },
//       //         ),
//       //       ),
//       //     ]
//       //
//       //
//       //   ),
//       //
//       // ),
//
//     );
//
//   }
// }