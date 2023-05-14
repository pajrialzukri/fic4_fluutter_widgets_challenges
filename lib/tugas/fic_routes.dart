import 'package:flutter/widgets.dart';
import 'package:project_flutter_pertama/tugas/basic_form/fic_dialog_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_form/fic_form_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_aspectratio_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_center_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_column_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_expanded_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_gridview_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_listview_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_padding_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_row_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_sizedbox_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_stack_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic_wrap_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic_button_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic_circle_avatar_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic_container_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic_icon_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic_image_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic_scaffold_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic_text_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_home_page.dart';
import 'package:project_flutter_pertama/tugas/fic_menu_page.dart';

import 'fic_navigation/fic_bottom_navbar.dart';
import 'fic_navigation/fic_drawer_widget.dart';
import 'fic_navigation/fic_sliver_widget.dart';
import 'fic_navigation/fic_tabbar_widget.dart';

List<dynamic> routesBasicWidget = [
  [
    '/button',
    'Button',
  ],
  [
    '/icon',
    'Icon',
  ],
  [
    '/text',
    'Text',
  ],
  [
    '/image',
    'Image',
  ],
  [
    '/scaffold',
    'Scaffold',
  ],
  [
    '/container',
    'Container',
  ],
  [
    '/circleavatar',
    'CircleAvatar',
  ],
];

List<dynamic> routesBasicLayout = [
  [
    '/aspectratio',
    'AspectRatio',
  ],
  [
    '/row',
    'Row',
  ],
  [
    '/column',
    'Column',
  ],
  [
    '/stack',
    'Stack',
  ],
  [
    '/expanded',
    'Expanded',
  ],
  [
    '/wrap',
    'Wrap',
  ],
  [
    '/gridview',
    'GridView',
  ],
  [
    '/listview',
    'ListView',
  ],
  [
    '/padding',
    'Padding',
  ],
  [
    '/center',
    'Center',
  ],
  [
    '/sizebox',
    'SizedBox',
  ],
];

List<dynamic> routesBasicForm = [
  [
    '/form',
    'Form',
  ],
  [
    '/dialog',
    'Dialog',
  ],
];

List<dynamic> routesNavigation = [
  [
    '/tabbar',
    'Tabbar',
  ],
  [
    '/drawer',
    'Drawer',
  ],
  [
    '/sliver',
    'Sliver',
  ],
  [
    '/bottomnavigation',
    'Bottom Navigation',
  ],
];

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const HomePage(),
  '/menu': (context) => MenuPage(name: ''),
  //basic widget
  '/button': (context) => const FICButtonWidget(),
  '/icon': (context) => const FICIconWidget(),
  '/text': (context) => const FICTextWidget(),
  '/image': (context) => const FICImageWidget(),
  '/scaffold': (context) => const FICScaffoldWidget(),
  '/container': (context) => const FICContainerWidget(),
  '/circleavatar': (context) => FICCircleAvatarWidget(),
  //layout
  '/aspectratio': (context) => const FICAspectRatioWidget(),
  '/row': (context) => const FICRowWidget(),
  '/column': (context) => const FICColumnWidget(),
  '/stack': (context) => const FICStackWidget(),
  '/expanded': (context) => const FICExpandedWidget(),
  '/wrap': (context) => FICWrapWidget(),
  '/gridview': (context) => const FICGridViewWidget(),
  '/listview': (context) => FICListViewWidget(),
  '/padding': (context) => const FICPaddingWidget(),
  '/center': (context) => const FICCenterWidget(),
  '/sizebox': (context) => const FICSizedBoxWidget(),
  //form
  '/form': (context) => const FICFormWidget(),
  '/dialog': (context) => const FICDialogWiget(),
  //navigation
  '/tabbar': (context) => const FICTabbarWidget(),
  '/drawer': (context) => const FICDrawerWidget(),
  '/sliver': (context) => const FICSliverWidget(),
  '/bottomnavigation': (context) => const FICBottomNavbarWidget(),
};
