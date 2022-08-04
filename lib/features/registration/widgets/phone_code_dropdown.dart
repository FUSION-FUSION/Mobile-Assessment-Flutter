import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';

class PhonecodeDropdown extends StatelessWidget {
  final String label;
  final String defaultItem;
  final List<String> items;
  const PhonecodeDropdown(
      {Key? key,
      required this.label,
      this.defaultItem = '+234',
      this.items = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        const YMargin(ksmallspace),
        Stack(
          children: [
            Container(
                width: context.width,
                height: 44,
                padding: const EdgeInsets.only(right: kmediumspace),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ksmallradius),
                  color: AppColor.fieldwhite,
                ),
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.only(left: 102),
                  child: TextFormField(
                    decoration: const InputDecoration.collapsed(hintText: ''),
                  ),
                )),
            _Dropdown(items: items),
          ],
        ),
      ],
    );
  }
}

class _Dropdown extends StatefulWidget {
  final String defaultItem;
  final List<String> items;
  const _Dropdown({Key? key, this.defaultItem = '+234', this.items = const []})
      : super(key: key);

  @override
  State<_Dropdown> createState() => __DropdownState();
}

class __DropdownState extends State<_Dropdown> {
  OverlayEntry? _backgroundEntry;
  OverlayEntry? _itemsEntry;
  final _layerLink = LayerLink();
  late String _selectedItem = widget.defaultItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showphonecodelist();
      },
      child: CompositedTransformTarget(
        link: _layerLink,
        child: Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              color: AppColor.bottomlinear,
              borderRadius: BorderRadius.circular(ksmallradius)),
          child: Container(
            height: 43,
            width: 102,
            padding: const EdgeInsets.symmetric(horizontal: ksmallspace) +
                const EdgeInsets.only(left: ksmallspace),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ksmallradius),
              color: AppColor.fieldwhite,
            ),
            alignment: Alignment.center,
            child: Row(
              children: [
                Text(_selectedItem),
                const Spacer(),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showphonecodelist() {
    if (_backgroundEntry?.mounted ?? false) {
      _backgroundEntry?.remove();
      return;
    }
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    final overlayState = Overlay.of(context);

    _backgroundEntry = OverlayEntry(builder: ((context) {
      return GestureDetector(
          onTap: () {
            _backgroundEntry?.remove();
            _itemsEntry?.remove();
          },
          child: const Material(
            color: Colors.transparent,
          ));
    }));
    overlayState?.insert(_backgroundEntry!);
    _itemsEntry = OverlayEntry(builder: (context) {
      return Positioned(
          width: size.width,
          left: kspace,
          child: CompositedTransformFollower(
            link: _layerLink,
            showWhenUnlinked: false,
            offset: Offset(0, size.height + ksmallspace),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(ksmallradius),
              child: Material(
                color: AppColor.fieldwhite,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: ksmallspace),
                  constraints: BoxConstraints(
                    minHeight: size.height - kmediumspace,
                    maxHeight: context.height * 0.25,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.fieldwhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, -2),
                        blurRadius: 8,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 2),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: ScrollConfiguration(
                    behavior: const ScrollBehavior(),
                    child: ListView.separated(
                      padding:
                          const EdgeInsets.symmetric(horizontal: ksmallspace),
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: widget.items.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedItem = widget.items[index];
                              });
                              _backgroundEntry?.remove();
                              _itemsEntry?.remove();
                            },
                            child: Text(widget.items[index]));
                      }),
                    ),
                  ),
                ),
              ),
            ),
          ));
    });

    overlayState?.insert(_itemsEntry!);
  }
}
