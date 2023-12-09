module bake::dough {
    use sui::object::{self, UID};
    use sui::tx_context::{self, TxContext};
    use sui::transfer;
    
    use bake::flour::{Flour, delete_flour};
    use bake::salt::{Salt, delete_salt};
    use bake::yeast::{Yeast, delete_yeast};

    struct Dough has key {
        id: UID,
    }

    public fun new_dough(ctx: &mut TxContext): Dough {
        Dough {
            id: object::new(ctx),
        }
    }

    public fun delete_dough(dough: &mut Dough) {
        object::delete(dough.id);
    }

    // Function to combine Flour, Salt, and Yeast into Dough
    public entry fun combine(flour: &mut Flour, salt: &mut Salt, yeast: &mut Yeast, ctx: &mut TxContext) {
        // Create new dough
        let dough = new_dough(ctx);
        transfer::transfer(dough, tx_context::sender(ctx));

        // Delete the original resources
        delete_flour(flour);
        delete_salt(salt);
        delete_yeast(yeast);
    }
}
