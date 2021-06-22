import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:turismo_flutter/pages/viewturista_table6_1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turismo_flutter/pages/prueba.dart';

class turismTable6 extends StatelessWidget {
  static const String ROUTE = "/entorno_conservacion";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Center(
          child: TableTurism_6(),
        )),
      ),
    );
  }
}

class TableTurism_6 extends StatefulWidget {
  static const String ROUTE = "/entorno_conservacion";
  /*
  OJO, DESDE LA PRIMERA PANTALLA SE DEBEN IR INGRESANDO LOS DATOS
  Preparar valores de las pantallas anteiores y poner en constructor
  FormSaveWidget({Key? key,
    required this.si_estado_conservacion,
    required this.observaciones_atractivo_U
  }) : super(key: key);
   */
  @override
  State<StatefulWidget> createState() => new CheckboxWidgetState1();
}

class CheckboxWidgetState1 extends State<TableTurism_6> {
  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
      });
    }
    currentDate.toString();
  }

  //VARIABLES
  final _formkey = GlobalKey<FormState>();
  TextEditingController obs = TextEditingController();
  TextEditingController obsOtro_M_fac = TextEditingController();
  TextEditingController obs_M_fac = TextEditingController();
  TextEditingController obsEntorno = TextEditingController();
  TextEditingController obsOtro_M_ent = TextEditingController();
  TextEditingController obs_M_ent = TextEditingController();
  TextEditingController obsDeclarante = TextEditingController();
  TextEditingController obsDenominacion = TextEditingController();
  TextEditingController obsAlcance = TextEditingController();
  TextEditingController obsDeclaratoria = TextEditingController();
  late DateTime _dateTime;

  bool si_estado_conservacion = false;
  bool no_estado_conservacion = false;
  bool s_i_estado_conservacion = false;
  bool atractivo_U = false;
  bool conservado_atractivo_U = false;
  bool alterado_atractivo_U = false;
  bool deterioro_atractivo_U = false;
  bool deteriorado_atractivo_U = false;
  //String observaciones_atractivo_U = "";
  bool erosion_M_fac = false;
  bool humedad_M_fac = false;
  bool desastres_naturales_M_fac = false;
  bool flora_fauna_M_fac = false;
  bool clima_M_fac = false;
  bool actividades_agricolas_M_fac = false;
  bool actividades_forestales_M_fac = false;
  bool actividades_minera_M_fac = false;
  bool actividades_industriales_M_fac = false;
  bool neglicencia_M_fac = false;
  bool huaqueria_M_fac = false;
  bool conflictos_tenencia_M_fac = false;
  bool condiciones_uso_M_fac = false;
  bool falta_mantenimiento_M_fac = false;
  bool contaminacion_ambiente_M_fac = false;
  bool generacion_residuos_M_fac = false;
  bool expansion_urbana_M_fac = false;
  bool conflicto_poliico_social_M_fac = false;
  bool desarrollo_industrial_M_fac = false;
  bool vandalismo_M_fac = false;
  bool otro_M_fac = false;
  //String especifique_M_fac = obsOtro_M_fac.toString();
  //String observaciones_M_fac = obs_M_fac.toString();
  //
  bool entorno_U = false;
  bool conservado_entorno_U = false;
  bool alterado_entorno_U = false;
  bool deterioro_entorno_U = false;
  bool deteriorado_entorno_U = false;
  //String observaciones_entorno_U = obsEntorno.toString();
  bool erosion_M_ent = false;
  bool humedad_M_ent = false;
  bool desastres_naturales_M_ent = false;
  bool flora_fauna_M_ent = false;
  bool clima_M_ent = false;
  bool actividades_agricolas_M_ent = false;
  bool actividades_forestales_M_ent = false;
  bool actividades_minera_M_ent = false;
  bool actividades_industriales_M_ent = false;
  bool neglicencia_M_ent = false;
  bool huaqueria_M_ent = false;
  bool conflictos_tenencia_M_ent = false;
  bool condiciones_uso_M_ent = false;
  bool falta_mantenimiento_M_ent = false;
  bool contaminacion_ambiente_M_ent = false;
  bool generacion_residuos_M_ent = false;
  bool expansion_urbana_M_ent = false;
  bool conflicto_poliico_social_M_ent = false;
  bool desarrollo_industrial_M_ent = false;
  bool vandalismo_M_ent = false;
  bool otro_M_ent = false;
  //String especifique_M_ent = obsOtro_M_ent.toString();
  //String observaciones_M_ent = obs_M_ent.toString();
  //
  bool declaratoria_espacio = false;
  //String declarante_espacio = obsDeclarante.toString();
  //String denominacion_espacio = obsDenominacion.toString();
  final fecha_declaracion_espacio = new DateTime.now();
  //String alcance_espacio = obsAlcance.toString();
  //String observaciones_espacio = obsDeclaratoria.toString();

  void _showAlertDialogNo(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
              'Debe navegar hasta la siguiente pantalla con el botón de la parte inferior',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        )
    );
  }
  void _showAlertDialogSi(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar esta pantalla con la información correspondiente',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        )
    );
  }
  void _showAlertDialogObservaciones(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar este apartado con sus especificaciones',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        )
    );
  }
  void _showAlertDialogDeclaratoria(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar este apartado con la información correspondiente',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        )
    );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 10.0,
          //bottom navigation bar on scaffold
          color: HexColor("#364C59"),
          shape: CircularNotchedRectangle(), //shape of notch
          notchMargin:
              10, //notche margin between floating button and bottom appbar
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 35.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("Agregamos luego");
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 35.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  _sendData(context);
                },
              ),
            ],
          ),
        ),
        /*
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            //Navigator.pushNamed(context, turismTable6_1.ROUTE);
            _sendData(context);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

         */
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title:
              Text('ESTADO DE CONSERVACIÓN E INTEGRACIÓN A ATRACTIVO/ENTORNO',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: HexColor("#A65005"),
                  )),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[

            new Text("ATRACTIVO (U)",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: HexColor("#364C59"),
                )),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      child: CheckboxListTile(
                        tristate: false,
                        title: Text(
                          "SI",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.si_estado_conservacion,
                        onChanged: (value) {
                          setState(() {
                            this.si_estado_conservacion = value!;
                            if (this.si_estado_conservacion == true) {
                              _showAlertDialogSi(context);
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: CheckboxListTile(
                        tristate: false,
                        title: Text(
                          "NO",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.no_estado_conservacion,
                        onChanged: (value) {
                          setState(() {
                            this.no_estado_conservacion = value!;
                            if (this.no_estado_conservacion == true) {
                              _showAlertDialogNo(context);

                            }
                          });
                        },
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: CheckboxListTile(
                        tristate: false,
                        title: Text(
                          "S/I",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.s_i_estado_conservacion,
                        onChanged: (value) {
                          setState(() {
                            this.s_i_estado_conservacion = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ]),
            new Container(
              child: CheckboxListTile(
                secondary: const Icon(Icons.fact_check_sharp),
                title: Text(
                  "ATRACTIVO (U)",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: HexColor("#364C59"),
                  ),
                ),
                subtitle: Text(
                  "Marque en caso de ser necesario",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: HexColor("#99AD8F"),
                  ),
                ),
                value: this.atractivo_U,
                onChanged: (value) {
                  setState(() {
                    this.atractivo_U = value!;
                  });
                },
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Conservado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conservado_atractivo_U,
                    onChanged: (value) {
                      setState(() {
                        this.conservado_atractivo_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Alterado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.alterado_atractivo_U,
                    onChanged: (value) {
                      setState(() {
                        this.alterado_atractivo_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "En proceso de deterioro",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.deterioro_atractivo_U,
                    onChanged: (value) {
                      setState(() {
                        this.deterioro_atractivo_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Deteriorado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.deteriorado_atractivo_U,
                    onChanged: (value) {
                      setState(() {
                        this.deteriorado_atractivo_U = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            new Form(
              key: _formkey,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  enabled: this.si_estado_conservacion,
                  controller: obs,
                  maxLines: 3,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "correcto";
                    } else {
                      return "ingrese valores!";
                    }
                  },
                  style: TextStyle(
                    fontSize: 20.0,
                    color: HexColor("#0D0D0D"),
                  ),
                  decoration: InputDecoration(
                    icon: Icon(Icons.input_outlined),
                    contentPadding: EdgeInsets.all(20.0),
                    hintText:
                        "Ingrese sus observaciones en caso de ser necesarias",
                    labelText: ("Observaciones"),
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(10, 10))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
            ),
            new Column(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "FACTORES DE ALTERACIÓN Y DETERIORO (U)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "NATURALES (M)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Erosión",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.erosion_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.erosion_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Humedad",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.humedad_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.humedad_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Desastres Naturales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.desastres_naturales_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.desastres_naturales_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Flora/Fauna",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.flora_fauna_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.flora_fauna_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Clima",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.clima_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.clima_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "ANTRÓPICOS/ANTROPOGÉNICOS (M)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades agrícolas y ganaderas",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_agricolas_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_agricolas_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades forestales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_forestales_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_forestales_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades extractivas/minería",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_minera_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_minera_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades industriales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_industriales_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_industriales_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Negligencia/abandono",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.neglicencia_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.neglicencia_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Huaquería",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.huaqueria_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.huaqueria_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Conflicto de tenencia",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conflictos_tenencia_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.conflictos_tenencia_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Condiciones de uso y exposición",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.condiciones_uso_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.condiciones_uso_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Falta de mantenimiento",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.falta_mantenimiento_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.falta_mantenimiento_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Contaminación del ambiente",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.contaminacion_ambiente_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.contaminacion_ambiente_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Generación de residuos",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.generacion_residuos_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.generacion_residuos_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Expansión urbana",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.expansion_urbana_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.expansion_urbana_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Conflicto político/social",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conflicto_poliico_social_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.conflicto_poliico_social_M_fac = value!;
                      });
                      new Container(
                        child: CheckboxListTile(
                          secondary: Icon(Icons.fact_check),
                          title: Text(
                            "Falta de mantenimiento",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: HexColor("#364C59"),
                            ),
                          ),
                          subtitle: Text(
                            "Marque en caso de ser necesario",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: HexColor("#99AD8F"),
                            ),
                          ),
                          value: this.neglicencia_M_fac,
                          onChanged: (value) {
                            setState(() {
                              this.neglicencia_M_fac = value!;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Desarrollo industrial/comercial",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.desarrollo_industrial_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.desarrollo_industrial_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Vandalismo",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.vandalismo_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.vandalismo_M_fac = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      title: Text(
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.otro_M_fac,
                      onChanged: (value) {
                        setState(() {
                          this.otro_M_fac = value!;
                          if (this.otro_M_fac == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.otro_M_fac,
                          controller: obsOtro_M_fac,
                          maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "correcto";
                            } else {
                              return "ingrese valores!";
                            }
                          },
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese sus especificaciones",
                            labelText: ("Especificaciones"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 10))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            new Form(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  enabled: this.si_estado_conservacion,
                  controller: obs_M_fac,
                  maxLines: 3,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "correcto";
                    } else {
                      return "ingrese valores!";
                    }
                  },
                  style: TextStyle(
                    fontSize: 20.0,
                    color: HexColor("#0D0D0D"),
                  ),
                  decoration: InputDecoration(
                    icon: Icon(Icons.input_outlined),
                    contentPadding: EdgeInsets.all(20.0),
                    hintText:
                        "Ingrese sus observaciones en caso de ser necesarias",
                    labelText: ("Observaciones"),
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(10, 10))),
                  ),
                )
              ],
            )),
            new Container(
              padding: EdgeInsets.all(20.0),
              child: Text("ENTORNO (U)",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: HexColor("#364C59"),
                  )),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "ENTORNO (U)",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.entorno_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Conservado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conservado_entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.conservado_entorno_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Alterado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.alterado_entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.alterado_entorno_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "En proceso de deterioro",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.deterioro_entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.deterioro_entorno_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Deteriorado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.deteriorado_entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.deteriorado_entorno_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "FACTORES DE ALTERACIÓN Y DETERIORO (U)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "NATURALES (M)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Erosión",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.erosion_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.erosion_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Humedad",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.humedad_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.humedad_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Desastres Naturales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.desastres_naturales_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.desastres_naturales_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Flora/Fauna",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.flora_fauna_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.flora_fauna_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Clima",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.clima_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.clima_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "ANTRÓPICOS/ANTROPOGÉNICOS (M)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades agrícolas y ganaderas",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_agricolas_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_agricolas_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades forestales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_forestales_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_forestales_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades extractivas/minería",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_minera_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_minera_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades industriales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_industriales_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_industriales_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Negligencia/abandono",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.neglicencia_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.neglicencia_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Huaquería",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.huaqueria_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.huaqueria_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Conflicto de tenencia",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conflictos_tenencia_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.conflictos_tenencia_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Condiciones de uso y exposición",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.condiciones_uso_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.condiciones_uso_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Falta de mantenimiento",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.falta_mantenimiento_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.falta_mantenimiento_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Contaminación del ambiente",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.contaminacion_ambiente_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.contaminacion_ambiente_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Generación de residuos",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.generacion_residuos_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.generacion_residuos_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Expansión urbana",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.expansion_urbana_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.expansion_urbana_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Conflicto político/social",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conflicto_poliico_social_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.conflicto_poliico_social_M_ent = value!;
                      });
                      new Container(
                        child: CheckboxListTile(
                          secondary: Icon(Icons.fact_check),
                          title: Text(
                            "Falta de mantenimiento",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: HexColor("#364C59"),
                            ),
                          ),
                          subtitle: Text(
                            "Marque en caso de ser necesario",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: HexColor("#99AD8F"),
                            ),
                          ),
                          value: this.neglicencia_M_ent,
                          onChanged: (value) {
                            setState(() {
                              this.neglicencia_M_ent = value!;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Desarrollo industrial/comercial",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.desarrollo_industrial_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.desarrollo_industrial_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Vandalismo",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.vandalismo_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.vandalismo_M_ent = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      title: Text(
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.otro_M_ent,
                      onChanged: (value) {
                        setState(() {
                          this.otro_M_ent = value!;
                          if (this.otro_M_ent == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.otro_M_ent,
                          controller: obsOtro_M_ent,
                          maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "correcto";
                            } else {
                              return "ingrese valores!";
                            }
                          },
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese sus especificaciones",
                            labelText: ("Especificaciones"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 10))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            new Form(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: obs_M_ent,
                  maxLines: 3,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "correcto";
                    } else {
                      return "ingrese valores!";
                    }
                  },
                  style: TextStyle(
                    fontSize: 20.0,
                    color: HexColor("#0D0D0D"),
                  ),
                  decoration: InputDecoration(
                    icon: Icon(Icons.input_outlined),
                    contentPadding: EdgeInsets.all(20.0),
                    hintText:
                        "Ingrese sus observaciones en caso de ser necesarias",
                    labelText: ("Observaciones"),
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(10, 10))),
                  ),
                )
              ],
            )),
            new Column(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      "DECLARATORIA DEL ESPACIO TURÍSTICO ASOCIADO AL ATRACTIVO",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: HexColor("#364C59"),
                      )),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "DECLARATORIA",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.declaratoria_espacio,
                    onChanged: (value) {
                      setState(() {
                        this.declaratoria_espacio = value!;
                        if (this.declaratoria_espacio == true) {
                          _showAlertDialogDeclaratoria(context);
                        }
                      });
                    },
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        enabled: this.declaratoria_espacio,
                        controller: obsDeclarante,
                        maxLines: 3,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "correcto";
                          } else {
                            return "ingrese valores!";
                          }
                        },
                        style: TextStyle(
                          fontSize: 20.0,
                          color: HexColor("#0D0D0D"),
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          hintText: "Ingrese su información",
                          labelText: ("Declarante"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      TextFormField(
                        enabled: this.declaratoria_espacio,
                        controller: obsDenominacion,
                        maxLines: 3,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "correcto";
                          } else {
                            return "ingrese valores!";
                          }
                        },
                        style: TextStyle(
                          fontSize: 20.0,
                          color: HexColor("#0D0D0D"),
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          hintText: "Ingrese su información",
                          labelText: ("Denominación"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      TextFormField(
                        enabled: this.declaratoria_espacio,
                        controller: obsAlcance,
                        maxLines: 3,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "correcto";
                          } else {
                            return "ingrese valores!";
                          }
                        },
                        style: TextStyle(
                          fontSize: 20.0,
                          color: HexColor("#0D0D0D"),
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          hintText: "Ingrese su información",
                          labelText: ("Alcance"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      TextFormField(
                        enabled: this.declaratoria_espacio,
                        controller: obsDeclaratoria,
                        maxLines: 3,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "correcto";
                          } else {
                            return "ingrese valores!";
                          }
                        },
                        style: TextStyle(
                          fontSize: 20.0,
                          color: HexColor("#0D0D0D"),
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          hintText:
                              "Ingrese sus observaciones en caso de ser necesarias",
                          labelText: ("Observaciones"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      TextFormField(
                        maxLines: 3,
                        enabled: false,
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          hintText: currentDate.toString(),
                          labelText: ("[AAAA-MM-DD]\n[" +
                              currentDate.toString() +
                              "]"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      //Text(currentDate.toString()),
                      RaisedButton(
                        child: Text("Obtener Fecha"),
                        onPressed: () => _selectDate(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _sendData(BuildContext context) {
    String observaciones_atractivo_U = obs.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FormSaveWidget(
            si_estado_conservacion: si_estado_conservacion,
            observaciones_atractivo_U: observaciones_atractivo_U,
          ),
        ));
  }
}
