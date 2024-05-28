// import 'package:ecommerce_project_chienbm/core/src_core.dart';
// import 'package:ecommerce_project_chienbm/main.dart';

// extension PaddingBlock on ConfigLayout? {
//   ///Công thức:
//   ///Kích thước chiều rộng của màn hình: size
//   ///Số lượng phần tử trên cùng 1 hàng: number
//   ///Padding giữa màn hình và ui: padding
//   ///Khoảng các giữa các phần tử: (Tính cả lề ): space / 2
//   /// => ( size / number) - padding - space
//   /// Đối với trường hợp của của slider sẽ cần max chiều rộng của hình
//   double itemWidth({bool isSlider = false}) {
//     return (widthScreen / numbItemOfLine()) -
//         AppDimens.spaceBetweenGridViewDefault -
//         AppDimens.defaultPadding;
//   }

//   double ratioItemOfBlock({
//     bool isHaveDescription = false,
//     bool isSlider = false,
//     double customHeight = 0,
//   }) =>
//       itemWidth(isSlider: isSlider) /
//       itemHeight(
//         isHaveDescription: isHaveDescription,
//         isSlider: isSlider,
//         customHeight: customHeight,
//       );
//   //Chiều cao của các items
//   //Trường hợp slider ta sẽ cố định chiều cao mặc định bằng chiều rộng chia cho tỉ lệ 16 / 9
//   //Trường hợp có thêm decription bổ sung ta cần truyền thêm một giá trị height cụ thể cho nó:
//   //Do sửa dụng gridview và scrollview sẽ cần giá trị này
//   double itemHeight({
//     bool isHaveDescription = false,
//     bool isSlider = false,
//     double customHeight = 0,
//   }) {
//     double baseHeight = imgHeight(isSlider: isSlider);
//     return isHaveDescription ? baseHeight + customHeight : baseHeight;
//   }

//   double imgHeight({bool isSlider = false}) =>
//       imgWidth(isSlider: isSlider) / ratioImage();

//   double imgWidth({bool isSlider = false}) => itemWidth(isSlider: isSlider);

//   double numbItemOfLine() => _formatValue((this?.numberOnLine));

//   //ratio của ảnh trong một item (giá trị này sẽ theo giá trị api trả về)
//   double ratioImage() =>
//       _formatValue(this?.imageWidth) / _formatValue(this?.imageHeight);

//   //Format lại giá trị trong trường hợp API trả về dữ liệu có thể rỗng dẫn đến biểu thức 0/0
//   double _formatValue(String? input) =>
//       input.toDoubleEtx() == 0 ? 1 : input.toDoubleEtx();
// }

// int numberOnLine({required List data, ConfigLayout? layout}) =>
//     data.length < (layout?.numberOnLine).toDoubleEtx()
//         ? data.length
//         : (layout?.numberOnLine).toDoubleEtx().toInt();
