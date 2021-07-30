import 'package:http/http.dart' as http;
import 'package:paquete/classes/reqresp_respuesta.dart';

import 'classes 2/res_col.dart';
//import 'classes/reqresp_respuesta.dart';

void getReqResp_service(){

  //leer data de una api con dart
   
  final url = Uri.parse('https://reqres.in/api/users?page=2') ;
  http.get(url).then((res){

    //final resReqRes =  ReqResRespuesta.fromJson(res.body);

    //print('page: ${resReqRes.page}');
    //print('per_page: ${resReqRes.perPage}');
    //print('id 3er elemento: ${resReqRes.data[2].id}');

    //final body = jsonDecode(res.body);
    //print(body);
    //print('page: ${body['page']}');
    //print('per_page: ${body['per_page']}');
    //print('id 3er elemento: ${body['data'][2]['id']}');
    

  });

}



//crear tarea

void getColombia_service(){

  final url2 = Uri.parse('https://restcountries.eu/rest/v2/alpha/col');
  http.get(url2).then((resp) {

    final respuesta2 = ResColombia.fromJson(resp.body);

    print('==========================================');
    print('pais: ${respuesta2.name}');
    print('poblacion: ${respuesta2.population}');
    print('fronteras:');
    respuesta2.borders.forEach((b) => print('     $b'));
    print('lenguaje: ${respuesta2.languages[0].nativeName}');
    print('latitud: ${respuesta2.latlng[0]}');
    print('longitud: ${respuesta2.latlng[1]}');
    print('moneda: ${respuesta2.currencies[0].name}');
    print('bandera: ${respuesta2.flag}');
    print('==========================================');

  }).catchError((error) => print(error));

}