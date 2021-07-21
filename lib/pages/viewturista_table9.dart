import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:turismo_flutter/pages/viewturista_table10.dart';
import 'package:turismo_flutter/pages/viewturista_table7.dart';
import 'package:turismo_flutter/pages/viewturista_table8.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class turismTable9 extends StatefulWidget {

  //Tabla1
  final String categoria;
  final String tipo;
  final String subtipo;
  //Tabla2
  final String calle_prin;
  final String num_lugar ;
  final String transversal ;
  final String latitud ;
  final String longitud ;
  final String altura ;
  final String seleccion;
  final String seleccion1;
  final String seleccion2;
  final String seleccion3;
  //Tabla3
  final String temperatura;
  final String precipitacion;
  final String especificar;
  final String precio;
  final String meses_recomen;
  final String observaciones;
  //Tabla4
  final String ciudad_cercana;
  final String distancia_ciudad;
  final String tiempo_auto;
  final String latitudTab4;
  final String longitudTab4;
  final String observaciones_accs;
  final String coor_inicio;
  final String coor_fin;
  final String distancia;
  final String tipo_material;
  final String estado ;
  final String observaciones_terrestre ;
  final String puerto ;
  final String observaciones_acuatico;
  final String observaciones_aereo;
  final String especifique_servicio ;
  final String observaciones_servicio ;
  //Tabla5
  final String estableci_registrados;
  final String numero_mesas;
  final String numero_plazas;
  final String observacionesTab5 ;
  final String estableci_registrados_alimentos;
  final String numero_mesas_alimentos ;
  final String numero_plazas_alimentos ;
  final String observaciones_alimentos;
  final String estableci_registrados_agencias;
  final String observaciones_agencias ;
  final String local;
  final String nacional ;
  final String nacional_especializado;
  final String cultura ;
  final String aventura ;
  final String observaciones_guia;
  //Tabla6
  final bool si_estado_conservacion;
  final bool no_estado_conservacion;
  final bool s_i_estado_conservacion;
  final bool atractivo_U;
  final bool conservado_atractivo_U;
  final bool alterado_atractivo_U;
  final bool deterioro_atractivo_U;
  final bool deteriorado_atractivo_U;
  final String observaciones_atractivo_U;
  final bool erosion_M_fac;
  final bool humedad_M_fac;
  final bool desastres_naturales_M_fac;
  final bool flora_fauna_M_fac;
  final bool clima_M_fac;
  final bool actividades_agricolas_M_fac;
  final bool actividades_forestales_M_fac;
  final bool actividades_minera_M_fac;
  final bool actividades_industriales_M_fac;
  final bool neglicencia_M_fac;
  final bool huaqueria_M_fac;
  final bool conflictos_tenencia_M_fac;
  final bool condiciones_uso_M_fac;
  final bool falta_mantenimiento_M_fac;
  final bool contaminacion_ambiente_M_fac;
  final bool generacion_residuos_M_fac;
  final bool expansion_urbana_M_fac;
  final bool conflicto_poliico_social_M_fac;
  final bool desarrollo_industrial_M_fac;
  final bool vandalismo_M_fac;
  final bool otro_M_fac;
  final String especifique_M_fac;
  final String observaciones_M_fac;
  final bool entorno_U;
  final bool conservado_entorno_U;
  final bool alterado_entorno_U;
  final bool deterioro_entorno_U;
  final bool deteriorado_entorno_U;
  final String observaciones_entorno_U;
  final bool erosion_M_ent;
  final bool humedad_M_ent;
  final bool desastres_naturales_M_ent;
  final bool flora_fauna_M_ent;
  final bool clima_M_ent;
  final bool actividades_agricolas_M_ent;
  final bool actividades_forestales_M_ent;
  final bool actividades_minera_M_ent;
  final bool actividades_industriales_M_ent;
  final bool neglicencia_M_ent;
  final bool huaqueria_M_ent;
  final bool conflictos_tenencia_M_ent;
  final bool condiciones_uso_M_ent;
  final bool falta_mantenimiento_M_ent;
  final bool contaminacion_ambiente_M_ent;
  final bool generacion_residuos_M_ent;
  final bool expansion_urbana_M_ent;
  final bool conflicto_poliico_social_M_ent;
  final bool desarrollo_industrial_M_ent;
  final bool vandalismo_M_ent;
  final bool otro_M_ent;
  final String especifique_M_ent;
  final String observaciones_M_ent;
  final bool declaratoria_espacio;
  final String declarante_espacio;
  final String denominacion_espacio;
  final DateTime fecha_declaracion_espacio;
  final String alcance_espacio;
  final String observaciones_espacio;
  //Tabla7
  final bool si_higiene_turistica;
  final bool no_higiene_turistica;
  final bool s_i_higiene_turistica;
  final bool servicio_basico;
  final bool atractivo_servicio_basico;
  final bool agua_servicio;
  final String especifique_agua_atractivo;
  final bool agua_atractivo;
  final bool energia_atractivo;
  final bool energia_ciudad;
  final String especifique_energia_atractivo;
  final bool saneamiento_atractivo;
  final String especifique_saneamiento_atractivo;
  final bool desechos_atractivo;
  final String especifique_desechos_atractivo;
  final String onservaciones_atractivo_ciudad;
  final bool ciudad_poblado_servicio_basico;
  final bool agua_ciudad;
  final String especifique_agua_ciudad;
  final String especifique_energia_ciudad;
  final bool saneamiento_ciudad;
  final String especifique_saneamiento_ciudad;
  final bool desechos_ciudad;
  final String especifique_desechos_ciudad;
  final bool senialeticas_atarctivo;
  final bool areas_urbanas;
  final String pic_a_n_madera;
  final String pic_a_n_aluminio;
  final String pic_a_n_otro;
  final String especifique_pic_a_n;
  final bool pic_a_n_bueno;
  final bool pic_a_n_regular;
  final bool pic_a_n_malo;
  final String pic_a_c_madera;
  final String pic_a_c_aluminio;
  final String pic_a_c_otro;
  final String especifique_pic_a_c;
  final bool pic_a_c_bueno;
  final bool pic_a_c_regular;
  final bool pic_a_c_malo;
  final String pic_a_t_madera;
  final String pic_a_t_aluminio;
  final String pic_a_t_otro;
  final String especifique_pic_a_t;
  final bool pic_a_t_bueno;
  final bool pic_a_t_regular;
  final bool pic_a_t_malo;
  final String pic_s_a_madera;
  final String pic_s_a_aluminio;
  final String pic_s_a_otro;
  final String especifique_pic_s_a;
  final bool pic_s_a_bueno;
  final bool pic_s_a_regular;
  final bool pic_s_a_malo;
  final String pic_r_madera;
  final String pic_r_aluminio;
  final String pic_r_otro;
  final String especifique_pic_r;
  final bool pic_r_bueno;
  final bool pic_r_regular;
  final bool pic_r_malo;
  final String totems_a_t_madera;
  final String totems_a_t_aluminio;
  final String totems_a_t_otro;
  final String especifique_totems_a_t;
  final bool totems_a_t_bueno;
  final bool totems_a_t_regular;
  final bool totems_a_t_malo;
  final String totems_s_madera;
  final String totems_s_aluminio;
  final String totems_s_otro;
  final String especifique_totems_s;
  final bool totems_s_bueno;
  final bool totems_s_regular;
  final bool totems_s_malo;
  final String totems_d_madera;
  final String totems_d_aluminio;
  final String totems_d_otro;
  final String especifique_totems_d;
  final bool totems_d_bueno;
  final bool totems_d_regular;
  final bool totems_d_malo;
  final bool areas_naturales;
  final String pic_a_n_madera_N;
  final String pic_a_n_aluminio_N;
  final String pic_a_n_otro_N;
  final String especifique_pic_a_n_N;
  final bool pic_a_n_bueno_N;
  final bool pic_a_n_regular_N;
  final bool pic_a_n_malo_N;
  final bool pic_a_c_bueno_N;
  final bool pic_a_c_regular_N;
  final bool pic_a_c_malo_N;
  final bool pic_a_t_bueno_N;
  final bool pic_a_t_regular_N;
  final bool pic_a_t_malo_N;
  final String pic_a_t_madera_N;
  final String pic_a_t_aluminio_N;
  final String pic_a_t_otro_N;
  final String especifique_pic_a_t_N;
  final bool pic_s_a_bueno_N;
  final bool pic_s_a_regular_N;
  final bool pic_s_a_malo_N;
  final String pic_r_madera_N;
  final String pic_r_alumunio_N;
  final String pic_r_otro_N;
  final String especifique_pic_r_N;
  final bool pic_r_bueno_N;
  final bool pic_r_regular_N;
  final bool pic_r_malo_N;
  final String seniales_t_a_madera;
  final String seniales_t_a_aluminio;
  final String seniales_t_a_otro;
  final String especifique_seniales_t_a;
  final bool seniales_t_a_bueno;
  final bool seniales_t_a_regular;
  final bool seniales_t_a_malo;
  final String paneles_d_a_madera;
  final String paneles_d_a_aluminio;
  final String paneles_d_a_otro;
  final String especifique_paneles_d_a;
  final bool paneles_d_a_bueno;
  final bool paneles_d_a_regular;
  final bool paneles_d_a_malo;
  final String panel_i_a_madera;
  final String panel_i_a_aluminio;
  final String panel_i_a_otro;
  final String especifique_panel_i_a;
  final bool panel_i_a_bueno;
  final bool panel_i_a_regular;
  final bool panel_i_a_malo;
  final String panel_i_d_madera;
  final String panel_i_d_aluminio;
  final String panel_i_d_otro;
  final String especifique_panel_i_d;
  final bool panel_i_d_bueno;
  final bool panel_i_d_regular;
  final bool panel_i_d_malo;
  final String mesas_i_madera;
  final String mesas_i_aluminio;
  final String mesas_i_otro;
  final String especifique_mesas_i;
  final bool mesas_i_bueno;
  final bool mesas_i_regular;
  final bool mesas_i_malo;
  final String totems_s_madera_N;
  final String totems_s_aluminio_N;
  final String totems_s_otro_N;
  final String especifique_totems_s_N;
  final bool totems_s_bueno_N;
  final bool totems_s_regular_N;
  final bool totems_s_malo_N;
  final String totem_d_madera;
  final String totem_d_aluminio;
  final String totem_d_otro;
  final String especifique_totem_d;
  final bool totem_d_bueno;
  final bool totem_d_regular;
  final bool totem_d_malo;
  final bool letreros_informativos;
  final String letrero_i_b_madera;
  final String letrero_i_b_aluminio;
  final String letrero_i_b_otro;
  final String especifique_letrero_i_b;
  final bool letrero_i_b_bueno;
  final bool letrero_i_b_regular;
  final bool letrero_i_b_malo;
  final String normativos_c_madera;
  final String normativos_c_aluminio;
  final String normativos_c_otro;
  final String especifique_normativos_c;
  final bool normativos_c_bueno;
  final bool normativos_c_regular;
  final bool normativos_c_malo;
  final bool otros_senialetica;
  final String otros_senialetica_texto;
  final String observaciones_senialetica;
  final bool senialetica_interna;
  final String proteccion_elementos_madera;
  final String proteccion_elementos_aluminio;
  final String proteccion_elementos_otro;
  final String especifique_proteccion;
  final bool proteccion_bueno;
  final bool proteccion_regular;
  final bool proteccion_malo;
  final bool salud_cercana;
  final bool salud_atractivo;
  final bool atractivo_hospital;
  final bool atractivo_centro;
  final bool atractivo_dispensario;
  final bool atractivo_botiquin;
  final bool atractivo_otros;
  final bool salud_ciudad;
  final bool ciudad_hospital;
  final bool ciudad_centro;
  final bool ciudad_dispensario;
  final bool ciudad_botiquin;
  final bool ciudad_otros;
  final String salud_observaciones;
  final String seguridad_privada_detalle;
  final String seguridad_policia_nacional_detalle;
  final String seguridad_policia_municipal_detalle;
  final String seguridad_otra_detalle;
  final bool seguridad_M;
  final bool seguridad_privada;
  final bool seguridad_policia_nacional;
  final bool seguridad_policia_municipal;
  final bool seguridad_otra;
  final String seguridad_observaciones;
  final String num_atractivo_centro;
  final String num_atractivo_hospital;
  final String num_atractivo_dispensario;
  final String num_atractivo_botiquin;
  final String num_atractivo_otros;
  final String num_ciudad_hospital;
  final String num_ciudad_centro;
  final String num_ciudad_dispensario;
  final String num_ciudad_botiquin;
  final String num_ciudad_otros;
  final bool servicio_publico;
  final bool servicio_atractivo;
  final bool servicio_ciudad;
  final bool servicio_atractivo_telefonia;
  final bool servicio_atractivo_internet;
  final bool servicio_atractivo_t_fija;
  final bool servicio_atractivo_t_movil;
  final bool servicio_atractivo_t_satelital;
  final bool servicio_atractivo_i_fibra;
  final bool servicio_atractivo_i_satelite;
  final bool servicio_atractivo_i_redes;
  final bool servicio_atractivo_i_telefonia;
  final bool servicio_ciudad_telefonia;
  final bool servicio_ciudad_internet;
  final bool servicio_ciudad_t_fija;
  final bool servicio_ciudad_t_movil;
  final bool servicio_ciudad_t_satelital;
  final bool servicio_atractivo_i_linea;
  final bool servicio_ciudad_i_linea;
  final bool servicio_ciudad_i_fibra;
  final bool servicio_ciudad_i_satelite;
  final bool servicio_ciudad_i_redes;
  final bool servicio_ciudad_i_telefonia;
  final String servicio_observaciones;
  final bool servicio_radio;
  final bool servicio_radio_exclusivo;
  final bool servicio_radio_interna;
  final bool servicio_radio_emergencia;
  final String servicio_radio_observaciones;
  final bool multiamenaza_M;
  final bool multiamenaza_deslaves;
  final bool multiamenaza_sismos;
  final bool multiamenaza_erupciones;
  final bool multiamenaza_incendios;
  final bool multiamenaza_sequia;
  final bool multiamenaza_inundaciones;
  final bool multiamenaza_aguajes;
  final bool multiamenazas_tsunami;
  final bool multiamenaza_plan_contin;
  final String multiamenaza_institucion_doc;
  final String multiamenaza_nombre_doc;
  final String multiamenazas_observaciones;
  final DateTime currentDate;
  //Tabla8
  final bool politicas_si;
  final bool politicas_no;
  final bool politicas_s_i;
  final bool politicas_gad_si;
  final bool politicas_gad_no;
  final bool politicas_planificacion_si;
  final bool politicas_planificacion_no;
  final String politicas_planificacion_espec;
  final bool politicas_normativas_si;
  final bool politicas_normativas_no;
  final String politicas_normativas_espec;
  final bool politicas_ordenanzas_si;
  final bool politicas_ordenanzas_no;
  final String politicas_ordenanzas_espec;
  final String politicas_observaciones;

  turismTable9(
      {Key? key,
        required this.categoria,
        required this.tipo,
        required this.subtipo,
        required this.calle_prin,
        required this.num_lugar,
        required this.transversal,
        required this.latitud,
        required this.longitud,
        required this.altura,
        required this.seleccion,
        required this.seleccion1,
        required this.seleccion2,
        required this.seleccion3,
        required this.temperatura,
        required this.precipitacion,
        required this.especificar,
        required this.precio,
        required this.meses_recomen,
        required this.observaciones,
        required this.ciudad_cercana,
        required this.distancia_ciudad,
        required this.tiempo_auto,
        required this.latitudTab4,
        required this.longitudTab4,
        required this.observaciones_accs,
        required this.coor_inicio,
        required this.coor_fin,
        required this.distancia,
        required this.tipo_material,
        required this.estado,
        required this.observaciones_terrestre,
        required this.puerto,
        required this.observaciones_acuatico,
        required this.observaciones_aereo,
        required this.especifique_servicio,
        required this.observaciones_servicio,
        required this.estableci_registrados,
        required this.numero_mesas,
        required this.numero_plazas,
        required this.observacionesTab5,
        required this.estableci_registrados_alimentos,
        required this.numero_mesas_alimentos,
        required this.numero_plazas_alimentos,
        required this.observaciones_alimentos,
        required this.estableci_registrados_agencias,
        required this.observaciones_agencias,
        required this.local,
        required this.nacional,
        required this.nacional_especializado,
        required this.cultura,
        required this.aventura,
        required this.observaciones_guia,
      required this.si_estado_conservacion,
      required this.observaciones_atractivo_U,
      required this.atractivo_U,
      required this.no_estado_conservacion,
      required this.s_i_estado_conservacion,
      required this.conservado_atractivo_U,
      required this.alterado_atractivo_U,
      required this.deterioro_atractivo_U,
      required this.deteriorado_atractivo_U,
      required this.erosion_M_fac,
      required this.humedad_M_fac,
      required this.desastres_naturales_M_fac,
      required this.flora_fauna_M_fac,
      required this.clima_M_fac,
      required this.actividades_agricolas_M_fac,
      required this.actividades_forestales_M_fac,
      required this.actividades_minera_M_fac,
      required this.actividades_industriales_M_fac,
      required this.neglicencia_M_fac,
      required this.huaqueria_M_fac,
      required this.conflictos_tenencia_M_fac,
      required this.condiciones_uso_M_fac,
      required this.falta_mantenimiento_M_fac,
      required this.contaminacion_ambiente_M_fac,
      required this.generacion_residuos_M_fac,
      required this.expansion_urbana_M_fac,
      required this.conflicto_poliico_social_M_fac,
      required this.desarrollo_industrial_M_fac,
      required this.vandalismo_M_fac,
      required this.otro_M_fac,
      required this.especifique_M_fac,
      required this.observaciones_M_fac,
      required this.entorno_U,
      required this.conservado_entorno_U,
      required this.alterado_entorno_U,
      required this.deterioro_entorno_U,
      required this.deteriorado_entorno_U,
      required this.observaciones_entorno_U,
      required this.erosion_M_ent,
      required this.humedad_M_ent,
      required this.desastres_naturales_M_ent,
      required this.flora_fauna_M_ent,
      required this.clima_M_ent,
      required this.actividades_agricolas_M_ent,
      required this.actividades_forestales_M_ent,
      required this.actividades_minera_M_ent,
      required this.actividades_industriales_M_ent,
      required this.neglicencia_M_ent,
      required this.huaqueria_M_ent,
      required this.conflictos_tenencia_M_ent,
      required this.condiciones_uso_M_ent,
      required this.falta_mantenimiento_M_ent,
      required this.contaminacion_ambiente_M_ent,
      required this.generacion_residuos_M_ent,
      required this.expansion_urbana_M_ent,
      required this.conflicto_poliico_social_M_ent,
      required this.desarrollo_industrial_M_ent,
      required this.vandalismo_M_ent,
      required this.otro_M_ent,
      required this.especifique_M_ent,
      required this.observaciones_M_ent,
      required this.declaratoria_espacio,
      required this.declarante_espacio,
      required this.denominacion_espacio,
      required this.fecha_declaracion_espacio,
      required this.alcance_espacio,
      required this.observaciones_espacio,
      //Variables tabla7
      required this.si_higiene_turistica,
      required this.no_higiene_turistica,
      required this.s_i_higiene_turistica,
      required this.servicio_basico,
      required this.atractivo_servicio_basico,
      required this.agua_servicio,
      required this.especifique_agua_atractivo,
      required this.agua_atractivo,
      required this.energia_atractivo,
      required this.energia_ciudad,
      required this.especifique_energia_atractivo,
      required this.saneamiento_atractivo,
      required this.especifique_saneamiento_atractivo,
      required this.desechos_atractivo,
      required this.especifique_desechos_atractivo,
      required this.onservaciones_atractivo_ciudad,
      required this.ciudad_poblado_servicio_basico,
      required this.agua_ciudad,
      required this.especifique_agua_ciudad,
      required this.especifique_energia_ciudad,
      required this.saneamiento_ciudad,
      required this.especifique_saneamiento_ciudad,
      required this.desechos_ciudad,
      required this.especifique_desechos_ciudad,
      required this.senialeticas_atarctivo,
      required this.areas_urbanas,
      required this.pic_a_n_madera,
      required this.pic_a_n_aluminio,
      required this.pic_a_n_otro,
      required this.especifique_pic_a_n,
      required this.pic_a_n_bueno,
      required this.pic_a_n_regular,
      required this.pic_a_n_malo,
      required this.pic_a_c_madera,
      required this.pic_a_c_aluminio,
      required this.pic_a_c_otro,
      required this.especifique_pic_a_c,
      required this.pic_a_c_bueno,
      required this.pic_a_c_regular,
      required this.pic_a_c_malo,
      required this.pic_a_t_madera,
      required this.pic_a_t_aluminio,
      required this.pic_a_t_otro,
      required this.especifique_pic_a_t,
      required this.pic_a_t_bueno,
      required this.pic_a_t_regular,
      required this.pic_a_t_malo,
      required this.pic_s_a_madera,
      required this.pic_s_a_aluminio,
      required this.pic_s_a_otro,
      required this.especifique_pic_s_a,
      required this.pic_s_a_bueno,
      required this.pic_s_a_regular,
      required this.pic_s_a_malo,
      required this.pic_r_madera,
      required this.pic_r_aluminio,
      required this.pic_r_otro,
      required this.especifique_pic_r,
      required this.pic_r_bueno,
      required this.pic_r_regular,
      required this.pic_r_malo,
      required this.totems_a_t_madera,
      required this.totems_a_t_aluminio,
      required this.totems_a_t_otro,
      required this.especifique_totems_a_t,
      required this.totems_a_t_bueno,
      required this.totems_a_t_regular,
      required this.totems_a_t_malo,
      required this.totems_s_madera,
      required this.totems_s_aluminio,
      required this.totems_s_otro,
      required this.especifique_totems_s,
      required this.totems_s_bueno,
      required this.totems_s_regular,
      required this.totems_s_malo,
      required this.totems_d_madera,
      required this.totems_d_aluminio,
      required this.totems_d_otro,
      required this.especifique_totems_d,
      required this.totems_d_bueno,
      required this.totems_d_regular,
      required this.totems_d_malo,
      required this.areas_naturales,
      required this.pic_a_n_madera_N,
      required this.pic_a_n_aluminio_N,
      required this.pic_a_n_otro_N,
      required this.especifique_pic_a_n_N,
      required this.pic_a_n_bueno_N,
      required this.pic_a_n_regular_N,
      required this.pic_a_n_malo_N,
      required this.pic_a_c_bueno_N,
      required this.pic_a_c_regular_N,
      required this.pic_a_c_malo_N,
      required this.pic_a_t_bueno_N,
      required this.pic_a_t_regular_N,
      required this.pic_a_t_malo_N,
      required this.pic_a_t_madera_N,
      required this.pic_a_t_aluminio_N,
      required this.pic_a_t_otro_N,
      required this.especifique_pic_a_t_N,
      required this.pic_s_a_bueno_N,
      required this.pic_s_a_regular_N,
      required this.pic_s_a_malo_N,
      required this.pic_r_madera_N,
      required this.pic_r_alumunio_N,
      required this.pic_r_otro_N,
      required this.especifique_pic_r_N,
      required this.pic_r_bueno_N,
      required this.pic_r_regular_N,
      required this.pic_r_malo_N,
      required this.seniales_t_a_madera,
      required this.seniales_t_a_aluminio,
      required this.seniales_t_a_otro,
      required this.especifique_seniales_t_a,
      required this.seniales_t_a_bueno,
      required this.seniales_t_a_regular,
      required this.seniales_t_a_malo,
      required this.paneles_d_a_madera,
      required this.paneles_d_a_aluminio,
      required this.paneles_d_a_otro,
      required this.especifique_paneles_d_a,
      required this.paneles_d_a_bueno,
      required this.paneles_d_a_regular,
      required this.paneles_d_a_malo,
      required this.panel_i_a_madera,
      required this.panel_i_a_aluminio,
      required this.panel_i_a_otro,
      required this.especifique_panel_i_a,
      required this.panel_i_a_bueno,
      required this.panel_i_a_regular,
      required this.panel_i_a_malo,
      required this.panel_i_d_madera,
      required this.panel_i_d_aluminio,
      required this.panel_i_d_otro,
      required this.especifique_panel_i_d,
      required this.panel_i_d_bueno,
      required this.panel_i_d_regular,
      required this.panel_i_d_malo,
      required this.mesas_i_madera,
      required this.mesas_i_aluminio,
      required this.mesas_i_otro,
      required this.especifique_mesas_i,
      required this.mesas_i_bueno,
      required this.mesas_i_regular,
      required this.mesas_i_malo,
      required this.totems_s_madera_N,
      required this.totems_s_aluminio_N,
      required this.totems_s_otro_N,
      required this.especifique_totems_s_N,
      required this.totems_s_bueno_N,
      required this.totems_s_regular_N,
      required this.totems_s_malo_N,
      required this.totem_d_madera,
      required this.totem_d_aluminio,
      required this.totem_d_otro,
      required this.especifique_totem_d,
      required this.totem_d_bueno,
      required this.totem_d_regular,
      required this.totem_d_malo,
      required this.letreros_informativos,
      required this.letrero_i_b_madera,
      required this.letrero_i_b_aluminio,
      required this.letrero_i_b_otro,
      required this.especifique_letrero_i_b,
      required this.letrero_i_b_bueno,
      required this.letrero_i_b_regular,
      required this.letrero_i_b_malo,
      required this.normativos_c_madera,
      required this.normativos_c_aluminio,
      required this.normativos_c_otro,
      required this.especifique_normativos_c,
      required this.normativos_c_bueno,
      required this.normativos_c_regular,
      required this.normativos_c_malo,
      required this.otros_senialetica,
      required this.otros_senialetica_texto,
      required this.observaciones_senialetica,
      required this.senialetica_interna,
      required this.proteccion_elementos_madera,
      required this.proteccion_elementos_aluminio,
      required this.proteccion_elementos_otro,
      required this.especifique_proteccion,
      required this.proteccion_bueno,
      required this.proteccion_regular,
      required this.proteccion_malo,
      required this.salud_cercana,
      required this.salud_atractivo,
      required this.atractivo_hospital,
      required this.atractivo_centro,
      required this.atractivo_dispensario,
      required this.atractivo_botiquin,
      required this.atractivo_otros,
      required this.salud_ciudad,
      required this.ciudad_hospital,
      required this.ciudad_centro,
      required this.ciudad_dispensario,
      required this.ciudad_botiquin,
      required this.ciudad_otros,
      required this.salud_observaciones,
      required this.seguridad_privada_detalle,
      required this.seguridad_policia_nacional_detalle,
      required this.seguridad_policia_municipal_detalle,
      required this.seguridad_otra_detalle,
      required this.seguridad_M,
      required this.seguridad_privada,
      required this.seguridad_policia_nacional,
      required this.seguridad_policia_municipal,
      required this.seguridad_otra,
      required this.seguridad_observaciones,
      required this.num_atractivo_centro,
      required this.num_atractivo_hospital,
      required this.num_atractivo_dispensario,
      required this.num_atractivo_botiquin,
      required this.num_atractivo_otros,
      required this.num_ciudad_hospital,
      required this.num_ciudad_centro,
      required this.num_ciudad_dispensario,
      required this.num_ciudad_botiquin,
      required this.num_ciudad_otros,
      required this.servicio_publico,
      required this.servicio_atractivo,
      required this.servicio_ciudad,
      required this.servicio_atractivo_telefonia,
      required this.servicio_atractivo_internet,
      required this.servicio_atractivo_t_fija,
      required this.servicio_atractivo_t_movil,
      required this.servicio_atractivo_t_satelital,
      required this.servicio_atractivo_i_fibra,
      required this.servicio_atractivo_i_satelite,
      required this.servicio_atractivo_i_redes,
      required this.servicio_atractivo_i_telefonia,
      required this.servicio_ciudad_telefonia,
      required this.servicio_ciudad_internet,
      required this.servicio_ciudad_t_fija,
      required this.servicio_ciudad_t_movil,
      required this.servicio_ciudad_t_satelital,
      required this.servicio_atractivo_i_linea,
      required this.servicio_ciudad_i_linea,
      required this.servicio_ciudad_i_fibra,
      required this.servicio_ciudad_i_satelite,
      required this.servicio_ciudad_i_redes,
      required this.servicio_ciudad_i_telefonia,
      required this.servicio_observaciones,
      required this.servicio_radio,
      required this.servicio_radio_exclusivo,
      required this.servicio_radio_interna,
      required this.servicio_radio_emergencia,
      required this.servicio_radio_observaciones,
      required this.multiamenaza_M,
      required this.multiamenaza_deslaves,
      required this.multiamenaza_sismos,
      required this.multiamenaza_erupciones,
      required this.multiamenaza_incendios,
      required this.multiamenaza_sequia,
      required this.multiamenaza_inundaciones,
      required this.multiamenaza_aguajes,
      required this.multiamenazas_tsunami,
      required this.multiamenaza_plan_contin,
      required this.multiamenaza_institucion_doc,
      required this.multiamenaza_nombre_doc,
      required this.multiamenazas_observaciones,
      required this.currentDate,
      required this.politicas_si,
      required this.politicas_no,
      required this.politicas_s_i,
      required this.politicas_gad_si,
      required this.politicas_gad_no,
      required this.politicas_planificacion_si,
      required this.politicas_planificacion_no,
      required this.politicas_planificacion_espec,
      required this.politicas_normativas_si,
      required this.politicas_normativas_no,
      required this.politicas_normativas_espec,
      required this.politicas_ordenanzas_si,
      required this.politicas_ordenanzas_no,
      required this.politicas_ordenanzas_espec,
      required this.politicas_observaciones})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => new FormWidgetState9();
}

