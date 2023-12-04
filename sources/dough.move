module fp::dough {

    use sui::tx_context::{TxContext};
    use sui::object::{Self, UID};
    use fp::flour::Flour;
    use fp::salt::Salt;
    use fp::yeast::Yeast;

    struct Dough has key, store {
        uid: UID,
    }

    fun create_dough(ctx: &mut TxContext): Dough {
        let uid = object::new(ctx);
        Dough { uid }
    }

    // Function to combine Flour, Salt, and Yeast into Dough using references
    public fun combine(flour: &Flour, salt: &Salt, yeast: &Yeast, ctx: &mut TxContext): Dough {
        // Logic to combine, using references instead of consuming the resources
        create_dough(ctx)
    }
}
