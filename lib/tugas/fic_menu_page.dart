import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/fic_logout_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_routes.dart';

// ignore: must_be_immutable
class MenuPage extends StatelessWidget {
  final String name;
  final TextEditingController nameController = TextEditingController();

  MenuPage({Key? key, required this.name}) : super(key: key) {
    nameController.text = name;
  }

  void logout(BuildContext context) {
    nameController.clear();
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            "Dashboard Menu",
          ),
          actions: [
            FICLogoutButton(onPressed: () => logout(context)),
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Hai, Selamat Datang $name',
                    style: const TextStyle(
                        fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Basic Widgets',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Wrap(spacing: 8.0, runSpacing: 4.0, children: <Widget>[
                      ...routesBasicWidget.map((route) {
                        return ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, route[0]);
                          },
                          child: Text(route[1]),
                        );
                      }).toList(),
                    ])
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Basic Layout',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Wrap(spacing: 8.0, runSpacing: 4.0, children: <Widget>[
                      ...routesBasicLayout.map((route) {
                        return ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, route[0]);
                          },
                          child: Text(route[1]),
                        );
                      }).toList(),
                    ])
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Basic Form',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Wrap(spacing: 8.0, runSpacing: 4.0, children: <Widget>[
                      ...routesBasicForm.map((route) {
                        if (route[0] == '/dialog') {
                          return ElevatedButton(
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
                                          Text(
                                              'Apakah anda yakin akan membuka halaman ini?'),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('Batal')),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.pushNamed(
                                              context, route[0]);
                                        },
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(route[1]),
                          );
                        } else {
                          return ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, route[0]);
                            },
                            child: Text(route[1]),
                          );
                        }
                      }).toList(),
                    ])
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Navigation',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Wrap(spacing: 8.0, runSpacing: 4.0, children: <Widget>[
                      ...routesNavigation.map((route) {
                        return ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, route[0]);
                          },
                          child: Text(route[1]),
                        );
                      }).toList(),
                    ])
                  ]),
                ),
              ],
            )
          ],
        ));
  }
}
