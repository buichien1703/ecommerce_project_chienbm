class ApiUrl {
  static const String urlBase = "https://chien01.web4s.com.vn/";
  //page_config_template
  static const String urlApiTemplateSetting = "api/mobile-template/page";

  //upload Image
  static const String urlUploadImages = "api/comment/upload-image";

  //login
  static const String urlSignIn = "api/member/login";
  static const String urlVerifyAccount = "api/member/verify-account";
  static const String urlResendVerifyCode = "api/member/resend-verify-code";
  static const String urlRegisterAccount = "api/member/register";
  static const String urlGetVerifyCode = "api/member/get-verify-code";

  //product
  static const String urlGetListProduct = "api/product/list";

  // product_detail
  static const String urlProductDetail = "api/product/detail";
  static const String urlAddWishList = "api/wishlist/add-product";
  static const String urlRemoveWishList = "api/wishlist/remove-product";

  //Cart
  static const String urlUpdateQuantityProduct =
      "api/cart/update-quantity-product";
  static const String urlAddToCart = "api/cart/add-product";
  static const String urlCartInfo = "api/cart/infomation";
  static const String urlRemoveProductFromCart = "api/cart/remove-product";

  //favourite
  static const String urlAddProductFavourite = "api/wishlist/add-product";
  static const String urlRemoveProductFavourite = "api/wishlist/remove-product";

  //comment
  static const String urlCommentReply = "api/comment/get-reply";
  static const String urlLikeComment = "api/comment/like";
  static const String urlInfomation = "api/member/infomation";
  static const String urlAddComment = "api/comment/add-comment";

  //rate
  static const String urlSendRating = "api/comment/add-rating";

  //category_detail
  static const String urlCategoryDetail = "api/category/detail";
  static const String urlPaymentMethod = "api/payment/list";
  static const String urlGetListCoupon = "api/promotion/list-coupon";

  //confirmOrder
  static const String urlGetListAddressPayment = "api/member/address/list";
  static const String urlConfirmOrderInfomation =
      "api/order/confirm-infomation";
  static const String urlChooseAddress = "api/order/choose-address";
  static const String urlOrderCreate = "api/order/create";
  static const String urlOrderCheckoutOrder = "api/order/checkout";

  //orderdetail
  static const String urlOrderDetail = "api/member/order-infomation";
  static const String urlCancelRequest = "api/member/order-cancel";

  //filter
  static const String urlFilter = "api/mobile-template/advanced-search";

  //address
  static const String editAddress = "api/member/address/save";
  static const String setAddressDefault = "api/member/address/set-default";
  static const String urlGetCity = "api/city";
  static const String urlGetDistrict = "api/district";
  static const String urlGetWard = "api/ward";

  //coupon
  static const String checkCoupon = "api/promotion/check-coupon";

  //profile
  static const String getInfomationUser = "api/member/infomation";
  static const String changeImportantInfo = "api/member/change-important-info";
  static const String updateAvatar = "api/member/update-avatar";
  static const String logout = "api/member/logout";
  static const String deleteAccount = "api/member/delete-account";
  static const String updatePassword = "api/member/change-password";
  static const String forgotPassword = "api/member/forgot-password";
  static const String verifyForgotPassword =
      "api/member/verify-forgot-password";

  //daily
  static const String getListDailyCheckin = "api/customer/point/attendance";
  static const String checkin = "api/customer/point/attendance-tick";

  //orderUser
  static const String getListOrderUser = "api/member/list-orders";

  //shipping
  static const String getShippingMethod = "api/shipping/list";
  static const String setShippingMethod = "api/shipping/select";

  //affiliate
  static const String getListRankAffiliate = "api/member/affiliate/list-rank";
  static const String getListBank = "api/member/affiliate/list-bank";
  static const String getSurvey = "api/member/affiliate/list-survey";
  static const String signupAffiliate = "api/member/affiliate/register";

  //point
  static const String getPoint = "api/customer/point/infomation";
  static const String getHistoryTransaction =
      "api/customer/point/history-using";
  static const String buyPoint = "api/customer/point/buy";
  static const String givePoint = "api/customer/point/give";

  //chart
  static const String getChartProfit = "api/member/affiliate/chart-profit";

  static const String getStatistical = "api/member/affiliate/statistical";

  static const String monthStatistical =
      "api/member/affiliate/month-statistical";
}
