

// import 'package:web4s/core/src_core.dart';

// abstract class CommentBlockController extends BaseCommentController {
//   // late final BaseGetBlockRepository repository;

//   // late final CommentRepository commentRepository;

//   //Chỉ sử dụng ở màn comment đề focus vào input
//   // late final CommentController commentController =
//   //     Get.find<CommentController>();

//   //Trong trường hợp block sử dụng ở màn productDetail cần gọi controller này để lấy idProduct;
//   // late final ProductDetailCtr productDetailCtr =
//   //     Get.find(tag: ProductDetailCtrTags().tags);

//   CommentBlockController({required super.commentType});

//   //Sử dụng để refresh lại block khi có comment mới đc thêm vào
//   // late final BaseRequestPage baseRequestPage;

//   // final CommentType commentType;

//   // final RxList<CommentExt> listCommentData = RxList.empty();

//   // ConfigModel? configModel;

//   // Rx<Pagination?> pagination = Rxn();

//   // CommentBlockController({required this.commentType});

//   //ẩn hiện button navigation sang màn comment
//   // RxBool showButton = false.obs;

//   // bool get isCommentBlock => commentType == CommentType.comment;

//   Future<void> goToCommentPage();

//   // Future<List<CommentData>> getChildComment(int? commentId);

//   // Future<void> reply(CommentData commentData);

//   // Future<CommentData?> liked(CommentData commentData);

//   // Future<void> updateBlock();
// }
