import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:turismo_flutter/pages/viewturista_table12.dart';

class TurismTable11 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormWidgetState11();
}

class FormWidgetState11 extends State<TurismTable11> {
  static TextEditingController obs_sistema_registro_anio = TextEditingController();
  static TextEditingController obs_espec_temporalidad_alta = TextEditingController();
  static TextEditingController obs_espec_temporalidad_baja = TextEditingController();
  static TextEditingController obs_espec_temporalidad_alta_visitantes = TextEditingController();
  static TextEditingController obs_espec_temporalidad_baja_visitantes = TextEditingController();
  static TextEditingController obs_turista_nacional_ciudad = TextEditingController();
  static TextEditingController obs_turista_nacional_mensual = TextEditingController();
  static TextEditingController obs_turista_nacional_anual = TextEditingController();
  static TextEditingController obs_turista_extranjero_ciudad = TextEditingController();
  static TextEditingController obs_turista_extranjero_mensual = TextEditingController();
  static TextEditingController obs_turista_extranjero_anual = TextEditingController();
  static TextEditingController obs_frecuencia_visita = TextEditingController();
  static TextEditingController obs_nombre_informante = TextEditingController();
  static TextEditingController obs_contactos = TextEditingController();
  static TextEditingController obs_demanda_dias_lun_vie = TextEditingController();
  static TextEditingController obs_demanda_dias_fines = TextEditingController();
  static TextEditingController obs_demanda_dias_feriados = TextEditingController();
  static TextEditingController obs_frecuencia_visita_clave = TextEditingController();

  static TextEditingController obs_anexos_fuente = TextEditingController();
  static TextEditingController obs_ubicacion_fuente = TextEditingController();

  //VARIABLES
  bool registro_visitantes_si = false;
  bool registro_visitantes_no = false;
  bool registro_visitantes_s_i = false;
  bool frecuencia_visita_si = false;
  bool sistema_registro_si = false;
  bool sistema_registro_no = false;
  bool sistema_registro_digital = false;
  bool sistema_registro_papel = false;
  String sistema_registro_anio = obs_sistema_registro_anio.text;
  bool reporte_estadisticas_si = false;
  bool reporte_estadisticas_no = false;
  bool temporalidad_alta = false;
  bool temporalidad_baja = false;
  String espec_temporalidad_alta = obs_espec_temporalidad_alta.text;
  String espec_temporalidad_baja = obs_espec_temporalidad_baja.text;
  String espec_temporalidad_alta_visitantes = obs_espec_temporalidad_alta_visitantes.text;
  String espec_temporalidad_baja_visitantes = obs_espec_temporalidad_baja_visitantes.text;
  bool turista_nacional = false;
  bool turista_extranjero = false;
  String turista_nacional_ciudad = obs_turista_nacional_ciudad.text;
  String turista_nacional_mensual = obs_turista_nacional_mensual.text;
  String turista_nacional_anual = obs_turista_nacional_anual.text;
  String turista_extranjero_ciudad = obs_turista_extranjero_ciudad.text;
  String turista_extranjero_mensual = obs_turista_extranjero_mensual.text;
  String turista_extranjero_anual = obs_turista_extranjero_anual.text;
  String frecuencia_visita = obs_frecuencia_visita.text;
  bool frencuencia_visita_clave_si = false;
  String nombre_informante = obs_nombre_informante.text;
  String contactos = obs_contactos.text;
  bool demanda_dias_si = false;
  bool demanda_frecuencia_si = false;
  bool demanda_frecuencia_permanente = false;
  bool demanda_frecuencia_estacional = false;
  bool demanda_frecuencia_esporadica = false;
  bool demanda_frecuencia_inexistente = false;
  String demanda_dias_lun_vie = obs_demanda_dias_lun_vie.text;
  String demanda_dias_fines = obs_demanda_dias_fines.text;
  String demanda_dias_feriados = obs_demanda_dias_feriados.text;
  String frecuencia_visita_clave = obs_frecuencia_visita_clave.text;


  String anexos_fuente = obs_anexos_fuente.text;
  String ubicacion_fuente = obs_ubicacion_fuente.text;