class FormWidgetState9 extends State<turismTable9> {
  static TextEditingController obs_atractivo_agua_otro_txt =
      TextEditingController();
  static TextEditingController obs_atractivo_agua_observaciones =
      TextEditingController();
  static TextEditingController obs_atractivo_aire_otro_txt =
      TextEditingController();
  static TextEditingController obs_atractivo_aire_observaciones =
      TextEditingController();
  static TextEditingController obs_atractivo_terrestre_otro_txt =
      TextEditingController();
  static TextEditingController obs_atractivo_terrestre_observaciones =
      TextEditingController();
  static TextEditingController obs_atractivo_cultural_otro_txt =
      TextEditingController();
  static TextEditingController obs_atractivo_cultural_observaciones =
      TextEditingController();

  //VARIABLES
  bool actividades_si = false;
  bool actividades_no = false;
  bool actividades_s_i = false;
  bool atractivo_natural = false;
  bool atractivo_agua = false;
  bool atractivo_agua_buceo = false;
  bool atractivo_agua_kayak_mar = false;
  bool atractivo_agua_kayak_lacustre = false;
  bool atractivo_agua_kayak_rio = false;
  bool atractivo_agua_surf = false;
  bool atractivo_agua_kite = false;
  bool atractivo_agua_raft = false;
  bool atractivo_agua_snorkel = false;
  bool atractivo_agua_tubing = false;
  bool atractivo_agua_regata = false;
  bool atractivo_agua_paseo_panga = false;
  bool atractivo_agua_paseo_bote = false;
  bool atractivo_agua_paseo_lancha = false;
  bool atractivo_agua_paseo_moto = false;
  bool atractivo_agua_para = false;
  bool atractivo_agua_esqui = false;
  bool atractivo_agua_banana = false;
  bool atractivo_agua_boya = false;
  bool atractivo_agua_pesca = false;
  bool atractivo_agua_otro = false;
  String atractivo_agua_otro_txt = obs_atractivo_agua_otro_txt.text;
  String atractivo_agua_observaciones = obs_atractivo_agua_observaciones.text;
  bool atractivo_aire = false;
  bool atractivo_aire_alas = false;
  bool atractivo_aire_canopy = false;
  bool atractivo_aire_parante = false;
  bool atractivo_aire_otro = false;
  String atractivo_aire_otro_txt = obs_atractivo_aire_otro_txt.text;
  String atractivo_aire_observaciones = obs_atractivo_aire_observaciones.text;
  bool atractivo_terrestre = false;
  bool atractivo_terrestre_montanismo = false;
  bool atractivo_terrestre_escalada = false;
  bool atractivo_terrestre_senderismo = false;
  bool atractivo_terrestre_ciclo = false;
  bool atractivo_terrestre_cany = false;
  bool atractivo_terrestre_cuevas = false;
  bool artractivo_terrestre_recreativas = false;
  bool atractivo_terrestre_cabalgata = false;
  bool atractivo_terrestre_caminata = false;
  bool atractivo_terrestre_camping = false;
  bool atractivo_terrestre_picnic = false;
  bool atractivo_terrestre_flora = false;
  bool atractivo_terrestre_astros = false;
  bool atractivo_terrestre_otro = false;
  String atractivo_terrestre_otro_txt = obs_atractivo_terrestre_otro_txt.text;
  String atractivo_terrestre_observaciones =
      obs_atractivo_terrestre_observaciones.text;
  bool atractivo_cultural = false;
  bool atractivo_cultural_t_i = false;
  bool atractivo_cultural_recorrido_g = false;
  bool atractivo_cultural_recorrido_a = false;
  bool atractivo_cultural_talleres = false;
  bool atractivo_cultural_participacion_talleres = false;
  bool atractivo_cultural_talleres_a = false;
  bool atractivo_cultural_participacion_artesanales = false;
  bool atractivo_cultural_esposiciones = false;
  bool atractivo_cultural_exhibicion = false;
  bool atractivo_cultural_vivencia = false;
  bool atractivo_cultural_presentaciones = false;
  bool atractivo_cultural_audiovisuales = false;
  bool atractivo_cultural_foto = false;
  bool atractivo_cultural_platos = false;
  bool atractivo_cultural_celebracion = false;
  bool atractivo_cultural_compra = false;
  bool atractivo_cultural_convivencia = false;
  bool atractivo_cultural_medicina = false;
  bool atractivo_cultural_otro = false;
  String atractivo_cultural_otro_txt = obs_atractivo_cultural_otro_txt.text;
  String atractivo_cultural_observaciones =
      obs_atractivo_cultural_observaciones.text;
  int optionGroup = 0;
  late int selectedOption;

