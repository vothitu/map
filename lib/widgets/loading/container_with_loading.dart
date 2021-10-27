import 'package:dtumaps/screens/general/loading_state_view_model.dart';
import 'package:dtumaps/widgets/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContainerWithLoading extends HookWidget {
  const ContainerWithLoading({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final state = useProvider(loadingStateProvider);
    return Stack(
      children: [
        child,
        if (state.isLoading) const Loading(),
      ],
    );
  }
}
