import 'package:flutter/material.dart';
import 'package:flutter_21express/bloc/tracking/tracking_bloc.dart';
import 'package:flutter_21express/presentation/widgets/result_list_widget.dart';
import 'package:flutter_21express/presentation/widgets/eror_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackingResultsPage extends StatefulWidget {
  const TrackingResultsPage({super.key});

  @override
  State<TrackingResultsPage> createState() => _TrackingResultsPageState();
}

class _TrackingResultsPageState extends State<TrackingResultsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tracking Results'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: BlocBuilder<TrackingBloc, TrackingState>(
            builder: (context, state) {
              if (state is TrackingLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is TrackingLoaded) {
                return ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var results = state.data[index];
                    return ResultListWidget(
                      result: results,
                    );
                  },
                  itemCount: state.data.length,
                );
              }
              return const Center(
                child: ErorWidget(),
              );
            },
          ),
        ),
      ),
    );
  }
}
