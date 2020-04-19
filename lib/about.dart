import 'package:flutter/material.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pet Plant'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Text('PetPlant mobile application by Honai Tech Version 1. '
                '\nVisit honaitech.com for further information. '
                '\nCopyright 2020.',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,),
            ),
        );
  }
}
