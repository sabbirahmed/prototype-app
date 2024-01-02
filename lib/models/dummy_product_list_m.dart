class DummyProductListModel {
  late String productName;
  late String imageLink;
  late String price;
  late String discountPrice;
  late String brandLogo;
  late String discountPercent;
  late bool isDiscount;

  DummyProductListModel({
    required this.productName,
    required this.imageLink,
    required this.price,
    required this.discountPrice,
    required this.brandLogo,
    required this.discountPercent,
    required this.isDiscount,
  });
}

class DummyProductListModelHandler {
  DummyProductListModelHandler._internal();
  static final DummyProductListModelHandler _productListHandler = DummyProductListModelHandler._internal();
  factory DummyProductListModelHandler() => _productListHandler;

  List<DummyProductListModel> dummyProductList = [
    DummyProductListModel(
        productName: 'The Chore Shirt Jacket',
        imageLink:
            'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://www.ayebe.com/wp-content/uploads/2021/03/Artisan-Outfitters-Ltd-3.png',
        discountPercent: '',
        isDiscount: false),
    DummyProductListModel(
        productName: 'The Chore Shirt',
        imageLink:
            'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://cdn.dotpe.in/kiranaStatic/custom_website/7_12.png',
        discountPercent: '',
        isDiscount: false),
    DummyProductListModel(
        productName: 'The Chore Shirt Jacket',
        imageLink:
            'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://cdn.dotpe.in/kiranaStatic/custom_website/7_12.png',
        discountPercent: '',
        isDiscount: false),
    DummyProductListModel(
        productName: 'The Chore Shirt',
        imageLink:
            'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://www.onestopmart.shop/img/tags/product-category-medium-9.jpg',
        discountPercent: '',
        isDiscount: true),
    DummyProductListModel(
        productName: 'The Chore Shirt Jacket',
        imageLink:
            'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://www.onestopmart.shop/img/tags/product-category-medium-9.jpg',
        discountPercent: '',
        isDiscount: true),
    DummyProductListModel(
        productName: 'The Chore Shirt',
        imageLink:
            'https://images.unsplash.com/photo-1521577352947-9bb58764b69a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://www.ayebe.com/wp-content/uploads/2021/03/Artisan-Outfitters-Ltd-3.png',
        discountPercent: '',
        isDiscount: true),
    DummyProductListModel(
        productName: 'The Chore Shirt Jacket',
        imageLink:
            'https://images.unsplash.com/photo-1521577352947-9bb58764b69a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://www.ayebe.com/wp-content/uploads/2021/03/Artisan-Outfitters-Ltd-3.png',
        discountPercent: '',
        isDiscount: true),
    DummyProductListModel(
        productName: 'The Chore Shirt',
        imageLink:
            'https://images.unsplash.com/photo-1616683693504-3ea7e9ad6fec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://www.ayebe.com/wp-content/uploads/2021/03/Artisan-Outfitters-Ltd-3.png',
        discountPercent: '',
        isDiscount: true),
    DummyProductListModel(
        productName: 'The Chore Shirt Jacket',
        imageLink:
            'https://images.unsplash.com/photo-1616683693504-3ea7e9ad6fec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://www.ayebe.com/wp-content/uploads/2021/03/Artisan-Outfitters-Ltd-3.png',
        discountPercent: '',
        isDiscount: true),
    DummyProductListModel(
        productName: 'The Chore Shirt Jacket',
        imageLink:
            'https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://www.onestopmart.shop/img/tags/product-category-medium-9.jpg',
        discountPercent: '',
        isDiscount: true),
    DummyProductListModel(
        productName: 'The Chore Shirt ',
        imageLink:
            'https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80',
        price: '12,000৳',
        discountPrice: '',
        brandLogo: 'https://www.onestopmart.shop/img/tags/product-category-medium-9.jpg',
        discountPercent: '',
        isDiscount: true),
  ];
}
