import 'package:flutter/material.dart';
import 'realizarConsulta.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List names = ["Cardiología",  "Neurología", "Odontología", "Cardiología",  "Neurología", "Odontología"];
  List clinicas = ["Clínica Montefiori", "Clín. Maison de Sante", "Clínica San Felipe", "Clínica Montefiori", "Clín. Maison de Sante", "Clínica San Felipe"];
  List doctor = ["Dr. Valerio Valle", "Dr. Valerio Valle", "Dr. Valerio Valle", "Dr. Valerio Valle", "Dr. Valerio Valle", "Dr. Valerio Valle"];  
  List hora = ["15/06/2020 - 12:00", "15/06/2020 - 13:15", "15/06/2020 - 18:45", "15/06/2020 - 12:00", "15/06/2020 - 13:15", "15/06/2020 - 18:45"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SELECCIÓN DE CITA"),
        ),
        body: SafeArea(
          child: Container(
            
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 50.0,
                      width: 170.0,
                     child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0), 
                          side: BorderSide(color: Colors.green[200])
                        ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>  MainForm()
                          ));
                        },
                        child: Text(
                          'PEDIR CITA', 
                          style: TextStyle(fontSize: 15)
                        ),  
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 170.0,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0), 
                          side: BorderSide(color: Colors.green[200])
                        ),
                        color: Colors.white,
                        onPressed: () {
                          
                        },
                        child: Text(
                          'MIS CITAS', 
                          style: TextStyle(fontSize: 15)
                        ),
                      ),
                      ),
                  ],
                ),
              ),  
            Expanded(
                child:ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 60.0,
                              height: 60.0,
                              color: Colors.white,
                              child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/img/dr.png'),
                                ),
                            ),
                            SizedBox(width: 5.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(names[index], style: TextStyle(color: Colors.black, fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                                Text(clinicas[index], style: TextStyle(color: Colors.grey)),
                                Text(doctor[index], style: TextStyle(color: Colors.grey)),
                                Text(hora[index], style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.blue[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                                ),
                                child: Text("SELECCIONAR", style: TextStyle(color: Colors.white),),
                              ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
           )
            ],
            
          ),

          ),
        ) 
    );
  }


}