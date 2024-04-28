import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Sheet',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              builder: (context) {
                return SizedBox(
                  height: 300,
                  // color: Colors.white,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () => print("Photo clicked"),
                        leading: Icon(Icons.photo),
                        title: Text("Photo"),
                      ),
                      ListTile(
                        onTap: () => print("Music clicked"),
                        leading: Icon(Icons.music_note_rounded),
                        title: Text("Music"),
                      ),
                      ListTile(
                        onTap: () => print("Video clicked"),
                        leading: Icon(Icons.video_collection),
                        title: Text("Video"),
                      ),
                      ListTile(
                        onTap: () => print("Share clicked"),
                        leading: Icon(Icons.share),
                        title: Text("Share"),
                      ),
                      ListTile(
                        onTap: () => Navigator.pop(context),
                        leading: Icon(Icons.cancel),
                        title: Text("Cancel"),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: const Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}
