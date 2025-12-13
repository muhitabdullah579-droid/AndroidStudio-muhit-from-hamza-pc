import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    showAlertDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Context issue'),
            content: Text('Do you want to submit?'),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(onPressed: (){}, child: Text('Submit')),
            ],
          );
        },
      );
    }

    showAlertDialogWithIcon(){
      showDialog(
          context: context,
          //barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: Text('Context issue'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Icon(Icons.warning,color: Colors.red,size: 20,),
                      SizedBox(height: 20,),
                      Text('Warning'
                          'Your installation is block due to the disable permission by aministration')
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Take immediate action',
                  style: TextStyle(
                    color: Colors.grey
                  ),)
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ok'),
                ),
               ElevatedButton(onPressed: () {}, child: Text('Take action ')),
              ],
            );
          }
      );
    }

    showSimpleDialog(){
      showDialog(
          context: context,
         // barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: Text('Context issue'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SimpleDialogOption(
                    child: TextField(),
                  ),
                  Row(
                    children: [
                      Icon(Icons.warning,color: Colors.red,size: 20,),
                      SizedBox(height: 20,),
                      Text('Warning')
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('data')
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ok'),
                ),
                ElevatedButton(onPressed: () {}, child: Text('Take action ')),
              ],
            );
          }
      );

    }

    showBottomSheetAlert(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          children: [
            Text('Choose subject',
              style: TextStyle(
                fontSize: 40
              ),
            ),
            ListTile(
              title: Text('Physics',
               style: TextStyle(
                fontSize: 20
               ),
              ),
            ),
            ListTile(
              title: Text('Chemistry',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ),
            ListTile(
              title: Text('Biology',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ),
            ListTile(
              title: Text('H.Math',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            )
          ],
          
        ),
      ));
    }

    showCustomDialog(){

      showDialog(context: context, builder: (context)=>Container(
        child: Column(
          children: [
            Image.network('https://www.bing.com/ck/a?!&&p=1ad7593b64428ad2f1c144b8c2d559fc41cf7c43bd733238944c697b423ca0dfJmltdHM9MTc2MjkwNTYwMA&ptn=3&ver=2&hsh=4&fclid=278cabf8-a406-69f5-2491-bd79a50768ed&u=a1L2ltYWdlcy9zZWFyY2g_cT13b25kZXJmdWwrbmF0dXJlK3BpY3R1cmUmaWQ9MEM0RkI2NzkxNTZGMTBFMkE4OTU4QkFDOEQzRUVEOUE5QTAwRTU1NSZGT1JNPUlBQ0ZJUg'),
            Text('product view',
              style: TextStyle(
                  fontSize: 15
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Close'))
          ],

        ),
      ));
    }

    showLoadingDialog(){
      showDialog(context: context, builder: (context)=>Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 10,),
                Text('Loading')
              ],
            ),
          )




      ));
    }

    showSnackbar(){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text('This is snackbar')
          )
      );
    }

    showAlertDialogWithIcon2(){
      showDialog(
          context: context,
          //barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              alignment: Alignment.centerRight,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ),
              title: Text('Installation Block'),
              content: Container(
                child:Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.star),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.star),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.star),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.star),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(Icons.star),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.star),
                    )
                  ],
                ),

              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ok'),
                ),
                ElevatedButton(onPressed: () {}, child: Text('Take action ')),
              ],
            );
          }
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Customers EntryPoint',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.indigoAccent,
          ),
        ),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlertDialog();}, child: Text('Dialog Box')),
            ElevatedButton(onPressed: (){
              showAlertDialogWithIcon();
            }, child: Text('Dialog Box With Icon')),
            ElevatedButton(onPressed: (){
              showSimpleDialog();
            }, child: Text('Dialog Box With input text')),
            ElevatedButton(onPressed: (){
              showBottomSheetAlert();
            }, child: Text('Dialog Box With Bottom sub sheet')),
            ElevatedButton(onPressed: (){
              showCustomDialog();
            }, child: Text('Dialog Box With view option')),
            ElevatedButton(onPressed: (){
              showSnackbar();
            }, child: Text('Dialog Box With snackbar')),
            ElevatedButton(onPressed: (){
              showLoadingDialog();
            }, child: Text('Dialog Box With loading')),
            ElevatedButton(onPressed: (){
              showAlertDialogWithIcon2();
            }, child: Text('show alert dialog'))

          ],
        ),
      ),
    );
  }
}
