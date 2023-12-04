module fp::dough {
    
    use sui::tx_context::{TxContext};
    use sui::object::{Self, UID};
    use fp::flour::Flour;
    use fp::salt::Salt;
    use fp::yeast::Yeast;

    struct Dough has key, store {
        uid: UID,
       
        
    }

    // Function to combine Flour, Salt, and Yeast into Bread
    public fun combine_to_bread(flour: &Flour, salt: &Salt, yeast: &Yeast, ctx: &mut TxContext): Dough {
        let uid = object::new(ctx); 
        
        
        Dough { uid }
    }

  

    
}