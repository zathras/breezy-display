/// Little program to generate minimal_configuration.data
import 'dart:math';

main() {
  print('next-url:minimal_configuration.data');
  print('meter-data:on');
  for (double theta = 0; theta < 2*pi; theta += 2 * pi / 200) {
    int ti = (theta*1000).round();
    double y = tan(theta);
    if (y >= 7.0 || y <= -7.0) {
      print('tangent,1,$ti,,-1');
    } else {
      print('tangent,1,$ti,$y,-1');
    }
  }
}
