
import 'package:angular2/angular2.dart';
import 'package:angular2/bootstrap.dart' show AngularEntrypoint, bootstrap;

@AngularEntrypoint()
main() {
  bootstrap(NgModelRepro);
}

@Component(
    selector: 'ng-model-repro',
    template: '''
    <select [(ngModel)]="filter">
      <option>a</option>
      <option>b</option>
      <option>c</option>
    </select>
    ''',
    directives: const [NgModel])
class NgModelRepro {
  String filter = 'b';
}
