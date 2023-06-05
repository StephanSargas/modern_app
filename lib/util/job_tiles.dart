// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class JobTile extends StatelessWidget {
  final String companyLogoImage;
  final String jobTitle;
  final String payRate;
  final String companyName;

  const JobTile({super.key, 
    required this.companyLogoImage,
    required this.jobTitle,
    required this.payRate,
    required this.companyName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // logo
                Container(
                  height: 50,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(companyLogoImage),
                ),
                SizedBox(width: 10),
                //job title
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      companyName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
            //pay rate
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                '\$$payRate/h',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
