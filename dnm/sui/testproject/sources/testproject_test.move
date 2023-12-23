// testproject_test.move

module testproject {
    import 0x1::test;

    public fun test_purchase() {
        let buyer: address = 0x1;
        let product_id: u64 = 1;
        let quantity: u64 = 2;

        let product: test.Product = test::get_product(product_id);
        let total_price: u64 = product.price * quantity;

        let purchase: test.Purchase = test.Purchase {
            product_id: product_id,
            quantity: quantity,
            total_price: total_price,
        };

        test::make_purchase(buyer, purchase);
    }
}
