
module fp::bread {

    use sui::tx_context::{Self, TxContext};
    use std::string::{utf8, String};
    use sui::object::{Self, UID};
    use sui::package;
    use sui::display;

    struct Bread has key, store {
        uid: u64,
        name: String,
        price: u64,
        img_url: String,
    }


    
    
}

