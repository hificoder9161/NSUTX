import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';

class syncfusion extends StatelessWidget {
  double x;

  syncfusion(this.x);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: SfRadialGauge(
          enableLoadingAnimation: true,
          animationDuration: 3000,
          axes: <RadialAxis>[
            RadialAxis(
                centerX: 0.5,
                centerY: 0.7,
                minimum: 0,
                maximum: 100,
                showLabels: false,
                showTicks: false,
                radiusFactor: 0.7,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.14,
                  cornerStyle: CornerStyle.bothCurve,
                  color: Color.fromARGB(255, 222, 215, 215),
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
                pointers: <GaugePointer>[
                  RangePointer(
                    value: x,
                    width: 0.14,
                    color: (x > 75)
                        ? Colors.greenAccent[400]
                        : Colors.redAccent[400],
                    cornerStyle: CornerStyle.bothCurve,
                    sizeUnit: GaugeSizeUnit.factor,
                  )
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      positionFactor: 0.08,
                      angle: 90,
                      widget: Text(
                        x.toString() + '%',
                        style: TextStyle(fontSize: 12),
                      ))
                ]),
          ],
        ),
      ),
    );
  }
}
