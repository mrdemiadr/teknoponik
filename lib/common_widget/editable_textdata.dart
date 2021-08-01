import 'package:flutter/material.dart';

class EditableTextData extends StatefulWidget {
  final String? editableTitle;
  late final String? editableText;
  // final Function(String editableText) onUpdateText;
  final VoidCallback? editButton;
  EditableTextData({this.editableTitle, this.editableText, this.editButton});

  @override
  _EditableTextDataState createState() => _EditableTextDataState();
}

class _EditableTextDataState extends State<EditableTextData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${widget.editableTitle}'),
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  '${widget.editableText}',
                ),
              ),
              IconButton(
                onPressed: () {
                  AlertDialog alert = AlertDialog(
                    title: Text('Change ${widget.editableTitle}'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Under Construction Feature',
                          style: TextStyle(color: Colors.red),
                        ),
                        TextField(
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        child: Text("Save"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text("Cancel"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                },
                icon: Icon(Icons.edit),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
