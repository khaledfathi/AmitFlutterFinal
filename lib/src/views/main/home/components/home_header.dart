import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final String userName ; 
  final void Function()? onTapNotification;
  const HomeHeader({super.key, 
    required this.userName,
    this.onTapNotification
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //left
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text('Hi , $userName \u{1F44B}' , style: TextStyle(fontSize: 24)),
                ),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text('Create a better future for yourself here' , style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
            //right
            Container(
              decoration: BoxDecoration(
                border: Border.all( color: const Color.fromRGBO(209, 213, 219, 1)),
                borderRadius: BorderRadius.circular(100),
              ),
              child: CircleAvatar(
                child: IconButton(
                  onPressed: onTapNotification,
                  icon: const Icon(Icons.notifications_none_outlined),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}