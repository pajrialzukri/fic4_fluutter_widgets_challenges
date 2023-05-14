import 'package:flutter/material.dart';

class FICDialogWiget extends StatefulWidget {
  const FICDialogWiget({Key? key}) : super(key: key);

  @override
  State<FICDialogWiget> createState() => _FICDialogWigetState();
}

class _FICDialogWigetState extends State<FICDialogWiget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog & Bottomsheet"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await showDialog<void>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Info'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: const [
                            Text('Your order was placed!'),
                          ],
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Ok"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Buka Dialog'),
            ),
            const SizedBox(
              width: 8,
            ),
            ElevatedButton(
              onPressed: () async {
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Bottomsheet'),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Ok"),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Buka Bottomsheet'),
            ),
            ElevatedButton(
              onPressed: () async {
                bool confirm = false;
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(30.0),
                      child: Wrap(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  "Confirm",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const Text(
                                  'Apakah anda yakin ingin menghapus data ini?',
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey[600],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("No"),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueGrey,
                                      ),
                                      onPressed: () {
                                        confirm = true;
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Yes"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
                if (confirm) {
                  print("Confirmed!");
                }
              },
              child: const Text('Buka Modal Konfirmasi'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.blue,
                    content: Text('Your request is successful'),
                  ),
                );
              },
              child: const Text('Buka snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
