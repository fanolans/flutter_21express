import 'package:flutter/material.dart';
import 'package:flutter_21express/bloc/tracking/tracking_bloc.dart';
import 'package:flutter_21express/data/models/tracking_request_model.dart';
import 'package:flutter_21express/presentation/pages/tracking_results_page.dart';

import 'package:flutter_21express/presentation/widgets/image_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShipmentTrackingPage extends StatefulWidget {
  const ShipmentTrackingPage({super.key});

  @override
  State<ShipmentTrackingPage> createState() => _ShipmentTrackingPageState();
}

class _ShipmentTrackingPageState extends State<ShipmentTrackingPage> {
  TextEditingController? resiNoController = TextEditingController();

  @override
  void initState() {
    resiNoController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    resiNoController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '21 Express',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            const ImageWidget(),
            const SizedBox(height: 24),
            const Text(
              'Shipment Tracking',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: resiNoController,
              onChanged: (value) {
                value = resiNoController!.text;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Receipt code',
                hintText: 'input your receipt code here',
              ),
            ),
            const SizedBox(height: 16),
            BlocConsumer<TrackingBloc, TrackingState>(
              builder: (context, state) {
                if (state is TrackingLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width / 20,
                      MediaQuery.of(context).size.height / 14,
                    ),
                  ),
                  onPressed: () {
                    final requestModel =
                        TrackingRequestModel(resi_no: resiNoController!.text);
                    context
                        .read<TrackingBloc>()
                        .add(GetTrackingEvent(model: requestModel));
                  },
                  child: const Text('Track now'),
                );
              },
              listener: (context, state) {
                if (state is TrackingError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.red,
                    ),
                  );
                }

                if (state is TrackingLoaded) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Tracking Success'),
                      backgroundColor: Colors.green,
                    ),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const TrackingResultsPage();
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
