import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:ecommerce_project_chienbm/core/src_core.dart';
import 'package:flutter/material.dart';

///T là type của data
///R là type của giá trị trong stickyHeader;
class BuildStickyHeader<T, R, K extends BaseRefreshGetxController>
    extends StatelessWidget {
  const BuildStickyHeader({
    super.key,
    required this.sitckyBuilder,
    required this.listDataOfSticky,
    this.controller,
    required this.stickyValue,
    required this.itemBuilder,
  });

  final Widget Function(R, SliverStickyHeaderState) sitckyBuilder;

  final List<T> Function(R) listDataOfSticky;

  final R stickyValue;

  final Widget Function(T) itemBuilder;

  final K? controller;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader.builder(
      builder: (context, state) => sitckyBuilder(
        stickyValue,
        state,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => itemBuilder(listDataOfSticky(stickyValue)[i]),
          childCount: listDataOfSticky(stickyValue).length,
        ),
      ),
    );
  }
}
