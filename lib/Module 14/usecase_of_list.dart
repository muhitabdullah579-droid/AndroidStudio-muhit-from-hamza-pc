import 'package:flutter/material.dart';

class Haque_product_list extends StatefulWidget {
  const Haque_product_list({super.key});

  @override
  State<Haque_product_list> createState() => _Haque_product_listState();
}

class _Haque_product_listState extends State<Haque_product_list> {
  TextEditingController taskController = TextEditingController();
  List<String> tasks = [];
  addTask(){
    final task = taskController.text;
    if(task.isNotEmpty){
      setState(() {
        tasks.add(taskController.text);
        taskController.clear();
      });
    }

  }
  deleteTask(int index){
    setState(() {
      tasks.removeAt(index);
      Navigator.pop(context);
    });
  }

  editTask(int index){
    final controller =  TextEditingController(text: tasks[index]);
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Edit Task'),
      content: TextField(
        controller: controller,
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Cancel')),
        ElevatedButton(onPressed: (){
          final newValue = controller.text;
          if(newValue.isNotEmpty){
            setState(() {
              tasks[index] = controller.text;
              Navigator.pop(context);
            });
          }
        }, child: Text('Update'))
      ],
    ));
  }
  confirmDelete(int index){
    final controller =  TextEditingController(text: tasks[index]);
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Delete Task...?'),
      content: Text('Do You Delete The Item?'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Cancel')),
        ElevatedButton(onPressed: ()=>deleteTask(index),child: Text('Delete'))
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        title: const Text(
          "Haque Industries lmt",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                    labelText: 'Enter Product Name'
                  ),
                )),
                SizedBox(width: 5,),
                ElevatedButton(onPressed: addTask, child: Text('Add your required product'))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
                itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(tasks[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: ()=>editTask(index),
                          icon: Icon(
                            Icons.edit,
                            color: Colors.orangeAccent,
                          )
                      ),
                      IconButton(
                          onPressed: ()=>confirmDelete(index),
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          )
                      ),

                
                    ],
                  ),
                ),
              );
            }),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Order All The Products'))
        ],
      ),
    );
  }
}