  void initState() {
    super.initState();
    optionGroup = 0;
    selectedOption = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      optionGroup = val;
      if (optionGroup == 1) {
        this.actividades_si = true;
        this.actividades_no = false;
        this.actividades_s_i = false;
        if (this.actividades_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup == 2) {
        this.actividades_si = false;
        this.actividades_no = true;
        this.actividades_s_i = false;
        if (this.actividades_no == true) {
          _showAlertDialogNo(context);
        }
      } else if (optionGroup == 3) {
        this.actividades_si = false;
        this.actividades_no = false;
        this.actividades_s_i = true;
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

  void _showAlertDialogObservaciones(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'AVISO',
                textAlign: TextAlign.center,
              ),
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('9. ACTIVIDADES QUE SE PRACTICAN (U)',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: HexColor("#A65005"),
              )),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              size: 35.0,
              color: HexColor("#A65005"),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 35.0,
                color: HexColor("#A65005"),
              ),
              onPressed: () {
                _sendData(context);
              },
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroup,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
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
                        groupValue: optionGroup,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
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
                        groupValue: optionGroup,
                        title: Text("S/I"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
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
                "ATRACTIVOS NATURALES",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_natural,
              onChanged: (value) {
                setState(() {
                  this.atractivo_natural = value!;
                  if (this.atractivo_natural == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "9.1.1 En el Agua (M)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_agua,
              onChanged: (value) {
                setState(() {
                  this.atractivo_agua = value!;
                  if (this.atractivo_agua == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "a. Buceo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_buceo,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_buceo = value!;
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
                        "b. Kayak de mar",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_kayak_mar,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_kayak_mar = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "c. Kayak lacustre",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_kayak_lacustre,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_kayak_lacustre = value!;
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
                        "d. Kayak de Río",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_kayak_rio,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_kayak_rio = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "e. Surf",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_surf,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_surf = value!;
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
                        "f. Kite surf",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_kite,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_kite = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "g. Rafting",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_raft,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_raft = value!;
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
                        "h. Snorkel",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_snorkel,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_snorkel = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "i. Turbing",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_tubing,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_tubing = value!;
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
                        "j. Regata",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_regata,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_regata = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "k. Paseo en panga",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_paseo_panga,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_paseo_panga = value!;
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
                        "i. Paseo en bote",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_paseo_bote,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_paseo_bote = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "m. Paseo en lancha",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_paseo_lancha,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_paseo_lancha = value!;
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
                        "n. Paseo en moto acuática",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_paseo_moto,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_paseo_moto = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "o. Parasailing",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_para,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_para = value!;
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
                        "p. Esquí acuático",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_esqui,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_esqui = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "q. Banana flotante",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_banana,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_banana = value!;
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
                        "r. Boya",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_boya,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_boya = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "s. Pesca deportiva",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_pesca,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_pesca = value!;
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
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_otro,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_otro = value!;
                          if (this.atractivo_agua_otro == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
                    ),
                  ),
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
                      enabled: this.atractivo_agua_otro &&
                          this.actividades_si &&
                          this.atractivo_natural &&
                          this.atractivo_agua,
                      controller: obs_atractivo_agua_otro_txt,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                            "Ingrese sus especificaciones en caso de ser necesarias",
                        labelText: ("Especificaciones para 'Otro'"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
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
                      enabled: this.actividades_si &&
                          this.atractivo_natural &&
                          this.atractivo_agua,
                      controller: obs_atractivo_agua_observaciones,
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
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "9.1.2 En el Aire (M)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_aire,
              onChanged: (value) {
                setState(() {
                  this.atractivo_aire = value!;
                  if (this.atractivo_aire == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "a. Alas Delta",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_aire_alas,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_aire_alas = value!;
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
                        "b. Canopy",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_aire_canopy,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_aire_canopy = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "c. Parapente",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_aire_parante,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_aire_parante = value!;
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
                        "d. Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_aire_otro,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_aire_otro = value!;
                          if (this.atractivo_aire_otro == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
                    ),
                  ),
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
                      enabled: this.atractivo_aire_otro &&
                          this.actividades_si &&
                          this.atractivo_natural &&
                          this.atractivo_aire,
                      controller: obs_atractivo_aire_otro_txt,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                            "Ingrese sus especificaciones en caso de ser necesarias",
                        labelText: ("Especificaciones para 'Otro'"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
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
                      enabled: this.actividades_si &&
                          this.atractivo_natural &&
                          this.atractivo_aire,
                      controller: obs_atractivo_aire_observaciones,
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
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "9.1.3 En Superficie Terrestre (M)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_terrestre,
              onChanged: (value) {
                setState(() {
                  this.atractivo_terrestre = value!;
                  if (this.atractivo_terrestre == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "a. Montañismo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_montanismo,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_montanismo = value!;
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
                        "b. Escalada",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_escalada,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_escalada = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "c. Senderismo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_senderismo,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_senderismo = value!;
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
                        "d. Cicloturismo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_ciclo,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_ciclo = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "e. Canyoning",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_cany,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_cany = value!;
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
                        "f. Exploración de cuevas",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_cuevas,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_cuevas = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "g. Actividades Recreativas",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.artractivo_terrestre_recreativas,
                      onChanged: (value) {
                        setState(() {
                          this.artractivo_terrestre_recreativas = value!;
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
                        "h. Cabalgata",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_cabalgata,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_cabalgata = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "i. Caminata",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_caminata,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_caminata = value!;
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
                        "j. Camping",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_camping,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_camping = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "k. Picnic",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_picnic,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_picnic = value!;
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
                        "i. Observación de flora y fauna",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_flora,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_flora = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "m. Observación de astros",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_astros,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_astros = value!;
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
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_otro,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_otro = value!;
                          if (this.atractivo_terrestre_otro == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
                    ),
                  ),
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
                      enabled: this.atractivo_terrestre_otro &&
                          this.actividades_si &&
                          this.atractivo_terrestre,
                      controller: obs_atractivo_terrestre_otro_txt,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                            "Ingrese sus especificaciones en caso de ser necesarias",
                        labelText: ("Especificaciones para 'Otro'"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
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
                      enabled: this.actividades_si &&
                          this.atractivo_terrestre & this.atractivo_natural,
                      controller: obs_atractivo_terrestre_observaciones,
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
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
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
                "ATRACTIVOS CULTURALES",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_cultural,
              onChanged: (value) {
                setState(() {
                  this.atractivo_cultural = value!;
                  if (this.atractivo_cultural == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "9.2.1 Tangibles e intangibles",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_cultural_t_i,
              onChanged: (value) {
                setState(() {
                  this.atractivo_cultural_t_i = value!;
                  if (this.atractivo_cultural_t_i == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "a. Recorridos guiados",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_recorrido_g,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_recorrido_g = value!;
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
                        "b. Recorridos autoguiados",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_recorrido_a,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_recorrido_a = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "c. Visita a talleres artísticos",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_talleres,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_talleres = value!;
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
                        "d. Participación en talleres artísticos",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_participacion_talleres,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_participacion_talleres =
                              value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "e. Visita a talleres artesanales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_talleres_a,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_talleres_a = value!;
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
                        "f. Participación en talleres artesanales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_participacion_artesanales,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_participacion_artesanales =
                              value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "g. Exposiciones temáticas permanentes, temporales y eventuales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_esposiciones,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_esposiciones = value!;
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
                        "h. Exhibición de piezas, muestras, obras, etc. originales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_exhibicion,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_exhibicion = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "i. Actividades vivenviales y/o lúdicas",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_vivencia,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_vivencia = value!;
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
                        "j. Presentaciones o representaciones en vivo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_presentaciones,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_presentaciones = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "k. Muestras audiovisuales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_audiovisuales,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_audiovisuales = value!;
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
                        "i. Fotografía",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_foto,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_foto = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "m. Degustación de platos tradicionales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_platos,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_platos = value!;
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
                        "n. Participación de la celebración",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_celebracion,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_celebracion = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "o. Compra de artesanías",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_compra,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_compra = value!;
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
                        "p. Convivencia",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_convivencia,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_convivencia = value!;
                        });
                      },
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
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "q. Medicina ancestral",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_medicina,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_medicina = value!;
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
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_otro,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_otro = value!;
                          if (this.atractivo_cultural_otro) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
                    ),
                  ),
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
                      enabled: this.atractivo_cultural_otro &&
                          this.actividades_si &&
                          this.atractivo_cultural &&
                          this.atractivo_cultural_t_i,
                      controller: obs_atractivo_cultural_otro_txt,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                            "Ingrese sus especificaciones en caso de ser necesarias",
                        labelText: ("Especificaciones para 'Otro'"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
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
                      enabled: this.actividades_si &&
                          this.atractivo_cultural & this.atractivo_cultural_t_i,
                      controller: obs_atractivo_cultural_observaciones,
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
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendData(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TurismTable10(
                si_estado_conservacion: widget.si_estado_conservacion,
                observaciones_atractivo_U: widget.observaciones_atractivo_U,
                atractivo_U: widget.atractivo_U,
                no_estado_conservacion: widget.no_estado_conservacion,
                s_i_estado_conservacion: widget.s_i_estado_conservacion,
                conservado_atractivo_U: widget.conservado_atractivo_U,
                alterado_atractivo_U: widget.alterado_atractivo_U,
                deterioro_atractivo_U: widget.deterioro_atractivo_U,
                deteriorado_atractivo_U: widget.deteriorado_atractivo_U,
                erosion_M_fac: widget.erosion_M_fac,
                humedad_M_fac: widget.humedad_M_fac,
                desastres_naturales_M_fac: widget.desastres_naturales_M_fac,
                flora_fauna_M_fac: widget.flora_fauna_M_fac,
                clima_M_fac: widget.clima_M_fac,
                actividades_agricolas_M_fac: widget
                    .actividades_agricolas_M_fac,
                actividades_forestales_M_fac: widget
                    .actividades_forestales_M_fac,
                actividades_minera_M_fac: widget.actividades_minera_M_fac,
                actividades_industriales_M_fac: widget
                    .actividades_industriales_M_fac,
                neglicencia_M_fac: widget.neglicencia_M_fac,
                huaqueria_M_fac: widget.huaqueria_M_fac,
                conflictos_tenencia_M_fac: widget.conflictos_tenencia_M_fac,
                condiciones_uso_M_fac: widget.condiciones_uso_M_fac,
                falta_mantenimiento_M_fac: widget.falta_mantenimiento_M_fac,
                contaminacion_ambiente_M_fac: widget
                    .contaminacion_ambiente_M_fac,
                generacion_residuos_M_fac: widget.generacion_residuos_M_fac,
                expansion_urbana_M_fac: widget.expansion_urbana_M_fac,
                conflicto_poliico_social_M_fac: widget
                    .conflicto_poliico_social_M_fac,
                desarrollo_industrial_M_fac: widget
                    .desarrollo_industrial_M_fac,
                vandalismo_M_fac: widget.vandalismo_M_fac,
                otro_M_fac: widget.otro_M_fac,
                especifique_M_fac: widget.especifique_M_fac,
                observaciones_M_fac: widget.observaciones_M_fac,
                entorno_U: widget.entorno_U,
                conservado_entorno_U: widget.conservado_entorno_U,
                alterado_entorno_U: widget.alterado_entorno_U,
                deterioro_entorno_U: widget.deterioro_entorno_U,
                deteriorado_entorno_U: widget.deteriorado_entorno_U,
                observaciones_entorno_U: widget.observaciones_entorno_U,
                erosion_M_ent: widget.erosion_M_ent,
                humedad_M_ent: widget.humedad_M_ent,
                desastres_naturales_M_ent: widget.desastres_naturales_M_ent,
                flora_fauna_M_ent: widget.flora_fauna_M_ent,
                clima_M_ent: widget.clima_M_ent,
                actividades_agricolas_M_ent: widget
                    .actividades_agricolas_M_ent,
                actividades_forestales_M_ent: widget
                    .actividades_forestales_M_ent,
                actividades_minera_M_ent: widget.actividades_minera_M_ent,
                actividades_industriales_M_ent: widget
                    .actividades_industriales_M_ent,
                neglicencia_M_ent: widget.neglicencia_M_ent,
                huaqueria_M_ent: widget.huaqueria_M_ent,
                conflictos_tenencia_M_ent: widget.conflictos_tenencia_M_ent,
                condiciones_uso_M_ent: widget.condiciones_uso_M_ent,
                falta_mantenimiento_M_ent: widget.falta_mantenimiento_M_ent,
                contaminacion_ambiente_M_ent: widget
                    .contaminacion_ambiente_M_ent,
                generacion_residuos_M_ent: widget.generacion_residuos_M_ent,
                expansion_urbana_M_ent: widget.expansion_urbana_M_ent,
                conflicto_poliico_social_M_ent: widget
                    .conflicto_poliico_social_M_ent,
                desarrollo_industrial_M_ent: widget
                    .desarrollo_industrial_M_ent,
                vandalismo_M_ent: widget.vandalismo_M_ent,
                otro_M_ent: widget.otro_M_ent,
                especifique_M_ent: widget.especifique_M_ent,
                observaciones_M_ent: widget.observaciones_M_ent,
                declaratoria_espacio: widget.declaratoria_espacio,
                declarante_espacio: widget.declarante_espacio,
                denominacion_espacio: widget.denominacion_espacio,
                fecha_declaracion_espacio: widget.fecha_declaracion_espacio,
                alcance_espacio: widget.alcance_espacio,
                observaciones_espacio: widget.observaciones_espacio,
                si_higiene_turistica: widget.si_higiene_turistica,
                no_higiene_turistica: widget.no_higiene_turistica,
                s_i_higiene_turistica: widget.s_i_higiene_turistica,
                servicio_basico: widget.servicio_basico,
                atractivo_servicio_basico: widget.atractivo_servicio_basico,
                agua_servicio: widget.agua_servicio,
                especifique_agua_atractivo: widget.especifique_agua_atractivo,
                agua_atractivo: widget.agua_atractivo,
                energia_atractivo: widget.energia_atractivo,
                energia_ciudad: widget.energia_ciudad,
                especifique_energia_atractivo: widget.especifique_energia_atractivo,
                saneamiento_atractivo: widget.saneamiento_atractivo,
                especifique_saneamiento_atractivo: widget.especifique_saneamiento_atractivo,
                desechos_atractivo: widget.desechos_atractivo,
                especifique_desechos_atractivo: widget.especifique_desechos_atractivo,
                onservaciones_atractivo_ciudad: widget.onservaciones_atractivo_ciudad,
                ciudad_poblado_servicio_basico: widget.ciudad_poblado_servicio_basico,
                agua_ciudad: widget.agua_ciudad,
                especifique_agua_ciudad: widget.especifique_agua_ciudad,
                especifique_energia_ciudad: widget.especifique_energia_ciudad,
                saneamiento_ciudad: widget.saneamiento_ciudad,
                especifique_saneamiento_ciudad: widget.especifique_saneamiento_ciudad,
                desechos_ciudad: widget.desechos_ciudad,
                especifique_desechos_ciudad: widget.especifique_desechos_ciudad,
                senialeticas_atarctivo: widget.senialeticas_atarctivo,
                areas_urbanas: widget.areas_urbanas,
                pic_a_n_madera: widget.pic_a_n_madera,
                pic_a_n_aluminio: widget.pic_a_n_aluminio,
                pic_a_n_otro: widget.pic_a_n_otro,
                especifique_pic_a_n: widget.especifique_pic_a_n,
                pic_a_n_bueno: widget.pic_a_n_bueno,
                pic_a_n_regular: widget.pic_a_n_regular,
                pic_a_n_malo: widget.pic_a_n_malo,
                pic_a_c_madera: widget.pic_a_c_madera,
                pic_a_c_aluminio: widget.pic_a_c_aluminio,
                pic_a_c_otro: widget.pic_a_c_otro,
                especifique_pic_a_c: widget.especifique_pic_a_c,
                pic_a_c_bueno: widget.pic_a_c_bueno,
                pic_a_c_regular: widget.pic_a_c_regular,
                pic_a_c_malo: widget.pic_a_c_malo,
                pic_a_t_madera: widget.pic_a_t_madera,
                pic_a_t_aluminio: widget.pic_a_t_aluminio,
                pic_a_t_otro: widget.pic_a_t_otro,
                especifique_pic_a_t: widget.especifique_pic_a_t,
                pic_a_t_bueno: widget.pic_a_t_bueno,
                pic_a_t_regular: widget.pic_a_t_regular,
                pic_a_t_malo: widget.pic_a_t_malo,
                pic_s_a_madera: widget.pic_s_a_madera,
                pic_s_a_aluminio: widget.pic_s_a_aluminio,
                pic_s_a_otro: widget.pic_s_a_otro,
                especifique_pic_s_a: widget.especifique_pic_s_a,
                pic_s_a_bueno: widget.pic_s_a_bueno,
                pic_s_a_regular: widget.pic_s_a_regular,
                pic_s_a_malo: widget.pic_s_a_malo,
                pic_r_madera: widget.pic_r_madera,
                pic_r_aluminio: widget.pic_r_aluminio,
                pic_r_otro: widget.pic_r_otro,
                especifique_pic_r: widget.especifique_pic_r,
                pic_r_bueno: widget.pic_r_bueno,
                pic_r_regular: widget.pic_r_regular,
                pic_r_malo: widget.pic_r_malo,
                totems_a_t_madera: widget.totems_a_t_madera,
                totems_a_t_aluminio: widget.totems_a_t_aluminio,
                totems_a_t_otro: widget.totems_a_t_otro,
                especifique_totems_a_t: widget.especifique_totems_a_t,
                totems_a_t_bueno: widget.totems_a_t_bueno,
                totems_a_t_regular: widget.totems_a_t_regular,
                totems_a_t_malo: widget.totems_a_t_malo,
                totems_s_madera: widget.totems_s_madera,
                totems_s_aluminio: widget.totems_s_aluminio,
                totems_s_otro: widget.totems_s_otro,
                especifique_totems_s: widget.especifique_totems_s,
                totems_s_bueno: widget.totems_s_bueno,
                totems_s_regular: widget.totems_s_regular,
                totems_s_malo: widget.totems_s_malo,
                totems_d_madera: widget.totems_d_madera,
                totems_d_aluminio: widget.totems_d_aluminio,
                totems_d_otro: widget.totems_d_otro,
                especifique_totems_d: widget.especifique_totems_d,
                totems_d_bueno: widget.totems_d_bueno,
                totems_d_regular: widget.totems_d_regular,
                totems_d_malo: widget.totems_d_malo,
                areas_naturales: widget.areas_naturales,
                pic_a_n_madera_N: widget.pic_a_n_madera_N,
                pic_a_n_aluminio_N: widget.pic_a_n_aluminio_N,
                pic_a_n_otro_N: widget.pic_a_n_otro_N,
                especifique_pic_a_n_N: widget.especifique_pic_a_n_N,
                pic_a_n_bueno_N: widget.pic_a_n_bueno_N,
                pic_a_n_regular_N: widget.pic_a_n_regular_N,
                pic_a_n_malo_N: widget.pic_a_n_malo_N,
                pic_a_c_bueno_N: widget.pic_a_c_bueno_N,
                pic_a_c_regular_N: widget.pic_a_c_regular_N,
                pic_a_c_malo_N: widget.pic_a_c_malo_N,
                pic_a_t_bueno_N: widget.pic_a_t_bueno_N,
                pic_a_t_regular_N: widget.pic_a_t_regular_N,
                pic_a_t_malo_N: widget.pic_a_t_malo_N,
                pic_a_t_madera_N: widget.pic_a_t_madera_N,
                pic_a_t_aluminio_N: widget.pic_a_t_aluminio_N,
                pic_a_t_otro_N: widget.pic_a_t_otro_N,
                especifique_pic_a_t_N: widget.especifique_pic_a_t_N,
                pic_s_a_bueno_N: widget.pic_s_a_bueno_N,
                pic_s_a_regular_N: widget.pic_s_a_regular_N,
                pic_s_a_malo_N: widget.pic_s_a_malo_N,
                pic_r_madera_N: widget.pic_r_madera_N,
                pic_r_alumunio_N: widget.pic_r_alumunio_N,
                pic_r_otro_N: widget.pic_r_otro_N,
                especifique_pic_r_N: widget.especifique_pic_r_N,
                pic_r_bueno_N: widget.pic_r_bueno_N,
                pic_r_regular_N: widget.pic_r_regular_N,
                pic_r_malo_N: widget.pic_r_malo_N,
                seniales_t_a_madera: widget.seniales_t_a_madera,
                seniales_t_a_aluminio: widget.seniales_t_a_aluminio,
                seniales_t_a_otro: widget.seniales_t_a_otro,
                especifique_seniales_t_a: widget.especifique_seniales_t_a,
                seniales_t_a_bueno: widget.seniales_t_a_bueno,
                seniales_t_a_regular: widget.seniales_t_a_regular,
                seniales_t_a_malo: widget.seniales_t_a_malo,
                paneles_d_a_madera: widget.paneles_d_a_madera,
                paneles_d_a_aluminio: widget.paneles_d_a_aluminio,
                paneles_d_a_otro: widget.paneles_d_a_otro,
                especifique_paneles_d_a: widget.especifique_paneles_d_a,
                paneles_d_a_bueno: widget.paneles_d_a_bueno,
                paneles_d_a_regular: widget.paneles_d_a_regular,
                paneles_d_a_malo: widget.paneles_d_a_malo,
                panel_i_a_madera: widget.panel_i_a_madera,
                panel_i_a_aluminio: widget.panel_i_a_aluminio,
                panel_i_a_otro: widget.panel_i_a_otro,
                especifique_panel_i_a: widget.especifique_panel_i_a,
                panel_i_a_bueno: widget.panel_i_a_bueno,
                panel_i_a_regular: widget.panel_i_a_regular,
                panel_i_a_malo: widget.panel_i_a_malo,
                panel_i_d_madera: widget.panel_i_d_madera,
                panel_i_d_aluminio: widget.panel_i_d_aluminio,
                panel_i_d_otro: widget.panel_i_d_otro,
                especifique_panel_i_d: widget.especifique_panel_i_d,
                panel_i_d_bueno: widget.panel_i_d_bueno,
                panel_i_d_regular: widget.panel_i_d_regular,
                panel_i_d_malo: widget.panel_i_d_malo,
                mesas_i_madera: widget.mesas_i_madera,
                mesas_i_aluminio: widget.mesas_i_aluminio,
                mesas_i_otro: widget.mesas_i_otro,
                especifique_mesas_i: widget.especifique_mesas_i,
                mesas_i_bueno: widget.mesas_i_bueno,
                mesas_i_regular: widget.mesas_i_regular,
                mesas_i_malo: widget.mesas_i_malo,
                totems_s_madera_N: widget.totems_s_madera_N,
                totems_s_aluminio_N: widget.totems_s_aluminio_N,
                totems_s_otro_N: widget.totems_s_otro_N,
                especifique_totems_s_N: widget.especifique_totems_s_N,
                totems_s_bueno_N: widget.totems_s_bueno_N,
                totems_s_regular_N: widget.totems_s_regular_N,
                totems_s_malo_N: widget.totems_s_malo_N,
                totem_d_madera: widget.totem_d_madera,
                totem_d_aluminio: widget.totem_d_aluminio,
                totem_d_otro: widget.totem_d_otro,
                especifique_totem_d: widget.especifique_totem_d,
                totem_d_bueno: widget.totem_d_bueno,
                totem_d_regular: widget.totem_d_regular,
                totem_d_malo: widget.totem_d_malo,
                letreros_informativos: widget.letreros_informativos,
                letrero_i_b_madera: widget.letrero_i_b_madera,
                letrero_i_b_aluminio: widget.letrero_i_b_aluminio,
                letrero_i_b_otro: widget.letrero_i_b_otro,
                especifique_letrero_i_b: widget.especifique_letrero_i_b,
                letrero_i_b_bueno: widget.letrero_i_b_bueno,
                letrero_i_b_regular: widget.letrero_i_b_regular,
                letrero_i_b_malo: widget.letrero_i_b_malo,
                normativos_c_madera: widget.normativos_c_madera,
                normativos_c_aluminio: widget.normativos_c_aluminio,
                normativos_c_otro: widget.normativos_c_otro,
                especifique_normativos_c: widget.especifique_normativos_c,
                normativos_c_bueno: widget.normativos_c_bueno,
                normativos_c_regular: widget.normativos_c_regular,
                normativos_c_malo: widget.normativos_c_malo,
                otros_senialetica: widget.otros_senialetica,
                otros_senialetica_texto: widget.otros_senialetica_texto,
                observaciones_senialetica: widget.observaciones_senialetica,
                senialetica_interna: widget.senialetica_interna,
                proteccion_elementos_madera: widget.proteccion_elementos_madera,
                proteccion_elementos_aluminio: widget.proteccion_elementos_aluminio,
                proteccion_elementos_otro: widget.proteccion_elementos_otro,
                especifique_proteccion: widget.especifique_proteccion,
                proteccion_bueno: widget.proteccion_bueno,
                proteccion_regular: widget.proteccion_regular,
                proteccion_malo: widget.proteccion_malo,
                salud_cercana: widget.salud_cercana,
                salud_atractivo: widget.salud_atractivo,
                atractivo_hospital: widget.atractivo_hospital,
                atractivo_centro: widget.atractivo_centro,
                atractivo_dispensario: widget.atractivo_dispensario,
                atractivo_botiquin: widget.atractivo_botiquin,
                atractivo_otros: widget.atractivo_otros,
                salud_ciudad: widget.salud_ciudad,
                ciudad_hospital: widget.ciudad_hospital,
                ciudad_centro: widget.ciudad_centro,
                ciudad_dispensario: widget.ciudad_dispensario,
                ciudad_botiquin: widget.ciudad_botiquin,
                ciudad_otros: widget.ciudad_otros,
                salud_observaciones: widget.salud_observaciones,
                seguridad_privada_detalle: widget.seguridad_privada_detalle,
                seguridad_policia_nacional_detalle: widget.seguridad_policia_nacional_detalle,
                seguridad_policia_municipal_detalle: widget.seguridad_policia_municipal_detalle,
                seguridad_otra_detalle: widget.seguridad_otra_detalle,
                seguridad_M: widget.seguridad_M,
                seguridad_privada: widget.seguridad_privada,
                seguridad_policia_nacional: widget.seguridad_policia_nacional,
                seguridad_policia_municipal: widget.seguridad_policia_municipal,
                seguridad_otra: widget.seguridad_otra,
                seguridad_observaciones: widget.seguridad_observaciones,
                num_atractivo_centro: widget.num_atractivo_centro,
                num_atractivo_hospital: widget.num_atractivo_hospital,
                num_atractivo_dispensario: widget.num_atractivo_dispensario,
                num_atractivo_botiquin: widget.num_atractivo_botiquin,
                num_atractivo_otros: widget.num_atractivo_otros,
                num_ciudad_hospital: widget.num_ciudad_hospital,
                num_ciudad_centro: widget.num_ciudad_centro,
                num_ciudad_dispensario: widget.num_ciudad_dispensario,
                num_ciudad_botiquin: widget.num_ciudad_botiquin,
                num_ciudad_otros: widget.num_ciudad_otros,
                servicio_publico: widget.servicio_publico,
                servicio_atractivo: widget.servicio_atractivo,
                servicio_ciudad: widget.servicio_ciudad,
                servicio_atractivo_telefonia: widget.servicio_atractivo_telefonia,
                servicio_atractivo_internet: widget.servicio_atractivo_internet,
                servicio_atractivo_t_fija: widget.servicio_atractivo_t_fija,
                servicio_atractivo_t_movil: widget.servicio_atractivo_t_movil,
                servicio_atractivo_t_satelital: widget.servicio_atractivo_t_satelital,
                servicio_atractivo_i_fibra: widget.servicio_atractivo_i_fibra,
                servicio_atractivo_i_satelite: widget.servicio_atractivo_i_satelite,
                servicio_atractivo_i_redes: widget.servicio_atractivo_i_redes,
                servicio_atractivo_i_telefonia: widget.servicio_atractivo_i_telefonia,
                servicio_ciudad_telefonia: widget.servicio_ciudad_telefonia,
                servicio_ciudad_internet: widget.servicio_ciudad_internet,
                servicio_ciudad_t_fija: widget.servicio_ciudad_t_fija,
                servicio_ciudad_t_movil: widget.servicio_ciudad_t_movil,
                servicio_ciudad_t_satelital: widget.servicio_ciudad_t_satelital,
                servicio_atractivo_i_linea: widget.servicio_atractivo_i_linea,
                servicio_ciudad_i_linea: widget.servicio_ciudad_i_linea,
                servicio_ciudad_i_fibra: widget.servicio_ciudad_i_fibra,
                servicio_ciudad_i_satelite: widget.servicio_ciudad_i_satelite,
                servicio_ciudad_i_redes: widget.servicio_ciudad_i_redes,
                servicio_ciudad_i_telefonia: widget.servicio_ciudad_i_telefonia,
                servicio_observaciones: widget.servicio_observaciones,
                servicio_radio: widget.servicio_radio,
                servicio_radio_exclusivo: widget.servicio_radio_exclusivo,
                servicio_radio_interna: widget.servicio_radio_interna,
                servicio_radio_emergencia: widget.servicio_radio_emergencia,
                servicio_radio_observaciones: widget.servicio_radio_observaciones,
                multiamenaza_M: widget.multiamenaza_M,
                multiamenaza_deslaves: widget.multiamenaza_deslaves,
                multiamenaza_sismos: widget.multiamenaza_sismos,
                multiamenaza_erupciones: widget.multiamenaza_erupciones,
                multiamenaza_incendios: widget.multiamenaza_incendios,
                multiamenaza_sequia: widget.multiamenaza_sequia,
                multiamenaza_inundaciones: widget.multiamenaza_inundaciones,
                multiamenaza_aguajes: widget.multiamenaza_aguajes,
                multiamenazas_tsunami: widget.multiamenazas_tsunami,
                multiamenaza_plan_contin: widget.multiamenaza_plan_contin,
                multiamenaza_institucion_doc: widget.multiamenaza_institucion_doc,
                multiamenaza_nombre_doc: widget.multiamenaza_nombre_doc,
                multiamenazas_observaciones: widget.multiamenazas_observaciones,
                currentDate: widget.currentDate,
                politicas_si: widget.politicas_si,
                politicas_no: widget.politicas_no,
                politicas_s_i: widget.politicas_s_i,
                politicas_gad_si: widget.politicas_gad_si,
                politicas_gad_no: widget.politicas_gad_no,
                politicas_planificacion_si: widget.politicas_planificacion_si,
                politicas_planificacion_no: widget.politicas_planificacion_no,
                politicas_planificacion_espec: widget.politicas_planificacion_espec,
                politicas_normativas_si: widget.politicas_normativas_si,
                politicas_normativas_no: widget.politicas_normativas_no,
                politicas_normativas_espec: widget.politicas_normativas_espec,
                politicas_ordenanzas_si: widget.politicas_ordenanzas_si,
                politicas_ordenanzas_no: widget.politicas_ordenanzas_no,
                politicas_ordenanzas_espec: widget.politicas_ordenanzas_espec,
                politicas_observaciones: widget.politicas_observaciones,
                actividades_si: actividades_si,
                actividades_no: actividades_no,
                actividades_s_i: actividades_s_i,
                atractivo_natural: atractivo_natural,
                atractivo_agua: atractivo_agua,
                atractivo_agua_buceo: atractivo_agua_buceo,
                atractivo_agua_kayak_mar: atractivo_agua_kayak_mar,
                atractivo_agua_kayak_lacustre: atractivo_agua_kayak_lacustre,
                atractivo_agua_kayak_rio: atractivo_agua_kayak_rio,
                atractivo_agua_surf: atractivo_agua_surf,
                atractivo_agua_kite: atractivo_agua_kite,
                atractivo_agua_raft: atractivo_agua_raft,
                atractivo_agua_snorkel: atractivo_agua_snorkel,
                atractivo_agua_tubing: atractivo_agua_tubing,
                atractivo_agua_regata: atractivo_agua_regata,
                atractivo_agua_paseo_panga: atractivo_agua_paseo_panga,
                atractivo_agua_paseo_bote: atractivo_agua_paseo_bote,
                atractivo_agua_paseo_lancha: atractivo_agua_paseo_lancha,
                atractivo_agua_paseo_moto: atractivo_agua_paseo_moto,
                atractivo_agua_para: atractivo_agua_para,
                atractivo_agua_esqui: atractivo_agua_esqui,
                atractivo_agua_banana: atractivo_agua_banana,
                atractivo_agua_boya: atractivo_agua_boya,
                atractivo_agua_pesca: atractivo_agua_pesca,
                atractivo_agua_otro: atractivo_agua_otro,
                atractivo_agua_otro_txt: atractivo_agua_otro_txt,
                atractivo_agua_observaciones: atractivo_agua_observaciones,
                atractivo_aire: atractivo_aire,
                atractivo_aire_alas: atractivo_aire_alas,
                atractivo_aire_canopy: atractivo_aire_canopy,
                atractivo_aire_parante: atractivo_aire_parante,
                atractivo_aire_otro: atractivo_aire_otro,
                atractivo_aire_otro_txt: atractivo_aire_otro_txt,
                atractivo_terrestre: atractivo_terrestre,
                atractivo_terrestre_montanismo: atractivo_terrestre_montanismo,
                atractivo_terrestre_escalada: atractivo_terrestre_escalada,
                atractivo_terrestre_senderismo: atractivo_terrestre_senderismo,
                atractivo_terrestre_ciclo: atractivo_terrestre_ciclo,
                atractivo_terrestre_cany: atractivo_terrestre_cany,
                atractivo_terrestre_cuevas: atractivo_terrestre_cuevas,
                artractivo_terrestre_recreativas:
                    artractivo_terrestre_recreativas,
                atractivo_terrestre_cabalgata: atractivo_terrestre_cabalgata,
                atractivo_terrestre_caminata: atractivo_terrestre_caminata,
                atractivo_terrestre_camping: atractivo_terrestre_camping,
                atractivo_terrestre_picnic: atractivo_terrestre_picnic,
                atractivo_terrestre_flora: atractivo_terrestre_flora,
                atractivo_terrestre_astros: atractivo_terrestre_astros,
                atractivo_terrestre_otro: atractivo_terrestre_otro,
                atractivo_terrestre_otro_txt: atractivo_terrestre_otro_txt,
                atractivo_terrestre_observaciones:
                    atractivo_terrestre_observaciones,
                atractivo_cultural: atractivo_cultural,
                atractivo_cultural_t_i: atractivo_cultural_t_i,
                atractivo_cultural_recorrido_g: atractivo_cultural_recorrido_g,
                atractivo_cultural_recorrido_a: atractivo_cultural_recorrido_a,
                atractivo_cultural_talleres: atractivo_cultural_talleres,
                atractivo_cultural_participacion_talleres:
                    atractivo_cultural_participacion_talleres,
                atractivo_cultural_talleres_a: atractivo_cultural_talleres_a,
                atractivo_cultural_participacion_artesanales:
                    atractivo_cultural_participacion_artesanales,
                atractivo_cultural_esposiciones:
                    atractivo_cultural_esposiciones,
                atractivo_cultural_exhibicion: atractivo_cultural_exhibicion,
                atractivo_cultural_vivencia: atractivo_cultural_vivencia,
                atractivo_cultural_presentaciones:
                    atractivo_cultural_presentaciones,
                atractivo_cultural_audiovisuales:
                    atractivo_cultural_audiovisuales,
                atractivo_cultural_foto: atractivo_cultural_foto,
                atractivo_cultural_platos: atractivo_cultural_platos,
                atractivo_cultural_celebracion: atractivo_cultural_celebracion,
                atractivo_cultural_compra: atractivo_cultural_compra,
                atractivo_cultural_convivencia: atractivo_cultural_convivencia,
                atractivo_cultural_medicina: atractivo_cultural_medicina,
                atractivo_cultural_otro: atractivo_cultural_otro,
                atractivo_cultural_otro_txt: atractivo_cultural_otro_txt,
                atractivo_cultural_observaciones:
                    atractivo_cultural_observaciones,
              especificar: widget.especificar,
              precipitacion: widget.precipitacion,
              precio: widget.precio,
              observaciones: widget.observaciones,
              transversal: widget.transversal,
              longitud: widget.longitud,
              altura: widget.altura,
              temperatura: widget.temperatura,
              meses_recomen: widget.meses_recomen,
              num_lugar: widget.num_lugar,
              calle_prin: widget.calle_prin,
              latitud: widget.latitud,
              distancia: widget.distancia,
              especifique_servicio: widget.especifique_servicio,
              puerto: widget.puerto,
              observaciones_servicio: widget.observaciones_servicio,
              coor_inicio: widget.coor_inicio,
              tipo_material: widget.tipo_material,
              tiempo_auto: widget.tiempo_auto,
              coor_fin: widget.coor_fin,
              observaciones_terrestre: widget.observaciones_terrestre,
              observaciones_accs: widget.observaciones_accs,
              estado: widget.estado,
              ciudad_cercana: widget.ciudad_cercana,
              distancia_ciudad: widget.distancia_ciudad,
              observaciones_acuatico: widget.observaciones_acuatico,
              observaciones_aereo: widget.observaciones_aereo,
              latitudTab4: widget.latitudTab4,
              longitudTab4: widget.longitudTab4,
              subtipo: widget.subtipo,
              tipo: widget.tipo,
              categoria: widget.categoria,
              numero_mesas_alimentos: widget.numero_mesas_alimentos,
              observaciones_agencias: widget.observaciones_agencias,
              estableci_registrados_agencias: widget.estableci_registrados_agencias,
              estableci_registrados_alimentos: widget.estableci_registrados_alimentos,
              numero_mesas: widget.numero_mesas,
              aventura: widget.aventura,
              estableci_registrados: widget.estableci_registrados,
              observaciones_guia: widget.observaciones_guia,
              observacionesTab5: widget.observacionesTab5,
              cultura: widget.cultura,
              local: widget.local,
              numero_plazas: widget.numero_plazas,
              nacional_especializado: widget.nacional_especializado,
              observaciones_alimentos: widget.observaciones_alimentos,
              numero_plazas_alimentos: widget.numero_plazas_alimentos,
              nacional: widget.nacional,
              seleccion2: widget.seleccion2,
              seleccion1: widget.seleccion1,
              seleccion: widget.seleccion,
              seleccion3: widget.seleccion3,
            )));
  }
}
