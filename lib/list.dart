import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Model/postModel.dart';
import 'package:my_app/Service/Service.dart';
import 'package:my_app/crud/edit.dart';

class GetList extends StatefulWidget {
  const GetList({super.key});

  @override
  State<GetList> createState() => _GetListState();
}

class _GetListState extends State<GetList> {
  late List<PostModel1> postModel= [];
  void getData()async{
    postModel = (await ApiService().getPosts())!;
    Future.delayed(const Duration(seconds: 1)).then((value)=>setState((){}));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  
  Widget _getPostList(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API Example for Post'),
        actions: [
          IconButton(
              onPressed: () {
                // goBack(context);
                Navigator.pushNamedAndRemoveUntil(context,"/p5", (route) => false);
              },
              icon: Icon(Icons.arrow_back_ios_sharp))
        ],
      ),
      body: postModel == null || postModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                itemCount: postModel!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: FlutterLogo(size: 72.0),
                    title: Text(postModel![index].title.toString()),
                    subtitle: Text(postModel![index].body.toString()),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) =>
                                 Edit(postModel1: postModel![index]),
                          ),
                          (route) => false,
                        );
                      },
                      icon: Icon(Icons.more_vert),
                    ),
                    isThreeLine: true,
                  );
                },
              ),
            ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return _getPostList(context);
  }
}