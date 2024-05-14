import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController controller = TextEditingController();
  List<String> contact = [];

  addToList() {
    setState(() {
      contact.add(controller.text);
      controller.clear(); // Clear the text field after adding
    });
  }

  deleteContact(int index) {
    setState(() {
      contact.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Nom du contact",
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueGrey, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0))

              ),
              controller: controller,
            ),
            MaterialButton(
              onPressed: addToList, // Call addToList when button is pressed
              child: Text("Ajouter"),
              color: Colors.blueAccent,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contact.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(contact[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          deleteContact(index);
                        },
                      ),
                      leading: CircleAvatar(
                        child: Text(contact[index][0]
                            .toUpperCase()), // Corrected to show the first letter
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
