part of 'choice_date_page_view.dart';

class _TimeTile extends StatelessWidget {
  const _TimeTile({
    required this.title,
    required this.color,
    this.border,
  });

  final String title;
  final Color color;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 11,
              width: 11,
              decoration: BoxDecoration(
                color: color,
                border: border,
                borderRadius: kCircleBorderRadius,
              ),
            ),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class _TimeCard extends StatefulWidget {
  const _TimeCard({
    super.key,
    required this.onChanged,
    required this.isSelectedTime,
    this.data,
  });
  final bool isSelectedTime;
  final String? data;
  final ValueChanged<String> onChanged;

  @override
  State<_TimeCard> createState() => _TimeCardState();
}

class _TimeCardState extends State<_TimeCard> {
  Color _getCardColor() {
    return widget.isSelectedTime ? Colors.transparent : AppColors.green;
  }

  Color _getTitleColor() {
    return widget.isSelectedTime ? AppColors.green : AppColors.white;
  }

  BoxBorder? _getBorder() {
    return widget.isSelectedTime ? Border.all(color: AppColors.green) : null;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onChanged(widget.data ?? ''),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
        margin: const EdgeInsets.only(right: 10, bottom: 10),
        decoration: BoxDecoration(
          color: _getCardColor(),
          borderRadius: BorderRadius.circular(4),
          border: _getBorder(),
        ),
        child: Text(
          widget.data ?? '',
          style: TextStyle(
            fontSize: 14,
            color: _getTitleColor(),
          ),
        ),
      ),
    );
  }
}
