import 'package:flutter/material.dart';
import '../../transport_request_repository/models/transport_request.dart';
import 'transport_request_list_item.dart';

class TransportRequestList extends StatelessWidget {
  final List<TransportRequest> requests;

  const TransportRequestList({Key? key, required this.requests})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (requests.isEmpty) {
      return const Center(child: Text('No hay solicitudes registradas.'));
    }

    return ListView.builder(
      itemCount: requests.length,
      itemBuilder: (context, index) {
        final request = requests[index];
        return TransportRequestListItem(request: request);
      },
    );
  }
}
