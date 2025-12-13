import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Res_layout extends StatelessWidget {
  const Res_layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        title: const Text(
          "Responsiveness",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //.w-----width,
              //.h-----height,
              //.r-----min .w and .h,
              //.sp-----font or text
              Container(
                // width: 100.r == min(100.h,100.w),
                // height: 50.r == min(50.h,50.w),
                width: 100.r,
                height: 50.r,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.r)

                ),
              ),
              Row(
                children: [
                  Container(
                      width: 0.3.sw,
                      height: 0.1.sw,
                    color: Colors.green,
                    child: Text('Actual width: ${0.3.sw}'
                    'Actual height : ${100.h}',
                    style: TextStyle(
                      fontSize: 12.sp,

                    ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 200,
                      maxWidth: 300

                    ).hw,
                    width: 0.3.sw,
                    height: 0.1.sw,
                    color: Colors.orange,
                    child: Text('Actual width: ${0.3.sw}'
                      'Actual height : ${100.h}',
                      style: TextStyle(
                        fontSize: 12.sp,

                      ),
                    ),
                  )
                ],
              ),
              Container(height: 50, width: 100, color: Colors.blue),
              Container(height: 100, width: 200, color: Colors.lightBlueAccent),
              Text('Hey there', style: TextStyle(fontSize: 30)),
              Text('Myself Muhit', style: TextStyle(fontSize: 30.sp)),
              Container(height: 50.h, width: 100.w, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
