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
    required this.isAvailable,
    required this.onChanged,
    required this.isSelectedTime,
    this.data,
  });
  final bool isAvailable;
  final bool isSelectedTime;
  final DoctorTimeData? data;
  final ValueChanged<DateTime> onChanged;

  @override
  State<_TimeCard> createState() => _TimeCardState();
}

class _TimeCardState extends State<_TimeCard> {
  Color _getCardColor() {
    return widget.isAvailable
        ? widget.isSelectedTime
            ? Colors.transparent
            : AppColors.green
        : AppColors.red;
  }

  Color _getTitleColor() {
    return widget.isAvailable
        ? widget.isSelectedTime
            ? AppColors.green
            : AppColors.white
        : AppColors.white;
  }

  BoxBorder? _getBorder() {
    return widget.isAvailable
        ? widget.isSelectedTime
            ? Border.all(color: AppColors.green)
            : null
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onChanged(widget.data?.dateTime ?? DateTime.now()),
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
          DateFormat('HH:mm').format(widget.data?.dateTime ?? DateTime.now()),
          style: TextStyle(
            fontSize: 14,
            color: _getTitleColor(),
          ),
        ),
      ),
    );
  }
}
