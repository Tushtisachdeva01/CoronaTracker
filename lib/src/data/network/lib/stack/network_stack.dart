import 'package:covidtracker/src/data/network/lib/stack/network_stack_response.dart';

abstract class INetworkStack {
  Future<NetworkStackResponse> getResult();
}
