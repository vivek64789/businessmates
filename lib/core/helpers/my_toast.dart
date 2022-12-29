import 'package:flutter/material.dart' hide OutlinedButton, TextFormField;

// class MyToast extends StatefulWidget {
//   IconData? icon;
//   String title;
//   String? subtitle;
//   Color? iconColor;
//   Color? textColor;
//   Color? color;
//   Color? backgroundColour;

//   MyToast(
//       {Key? key,
//       this.icon = SawariIcon.check_circle,
//       required this.title,
//       this.textColor,
//       this.subtitle,
//       this.iconColor,
//       this.color,
//       this.backgroundColour})
//       : super(key: key);

//   @override
//   State<MyToast> createState() => _MyToastState();
// }

// class _MyToastState extends State<MyToast> {
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Container(
//         height: 68,
//         width: 340,
//         margin: const EdgeInsets.only(bottom: 100),
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         decoration: BoxDecoration(
//             boxShadow: [greenShadow],
//             color: widget.backgroundColour,
//             borderRadius: const BorderRadius.all(Radius.circular(6)),
//             border: Border.all(
//               color: widget.color ?? Theme.of(context).colorScheme.primary,
//             )),
//         child: Row(children: [
//           Expanded(
//             flex: 1,
//             child: Icon(
//               widget.icon,
//               color: widget.iconColor,
//             ),
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           Expanded(
//             flex: 7,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   widget.title,
//                   style: GoogleFonts.montserrat(
//                       textStyle: Theme.of(context).textTheme.button,
//                       fontSize: 16,
//                       color: widget.textColor,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 Text(
//                   widget.subtitle ?? "",
//                   style: GoogleFonts.montserrat(
//                       textStyle: Theme.of(context).textTheme.button,
//                       fontSize: 14,
//                       color: const Color(0xff4d4d4d),
//                       fontWeight: FontWeight.normal),
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               margin: const EdgeInsets.only(top: 10),
//               child: Align(
//                   alignment: Alignment.topCenter,
//                   child: Icon(
//                     Icons.close,
//                     color: Colors.grey.shade400,
//                   )),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }

myToast({required BuildContext context, required Widget widget}) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: widget),
    );
myModalAlert({required BuildContext context, required Widget widget}) =>
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return widget;
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
    );
