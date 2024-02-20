import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApplyJobCompanySection extends StatelessWidget {
  const ApplyJobCompanySection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 20, right: 20 , top: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text('Contact Us ' , style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold ,),)
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Expanded(
                    child: _detailsBox('Email', 'Twitter@mail.com'),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: _detailsBox('Website', 'https://twitter.com'),
                  )
                ],
              ),
            ),
            const Text('About Company' , style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold ,),),
            const Padding(
              padding: EdgeInsets.only(top: 10) , 
              child: Text("Understanding Recruitment is an award-winning technology, software and digital recruitment consultancy with headquarters in St. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including 'Best Staffing Firm to Work For 2018'​ at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector." , 
                textAlign: TextAlign.justify, 
              ),
            )
          ],
        ) ,
      ),
    );
  }

  ///details box 
  Widget _detailsBox (String title , String subTitle){
    return Container(
      height: 56,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(229, 231, 235, 1)),
        borderRadius: BorderRadius.circular(8),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title , style: const TextStyle(color: Color.fromRGBO(156, 163, 175, 1) , fontSize: 12),),
          Text(subTitle, style: const TextStyle(fontSize: 14),overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }
}