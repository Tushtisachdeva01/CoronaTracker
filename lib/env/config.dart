import 'dart:convert';

import 'package:http/http.dart' as http;

class Config {
  List<dynamic> data=[];
   final BASE_URL = "https://api.covid19india.org/data.json";
  Future<void> getData() async{
    try{
      var response=await http.get(BASE_URL);
      final result=jsonDecode(response.body);
      data=result['statewise'];
      
    }catch(err){
      throw err;
    }
  }
  Future<Map<String,dynamic>> getStateData(String code) async{
    try{
      // print(code);
      int deceased=0;
      int confirmed=0;
      int recovered=0;
      int active=0;
      String lastUpdated='';
      bool dataFound=false;
      Map<String,dynamic> returnData;
      await getData();
      data.forEach((stateData){
        if(stateData['statecode']==code){
          // print("found");
          dataFound=true;
          active=int.parse(stateData['active']);
          confirmed=int.parse(stateData['confirmed'])  ;
          deceased=int.parse(stateData['deaths']);
          recovered=int.parse(stateData['recovered']);
          lastUpdated=stateData['lastupdatedtime'].toString().substring(0,11);
          return;
        }
      });
      if(dataFound){
            returnData={
            'active':active,
            'confirmed':confirmed,
            'recovered':recovered,
            'deceased':deceased,
            'date':lastUpdated
          };
          return returnData;
      }
      else{
        throw 'No Data Found';
      }
      
   
    }catch(err){
      throw err;
    }
  }
}
