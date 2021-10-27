import 'package:dtumaps/data/models/marker/marker.dart';
import "package:dtumaps/foundation/extension/async_snapshot.dart";
import 'package:dtumaps/screens/general/loading_state_view_model.dart';
import 'package:dtumaps/screens/markers/markers_view_model.dart';
import 'package:dtumaps/widgets/loading/container_with_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// TODO: This screen is just for test API, remove then.
class MarkersScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final markersViewModel = context.read(markersViewModelProvider);

    final markers =
        useProvider(markersViewModelProvider.select((value) => value.markers));

    final snapshot = useFuture(
      useMemoized(() {
        return context.read(loadingStateProvider).whileLoading(
            () async => await markersViewModel.fetchMarkers(id: "1"));
      }, [markers?.toString()]),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Markers"),
        centerTitle: true,
      ),
      body: ContainerWithLoading(
        child: snapshot.isWaiting || markers == null
            ? SizedBox()
            // Success va Failure implement Result

            // Result , Success extend Result va Failure
            // 1 class 2 factory, Result.map(success: (){Ui thanh cong}, failure: (){bao loi})
            // package freezed
            : markers.when(
                success: (data) {
                  final markers = data.markers;
                  return Column(
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                            markersViewModel.fetchMarkers(id: "1");
                          },
                          child: Text("Fetch marker_data")),
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                            itemCount: markers!.length,
                            itemBuilder: (_, index) {
                              return _markerListTile(markers[index]);
                            },
                          ),
                        ),
                      )
                    ],
                  );
                },
                failure: (e) => Center(
                  child: Text(
                    "ERROR :",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
      ),
    );
  }

  Widget _markerListTile(Marker marker) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.location_city),
        title: Text(
          "${marker.name}",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Column(
          children: [
            Text("lat:${marker.location!.x}"),
            SizedBox(
              height: 10,
            ),
            Text("long:${marker.location!.y}"),
          ],
        ),
      ),
    );
  }
}
