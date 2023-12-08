part of vtnet_components;

class BaseToast extends StatelessWidget {
  const BaseToast(
      {required this.toastType,
      required this.message,
      required this.buttonTitle,
      super.key,
      this.onActionButtonClick,
      this.onTrailingClick,
      this.isHasAction = false,
      this.isHasTrailing = false});

  final ToastType toastType;
  final String message;
  final String buttonTitle;
  final Function()? onActionButtonClick;
  final Function()? onTrailingClick;
  final bool isHasAction;
  final bool isHasTrailing;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3d868b92),
              offset: Offset(0, 4),
              blurRadius: 16,
            ),
            BoxShadow(
              color: Color(0x286d7178),
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildLeading(),
            _buildMessage(context),
            _buildActionButton(context),
            _buildTrailing(),
          ],
        ));
  }

  Widget _buildTrailing() {
    if (isHasTrailing) {
      return GestureDetector(
        onTap: onTrailingClick,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          padding: const EdgeInsets.only(top: 3),
          child: SvgPicture.asset(
            Assets.lib.assets.icons.icClear.path,
            package: 'vtnet_components',
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Container _buildLeading() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
        color: getLeadingColor(toastType),
      ),
      margin: const EdgeInsets.only(right: 12),
      width: 48,
      padding: const EdgeInsets.all(14),
      child: getLeadingIcon(toastType),
    );
  }

  Color getLeadingColor(ToastType toastType) {
    switch (toastType) {
      case ToastType.success:
        return PackageColors.success30;
      case ToastType.error:
        return PackageColors.error30;
      case ToastType.warning:
        return PackageColors.warning30;
      case ToastType.info:
        return PackageColors.info30;
    }
  }

  Widget getLeadingIcon(ToastType toastType) {
    switch (toastType) {
      case ToastType.success:
        return SvgPicture.asset(
          Assets.lib.assets.icons.icCheck.path,
          package: packageName,
        );
      case ToastType.error:
        return SvgPicture.asset(
          Assets.lib.assets.icons.icWarning.path,
          package: packageName,
        );
      case ToastType.warning:
        return SvgPicture.asset(
          Assets.lib.assets.icons.icInfo.path,
          package: packageName,
        );
      case ToastType.info:
        return SvgPicture.asset(
          Assets.lib.assets.icons.icInfo.path,
          package: packageName,
        );
    }
  }

  Expanded _buildMessage(BuildContext context) {
    return Expanded(
        child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        message,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontWeight: FontWeight.w500),
      ),
    ));
  }

  Widget _buildActionButton(BuildContext context) {
    if (isHasAction) {
      return Container(
        margin: const EdgeInsets.only(right: 6, top: 8, bottom: 8),
        child: TextButton(
            onPressed: onActionButtonClick,
            child: Center(
              child: Text(
                buttonTitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: PackageColors.textInfo, fontWeight: FontWeight.w500),
              ),
            )),
      );
    }
    return Container();
  }
}
