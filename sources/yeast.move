
module fp::yeast {
    use sui::tx_context::{sender, TxContext};
    use std::string::{utf8, String};
    use sui::transfer::transfer;
    use sui::object::{Self, UID};

    
    
    struct Yeast has key, store {
        id: UID,
        name: String,
    }

    
    fun init(ctx: &mut TxContext) {
        
        
    }

    /// Anyone can mint their `Flour`!
    public fun mint_yeast(name: String, img_url: String, ctx: &mut TxContext): Yeast {
        let id = object::new(ctx);
        Yeast { id, name}
    }
}