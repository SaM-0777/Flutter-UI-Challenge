import 'package:flutter/material.dart';
import 'package:ui_challenge/config/theme/colors.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final void Function(bool value) onChanged;

  const CustomSwitch({super.key, required this.value, required this.onChanged});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation? circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 60)
    );

    circleAnimation = AlignmentTween(
      begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
      end: widget.value ? Alignment.centerLeft : Alignment.centerRight,
    ).animate(CurvedAnimation(parent: _animationController!, curve: Curves.linear));
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value  == false
              ? widget.onChanged(true)
              : widget.onChanged(false);
          },
          child: Container(
            width: 45,
            height: 22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                alignment: widget.value 
                  ? (
                      (Directionality.of(context) == TextDirection.rtl)
                        ? Alignment.centerLeft
                        : Alignment.centerRight
                    )
                    : (
                        (Directionality.of(context) == TextDirection.rtl)
                          ? Alignment.centerLeft
                          : Alignment.centerRight
                      ),
                child: Container(
                  width: 18.0,
                  height: 18.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, color: white
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
