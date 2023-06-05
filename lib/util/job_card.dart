import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyLogoImage;
  final String jobTitle;
  final String payRate;

  const JobCard({super.key, 
    required this.companyLogoImage,
    required this.jobTitle,
    required this.payRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //company logo
                SizedBox(
                  height: 70,
                  child: Image.asset(companyLogoImage),
                ),
                //type of job
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Full Time',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            //job title
            Text(
              jobTitle,
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            //pay rate
            Text(
              '\$$payRate/h',
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