  String _chosenValue_reporte_estadisticas = "";

  int optionGroup_registro_visitantes = 0;
  int optionGroup_sistema_registro = 0;
  int optionGroup_sistema_registro_tipo = 0;
  int optionGroup_reporte_estadisticas = 0;
  int optionGroup_demanda = 0;
  int optionGroup_demanda_frecuencia = 0;

  int optionGroup_temporalidad = 0;

  @override
  void initState() {
    super.initState();
    optionGroup_registro_visitantes = 0;
    optionGroup_sistema_registro = 0;
    optionGroup_sistema_registro_tipo = 0;
    optionGroup_reporte_estadisticas = 0;
    optionGroup_demanda = 0;
    optionGroup_demanda_frecuencia = 0;
    optionGroup_temporalidad = 0;
  }

  setSelectedRadio_registro_visitantes(int val) {
    setState(() {
      optionGroup_registro_visitantes = val;
      if (optionGroup_registro_visitantes == 1) {
        this.registro_visitantes_si = true;
        this.registro_visitantes_no = false;
        this.registro_visitantes_s_i = false;
        if (this.registro_visitantes_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup_registro_visitantes == 2) {
        this.registro_visitantes_si = false;
        this.registro_visitantes_no = true;
        this.registro_visitantes_s_i = false;
        if (this.registro_visitantes_no == true) {
          _showAlertDialogNo(context);
        }
      } else if (optionGroup_registro_visitantes == 3) {
        this.registro_visitantes_si = false;
        this.registro_visitantes_no = false;
        this.registro_visitantes_s_i = true;
      }
    });
  }
  setSelectedRadio_sistema_registro(int val) {
    setState(() {
      optionGroup_sistema_registro = val;
      if (optionGroup_sistema_registro == 1) {
        this.sistema_registro_si = true;
        this.sistema_registro_no = false;
        if (this.sistema_registro_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup_sistema_registro == 2) {
        this.sistema_registro_si = false;
        this.sistema_registro_no = true;
        if (this.sistema_registro_no == true) {
          _showAlertDialogNo(context);
        }
      }
    });
  }
  setSelectedRadio_sistema_registro_tipo(int val) {
    setState(() {
      optionGroup_sistema_registro_tipo = val;
      if (optionGroup_sistema_registro_tipo == 1) {
        this.sistema_registro_digital = true;
        this.sistema_registro_papel = false;
      } else if (optionGroup_sistema_registro_tipo == 2) {
        this.sistema_registro_digital = false;
        this.sistema_registro_papel = true;
      }
    });
  }
  setSelectedRadio_reporte_estadisticas(int val) {
    setState(() {
      optionGroup_reporte_estadisticas = val;
      if (optionGroup_reporte_estadisticas == 1) {
        this.reporte_estadisticas_si = true;
        this.reporte_estadisticas_no = false;
        if (this.reporte_estadisticas_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup_reporte_estadisticas == 2) {
        this.reporte_estadisticas_si = false;
        this.reporte_estadisticas_no = true;
        if (this.reporte_estadisticas_no == true) {
          _showAlertDialogNo(context);
        }
      }
    });
  }
  setSelectedRadio_temporalidad(int val) {
    setState(() {
      optionGroup_temporalidad = val;
      if (optionGroup_temporalidad == 1) {
        this.temporalidad_alta = true;
        this.temporalidad_baja = false;
      } else if (optionGroup_temporalidad == 2) {
        this.temporalidad_alta = false;
        this.temporalidad_baja = true;
      }
    });
  }
  setSelectedRadio_demanda(int val) {
    setState(() {
      optionGroup_demanda = val;
      if (optionGroup_demanda == 1) {
        this.demanda_dias_si = true;
        this.demanda_frecuencia_si = false;
        if (this.demanda_dias_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup_demanda == 2) {
        this.demanda_dias_si = false;
        this.demanda_frecuencia_si = true;
        if (this.demanda_frecuencia_si == true) {
          _showAlertDialogNo(context);
        }
      }
    });
  }
  setSelectedRadio_demanda_frecuencia(int val) {
    setState(() {
      optionGroup_demanda_frecuencia = val;
      if (optionGroup_demanda_frecuencia == 1) {
        this.demanda_frecuencia_permanente = true;
        this.demanda_frecuencia_estacional = false;
        this.demanda_frecuencia_esporadica = false;
        this.demanda_frecuencia_inexistente = false;
      } else if (optionGroup_demanda_frecuencia == 2) {
        this.demanda_frecuencia_permanente = false;
        this.demanda_frecuencia_estacional = true;
        this.demanda_frecuencia_esporadica = false;
        this.demanda_frecuencia_inexistente = false;
      } else if (optionGroup_demanda_frecuencia == 3) {
        this.demanda_frecuencia_permanente = false;
        this.demanda_frecuencia_estacional = false;
        this.demanda_frecuencia_esporadica = true;
        this.demanda_frecuencia_inexistente = false;
      } else if (optionGroup_demanda_frecuencia == 4) {
        this.demanda_frecuencia_permanente = false;
        this.demanda_frecuencia_estacional = false;
        this.demanda_frecuencia_esporadica = false;
        this.demanda_frecuencia_inexistente = true;
      }
    });
  }


  void _showAlertDialogSi(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'AVISO',
                textAlign: TextAlign.center,
              ),
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
            ));
  }
  void _showAlertDialogNo(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'AVISO',
                textAlign: TextAlign.center,
              ),
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
            ));
  }
  void _showAlertDialogTable(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar esta columna con la información correspondiente',
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
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('11. REGISTRO DE VISITANTES Y AFLUENCIA (M)',
              textAlign: TextAlign.center,
              maxLines: 4,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: HexColor("#A65005"),
              )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded,
              size: 35.0,
              color: HexColor("#A65005"),),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget> [
            IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded,
                size: 35.0,
                color: HexColor("#A65005"),),
              onPressed: () {
                _sendData(context);
              },
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget> [
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroup_registro_visitantes,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadio_registro_visitantes(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroup_registro_visitantes,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadio_registro_visitantes(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
                        value: 3,
                        groupValue: optionGroup_registro_visitantes,
                        title: Text("S/I"),
                        onChanged: (val) {
                          setSelectedRadio_registro_visitantes(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new CheckboxListTile(
              secondary: const Icon(Icons.fact_check_sharp),
              tristate: false,
              title: Text(
                "11.1. FRECUENCIA DE VISITA SEGÚN DATOS ESTADÍSTICOS",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.frecuencia_visita_si,
              onChanged: (value) {
                setState(() {
                  this.frecuencia_visita_si = value!;
                  if (this.frecuencia_visita_si == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Flexible(
                  child: Container(
                    child: Text(
                      "a. ¿Posee un sistema de registro de visitantes?",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#364C59"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroup_sistema_registro,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadio_sistema_registro(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroup_sistema_registro,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadio_sistema_registro(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget> [
                Flexible(
                  child: Container(
                    child: Text(
                      "Tipo:",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#364C59"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroup_sistema_registro_tipo,
                        title: Text("Digital", style: TextStyle(fontSize: 13),),
                        onChanged: (val) {
                          setSelectedRadio_sistema_registro_tipo(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroup_sistema_registro_tipo,
                        title: Text("Papel", style: TextStyle(fontSize: 13),),
                        onChanged: (val) {
                          setSelectedRadio_sistema_registro_tipo(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                ),
              ],
            ),
            new Container(
              padding: EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 2,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      enabled: this.registro_visitantes_si && this.frecuencia_visita_si
                          && this.sistema_registro_si &&
                          (this.sistema_registro_digital || this.sistema_registro_papel),
                      controller: obs_sistema_registro_anio,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                        "Ingrese los años de registro",
                        labelText: ("Años de registro"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(10, 10))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Flexible(
                  child: Container(
                    child: Text(
                      "b. ¿Se genera reporte de estadísticas de visita al atractivo?",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#364C59"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroup_reporte_estadisticas,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadio_reporte_estadisticas(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroup_reporte_estadisticas,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadio_reporte_estadisticas(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                )
              ],
            ),
            Column(
              children: [
                new Container(
                  padding: const EdgeInsets.all(20.0),
                  child: DropdownButton(
                    items: <String>[
                      'Ninguna',
                      'Mensual',
                      'Trimestral',
                      'Semanal',
                      'Anual',
                      'Todas',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: Text(
                      "Escoja una opción",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _chosenValue_reporte_estadisticas = value as String;
                      });
                    },
                  ),
                ),
              ],
            ),
            new Container(
                padding: EdgeInsets.all(5.0),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        enabled: false,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: HexColor("#0D0D0D"),
                        ),
                        decoration: InputDecoration(
                          hintText: this._chosenValue_reporte_estadisticas,
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(10, 10))),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Temporalidad de visita al atractivo",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: HexColor("#364C59"),
                  )),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroup_temporalidad,
                        title: Text("Alta (Meses)"),
                        onChanged: (val) {
                          setSelectedRadio_temporalidad(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroup_temporalidad,
                        title: Text("Baja (Meses)"),
                        onChanged: (val) {
                          setSelectedRadio_temporalidad(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new Container(
              margin: EdgeInsets.all(15.0),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(180.0),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    enabled: this.registro_visitantes_si && this.frecuencia_visita_si
                                    && this.temporalidad_alta,
                                    maxLength: 300,
                                    controller: obs_espec_temporalidad_alta,
                                    maxLines: 3,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: "Ingrese sus especificaciones",
                                      contentPadding: EdgeInsets.all(20.0),
                                      hintText: "Especifique",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    enabled: this.registro_visitantes_si && this.frecuencia_visita_si
                                    && this.temporalidad_baja,
                                    maxLength: 300,
                                    controller: obs_espec_temporalidad_baja,
                                    maxLines: 3,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: "Ingrese sus especificaciones",
                                      contentPadding: EdgeInsets.all(20.0),
                                      hintText: "Especifique",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ]
                  ),
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    keyboardType: TextInputType.number,
                                    enabled: this.registro_visitantes_si && this.frecuencia_visita_si
                                        && this.temporalidad_alta,
                                    controller: obs_espec_temporalidad_alta_visitantes,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      labelText: " Visitantes",
                                      hintText: "Ingrese número",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    keyboardType: TextInputType.number,
                                    enabled: this.registro_visitantes_si && this.frecuencia_visita_si
                                        && this.temporalidad_baja,
                                    controller: obs_espec_temporalidad_baja_visitantes,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      labelText: " Visitantes",
                                      hintText: "Ingrese número",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ]
                  )
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Llegada de turistas",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: HexColor("#364C59"),
                  )),
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "Turista nacional",
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
              value: this.turista_nacional,
              onChanged: (value) {
                setState(() {
                  this.turista_nacional = value!;
                  if (this.turista_nacional == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Column(
              children: <Widget> [
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Ciudades de origen",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.registro_visitantes_si && this.frecuencia_visita_si &&
                                      this.turista_nacional,
                                  controller: obs_turista_nacional_ciudad,
                                  maxLines: 5,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique cuidades de origen",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Llegadas mensuales",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  enabled: this.registro_visitantes_si && this.frecuencia_visita_si &&
                                      this.turista_nacional,
                                  controller: obs_turista_nacional_mensual,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique cuidades de origen",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Total anual",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  enabled: this.registro_visitantes_si && this.frecuencia_visita_si &&
                                      this.turista_nacional,
                                  controller: obs_turista_nacional_anual,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique cuidades de origen",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            new Container(
              child: CheckboxListTile(
                tristate: false,
                title: Text(
                  "Turista extranjero",
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
                value: this.turista_extranjero,
                onChanged: (value) {
                  setState(() {
                    this.turista_extranjero = value!;
                    if (this.turista_extranjero == true) {
                      _showAlertDialogSi(context);
                    }
                  });
                },
              ),
            ),
            new Column(
              children: <Widget> [
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Paises de origen",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.registro_visitantes_si && this.frecuencia_visita_si &&
                                      this.turista_extranjero,
                                  controller: obs_turista_extranjero_ciudad,
                                  maxLines: 5,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique paises de origen",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Llegadas mensuales",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  enabled: this.registro_visitantes_si && this.frecuencia_visita_si &&
                                      this.turista_extranjero,
                                  controller: obs_turista_extranjero_mensual,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique cuidades de origen",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Total anual",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  enabled: this.registro_visitantes_si && this.frecuencia_visita_si &&
                                      this.turista_extranjero,
                                  controller: obs_turista_extranjero_anual,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique cuidades de origen",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            new Container(
              padding: EdgeInsets.all(15.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      enabled: this.registro_visitantes_si && this.frecuencia_visita_si,
                      controller: obs_frecuencia_visita,
                      maxLines: 5,
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
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
            ),
            new CheckboxListTile(
              secondary: const Icon(Icons.fact_check_sharp),
              tristate: false,
              title: Text(
                "11.2. FRECUENCIA DE VISITA SEGÚN INFORMANTES CLAVE",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.frencuencia_visita_clave_si,
              onChanged: (value) {
                setState(() {
                  this.frencuencia_visita_clave_si = value!;
                  if (this.frencuencia_visita_clave_si == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Column(
              children: <Widget> [
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Nombre del informante clave",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.registro_visitantes_si && this.frencuencia_visita_clave_si,
                                  controller: obs_nombre_informante,
                                  maxLines: 5,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique nombre informante clave",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Contactos",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.phone,
                                  enabled: this.registro_visitantes_si && this.frencuencia_visita_clave_si,
                                  controller: obs_contactos,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique contactos",
                                    labelText: ("+593"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            new Container(
              child: Container(
                child: RadioListTile(
                  value: 1,
                  groupValue: optionGroup_demanda,
                  title: Text("Demanda según días de visita",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )
                  ),
                  onChanged: (val) {
                    setSelectedRadio_demanda(val as int);
                  },
                  activeColor: Colors.indigo,
                  selected: false,
                ),
              )
            ),
            new Column(
              children: <Widget> [

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Lunes a Viernes",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  enabled: this.registro_visitantes_si && this.frencuencia_visita_clave_si
                                  && this.demanda_dias_si,
                                  controller: obs_demanda_dias_lun_vie,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique días de demanda",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Fines de Semana",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  enabled: this.registro_visitantes_si && this.frencuencia_visita_clave_si
                                  && this.demanda_dias_si,
                                  controller: obs_demanda_dias_fines,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique fines de semana",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Días feriados",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  enabled: this.registro_visitantes_si && this.frencuencia_visita_clave_si
                                      && this.demanda_dias_si,
                                  controller: obs_demanda_dias_feriados,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique feriados",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            new Column(
              children: <Widget> [
                new Container(
                  child: RadioListTile(
                    value: 2,
                    groupValue: optionGroup_demanda,
                    title: Text("Demanda según frecuencia de visita",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        )
                    ),
                    onChanged: (val) {
                      setSelectedRadio_demanda(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  ),
                ),
                new Container(
                  child: RadioListTile(
                    value: 1,
                    groupValue: optionGroup_demanda_frecuencia,
                    title: Text("Permanente",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        )
                    ),
                    onChanged: (val) {
                      setSelectedRadio_demanda_frecuencia(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  ),
                ),
                new Container(
                  child: RadioListTile(
                    value: 2,
                    groupValue: optionGroup_demanda_frecuencia,
                    title: Text("Estacional",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        )
                    ),
                    onChanged: (val) {
                      setSelectedRadio_demanda_frecuencia(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  ),
                ),
                new Container(
                  child: RadioListTile(
                    value: 3,
                    groupValue: optionGroup_demanda_frecuencia,
                    title: Text("Esporádica",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        )
                    ),
                    onChanged: (val) {
                      setSelectedRadio_demanda_frecuencia(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  ),
                ),
                new Container(
                  child: RadioListTile(
                    value: 4,
                    groupValue: optionGroup_demanda_frecuencia,
                    title: Text("Inexistente",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        )
                    ),
                    onChanged: (val) {
                      setSelectedRadio_demanda_frecuencia(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
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
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TurismTable12())
    );
  }
}