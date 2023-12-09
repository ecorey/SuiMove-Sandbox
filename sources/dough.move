module fp::dough {

    // imports
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    

    struct Dough has key {
       id: UID,
        
    }

    
    fun new_dough( ctx: &mut TxContext): Dough {
        Dough {
          
          id: object::new(ctx),
            
        }
    }


    // function to create the flour object and return it
    public entry fun create_dough(ctx: &mut TxContext) {
        let dough = new_dough(ctx);
        transfer::transfer(dough, tx_context::sender(ctx))
    }   
    

    public entry fun delete_dough(dough: Dough) {
        
        let Dough {
             id 
             } = dough;
        
        object::delete(id);
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
