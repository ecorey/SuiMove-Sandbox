module fp::bread {
    
    use sui::tx_context::{TxContext};
    use sui::object::{Self, UID};
    use fp::dough::Dough;

    struct Bread has key, store {
        uid: UID,
    }

    public fun create_bread(ctx: &mut TxContext): Bread {
        let uid = object::new(ctx);
        Bread { uid }
    }

    // Function to bake Dough into Bread
    public fun bake(dough: &mut Dough, ctx: &mut TxContext): Bread {
        // Logic to bake using a mutable reference to Dough
        create_bread(ctx)
    }
}
