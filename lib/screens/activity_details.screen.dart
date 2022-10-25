import 'package:flutter/material.dart';
import 'package:udea_students_group/widgets/MystatefulWidet.dart';

class ActivityDetailsScreen extends StatelessWidget {
  static const screenRoute = '/activity_details_screen';

  const ActivityDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalle de actividad',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: MyCustomForm(),
    );
  }
}

/*
 2. Detalle de actividad. Muestra:
- quiénes están inscritos
- anfitrión
- fecha del evento
- opción para inscribirse (si ya se está inscrito, dice que ya está inscrito)
 Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("inscribirse"),
              Checkbox(value: true, onChanged: (x) {}),
            ],
          )
 */
class MyCustomForm extends StatelessWidget {
  MyCustomForm({super.key});
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nombreAnfitrion = 'Roberto Ejemplo Gomez';
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Anfitrión: ',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: nombreAnfitrion,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Fecha evento: ',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: nombreAnfitrion,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: <Widget>[
                Text(
                  '¿ Inscribirse ? ',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MyStatefulWidget(),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Lista de participantes:',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
            //_listaAsistencia(context),
          ],
        ),
      ),
    );
  }
}

Widget _listaAsistencia(BuildContext context) {
  // backing data
  final asistentes = ['Pedro Perez', 'Pablo neruda'];
  return ListView.builder(
    itemCount: asistentes.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(asistentes[index]),
      );
    },
  );
}
