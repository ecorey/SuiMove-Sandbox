
module fp::salt {
    use sui::tx_context::{sender, TxContext};
    use std::string::{utf8, String};
    use sui::transfer::transfer;
    use sui::object::{Self, UID};

    
    
    struct Salt has key, store {
        id: UID,
        name: String,
    }

    
    fun init(ctx: &mut TxContext) {
        
        
    }

    /// Anyone can mint their `Salt`!
    public fun mint_salt(name: String, img_url: String, ctx: &mut TxContext): Salt {
        let id = object::new(ctx);
        Salt { id, name}
    }
}