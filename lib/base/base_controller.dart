import 'package:jtech_pomelo/base/base_notifier.dart';

/*
* 控制器基类
* @author JTech JH
* @Time 2022/3/30 17:32
*/
abstract class BaseController<V> extends ValueChangeNotifier<V> {
  BaseController(V v) : super(v);
}

/*
* 控制器基类-表单
* @author JTech JH
* @Time 2022/3/31 15:36
*/
abstract class BaseControllerMap<K, V> extends MapValueChangeNotifier<K, V> {
  BaseControllerMap(Map<K, V> v) : super(v);
}

/*
* 控制器基类-集合
* @author JTech JH
* @Time 2022/3/31 15:37
*/
abstract class BaseControllerList<V> extends ListValueChangeNotifier<V> {
  BaseControllerList(List<V> v) : super(v);
}
