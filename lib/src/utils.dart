extension TypeHelperExtension<X extends Object> on X {
  Y? as<Y extends X>() => this is Y ? this as Y : null;
}
