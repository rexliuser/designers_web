// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DesignerPage]
class DesignerRoute extends PageRouteInfo<DesignerRouteArgs> {
  DesignerRoute({
    Key? key,
    required String designerId,
    List<PageRouteInfo>? children,
  }) : super(
         DesignerRoute.name,
         args: DesignerRouteArgs(key: key, designerId: designerId),
         rawPathParams: {'designerId': designerId},
         initialChildren: children,
       );

  static const String name = 'DesignerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DesignerRouteArgs>(
        orElse: () =>
            DesignerRouteArgs(designerId: pathParams.getString('designerId')),
      );
      return DesignerPage(key: args.key, designerId: args.designerId);
    },
  );
}

class DesignerRouteArgs {
  const DesignerRouteArgs({this.key, required this.designerId});

  final Key? key;

  final String designerId;

  @override
  String toString() {
    return 'DesignerRouteArgs{key: $key, designerId: $designerId}';
  }
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}
