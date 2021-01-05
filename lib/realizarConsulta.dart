import 'package:flutter/material.dart';

class MainForm extends StatefulWidget {
  @override
  _MainFormState createState() => _MainFormState();
}

class _MainFormState extends State<MainForm> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: controller,
          labelColor:  Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            Tab(text: '1'),
            Tab(text: '2'),
            Tab(text: '3')
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Page(),
          DatosConsulta(),
          Confirmacion(),
        ],
      ),
    );
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(children: <Widget>[
        Text(
          'Datos Del Paciente',
          style: TextStyle(fontSize: 25.0),
          ),
        TextField(
          decoration: InputDecoration(labelText: "Nombres"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Apellidos"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Celular"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Email"),
        ),
        SizedBox(height: 50.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50.0,
                      width: 170.0,
                     child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), 
                        ),
                        color: Colors.blue[300],
                        onPressed: () {
                          MaterialPageRoute(
                              builder: (context) =>  DatosConsulta()
                          );
                           
                        },
                        child: Text(
                          'CONTINUAR', 
                          style: TextStyle(fontSize: 16, color: Colors.white)
                        ),  
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 170.0,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), 
                        ),
                        color: Colors.blue[300],
                        onPressed: () {
                          
                        },
                        child: Text(
                          'CANCELAR', 
                          style: TextStyle(fontSize: 16, color: Colors.white)
                        ),
                      ),
                      ),
                  ],
        )
        ],
      ),
    )
    );
  }
}

class DatosConsulta extends StatefulWidget {
  @override
  _DatosConsultaState createState() => _DatosConsultaState();
}

class _DatosConsultaState extends State<DatosConsulta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(children: <Widget>[
        Text(
          'Datos De la Consulta',
          style: TextStyle(fontSize: 25.0),
          ),
        TextField(
          decoration: InputDecoration(labelText: "Datos del Paciente"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Datos del centro de salud"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Fecha de la cita"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Especialidad"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Doctor"),
        ),
        SizedBox(height: 50.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50.0,
                      width: 170.0,
                     child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), 
                        ),
                        color: Colors.blue[300],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>  MainForm()
                          ));
                        },
                        child: Text(
                          'CONTINUAR', 
                          style: TextStyle(fontSize: 16, color: Colors.white)
                        ),  
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 170.0,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), 
                        ),
                        color: Colors.blue[300],
                        onPressed: () {
                          
                        },
                        child: Text(
                          'CANCELAR', 
                          style: TextStyle(fontSize: 16, color: Colors.white)
                        ),
                      ),
                      ),
                  ],
        )
        ],
      ),
    )
    );
  }
}


class Confirmacion extends StatefulWidget {
  @override
  _ConfirmacionState createState() => _ConfirmacionState();
}

class _ConfirmacionState extends State<Confirmacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(children: <Widget>[
        Text(
          'CONFIRMACIÓN DE DATOS',
          style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(height: 20.0),
        Text(
          'Paciente'
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Datos del centro de salud"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Fecha de la cita"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Especialidad"),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(labelText: "Doctor"),
        ),
        SizedBox(height: 50.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50.0,
                      width: 170.0,
                     child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), 
                        ),
                        color: Colors.blue[300],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>  MainForm()
                          ));
                        },
                        child: Text(
                          'CONTINUAR', 
                          style: TextStyle(fontSize: 16, color: Colors.white)
                        ),  
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 170.0,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), 
                        ),
                        color: Colors.blue[300],
                        onPressed: () {
                          
                        },
                        child: Text(
                          'CANCELAR', 
                          style: TextStyle(fontSize: 16, color: Colors.white)
                        ),
                      ),
                      ),
                  ],
        )
        ],
      ),
    )
    );
  }
}
