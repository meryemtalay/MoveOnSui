// test.move

module test {

    public struct Product {
        id: u64;
        name: vector<u8>;
        price: u64;
    }


    public struct Purchase {
        product_id: u64;
        quantity: u64;
        total_price: u64;
    }


    public fun get_product(id: u64): Product {

        Product {
            id: id,
            name: b"Sample Product",
            price: 500,
        }
    }


    public fun make_purchase(account: address, purchase: Purchase) {

        // TODO: Islem detaylari buraya eklenecek
    }
}
