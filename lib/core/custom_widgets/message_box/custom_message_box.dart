import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMessageBox extends StatelessWidget {
  final EdgeInsets? margin; 
  final String image; 
  final String title;
  final String subTitle;
  const CustomMessageBox({super.key, 
    this.margin,
    required this.image,
    required this.title, 
    required this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /***** Image *****/
                Center(
                  child: SizedBox(
                    width: 172,
                    height: 142,
                    child: _imageHandle(image),
                  ),
                ),
                /***** -END- Image *****/

                /***** title *****/
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(title, style: const TextStyle( fontSize: 24, fontWeight: FontWeight.w500) , textAlign: TextAlign.center,),
                ),
                /***** -END- title *****/

                /***** Sub title  *****/
                Text( subTitle,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                /***** -END- Sub title  *****/
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _imageHandle (String image) {
      if (image.endsWith('svg'.toLowerCase())){
        return SvgPicture.asset(image , fit: BoxFit.cover,); 
      }else{
        return Image.asset(image , fit: BoxFit.cover,); 
      }
  }
}