import 'package:flutter/material.dart';
import 'package:interview/models/constant.dart';
import 'package:interview/models/data.dart';
import 'package:intl/intl.dart';

class PhotosList extends StatelessWidget {
  final List<Photo> photos;

  PhotosList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: kPrimaryColor.withOpacity(0.2),
                      offset: Offset(3, 2),
                      blurRadius: 30)
                ]),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: photos[index].title.toString() +
                                    "\n" +
                                    "\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: photos[index].title.toString() + "\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300)),
                            TextSpan(
                                text: photos[index].title.toString(),
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400)),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Card(
          //   color: Colors.white,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Row(
          //       children: <Widget>[
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //               width: 50.0,
          //               height: 50.0,
          //               decoration: new BoxDecoration(
          //                 shape: BoxShape.circle,
          //                 color: photos[index].completed == true
          //                     ? Colors.green
          //                     : Colors.red,
          //               )),
          //         ),
          //         Expanded(
          //           child: Text(
          //             photos[index].title.toString(),
          //             style: TextStyle(color: Colors.black, fontSize: 18),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        );
      },
    );
  }
}
