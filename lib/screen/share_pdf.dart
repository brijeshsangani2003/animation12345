import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SharePDFScreen extends StatelessWidget {
  const SharePDFScreen({super.key});

  ///single File
  // Future<void> pickFile() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles();
  //
  //   if (result != null) {
  //     File file = File(result.files.single.path ?? '');
  //     shareFile(file);
  //   }
  // }
  //
  // void shareFile(File file) {
  //   XFile xFile = XFile(file.path);
  //   Share.shareXFiles([xFile]);
  // }

  /// Multiple files(video,images,document)
  Future<void> pickFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      List<File> files = result.paths.map((path) => File(path!)).toList();
      shareFiles(files);
    }
  }

  void shareFiles(List<File> files) {
    List<XFile> xFiles = files.map((file) => XFile(file.path)).toList();
    Share.shareXFiles(xFiles);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share File'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => pickFile(),
              child: const Text('Select File'),
            ),
          ],
        ),
      ),
    );
  }
}
