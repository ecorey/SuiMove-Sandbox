
module fp::flour {
    use sui::tx_context::{sender, TxContext};
    use std::string::{utf8, String};
    use sui::transfer::transfer;
    use sui::object::{Self, UID};

    
    
    struct Flour has key, store {
        id: UID,
        name: String,
    }

    
    fun init(ctx: &mut TxContext) {
        
        
    }

    /// Anyone can mint their `Salt`!
    public fun mint_flour(name: String, img_url: String, ctx: &mut TxContext): Flour {
        let id = object::new(ctx);
        Flour { id, name}
    }
}