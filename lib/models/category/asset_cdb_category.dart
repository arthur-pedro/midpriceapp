import 'package:flutter/material.dart';
import 'package:midprice/models/category/asset_category.dart';
import 'package:midprice/models/category/asset_category_id.dart';
import 'package:midprice/models/category/asset_category_name.dart';
import 'package:midprice/models/category/asset_category_short_name.dart';

class AssetCdbCategory implements AssetCategory {
  @override
  bool operator ==(Object other) =>
      other is AssetCdbCategory && other.name == name;

  @override
  int get hashCode => name.hashCode;

  @override
  AssetCategoryId id = AssetCategoryId.cdb;

  @override
  AssetCategoryShortName shortName = AssetCategoryShortName.cdbShortName;

  @override
  AssetCategoryName name = AssetCategoryName.cdbName;

  @override
  Icon icon = const Icon(
    Icons.account_balance_outlined,
    size: 16,
    color: Colors.amber,
  );
}
