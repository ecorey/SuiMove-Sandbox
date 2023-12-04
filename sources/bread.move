module fp::bread {
    use sui::tx_context::{TxContext};
    use sui::object::{Self, UID};
    use fp::flour::Flour;
    use fp::salt::Salt;
    use fp::yeast::Yeast;

    struct Bread has key, store {
        uid: UID,
        name: String,
    
    }

    // Function to combine Flour, Salt, and Yeast into Bread
    public fun combine_to_bread(flour: &Flour, salt: &Salt, yeast: &Yeast, ctx: &mut TxContext): Bread {
        let uid = object::new(ctx); 
        let name = ;

        Bread { uid, name, price, img_url }
    }

   

    
}
