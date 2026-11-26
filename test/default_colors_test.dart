import 'package:flutter_test/flutter_test.dart';
import 'package:map4d_map/map4d_map.dart';

void main() {
  test('circle serializes its default fill and stroke colors', () {
    const circle = MFCircle(circleId: MFCircleId('circle'));

    expect(circle.toJson(), containsPair('fillColor', 0x00000000));
    expect(circle.toJson(), containsPair('strokeColor', 0xFF000000));
  });

  test('polygon serializes its default fill and stroke colors', () {
    const polygon = MFPolygon(polygonId: MFPolygonId('polygon'));

    expect(polygon.toJson(), containsPair('fillColor', 0xFF000000));
    expect(polygon.toJson(), containsPair('strokeColor', 0xFF000000));
  });

  test('polyline serializes its default color', () {
    const polyline = MFPolyline(polylineId: MFPolylineId('polyline'));

    expect(polyline.toJson(), containsPair('color', 0xFF000000));
  });

  test('POI serializes its default title color', () {
    const poi = MFPOI(poiId: MFPOIId('poi'));

    expect(poi.toJson(), containsPair('titleColor', 0xFF2196F3));
  });

  test('directions renderer serializes its default stroke colors', () {
    const renderer = MFDirectionsRenderer(
      rendererId: MFDirectionsRendererId('directions'),
    );

    expect(renderer.toJson(), containsPair('activeStrokeColor', 0xFF2196F3));
    expect(renderer.toJson(), containsPair('inactiveStrokeColor', 0xFF607D8B));
  });
}
