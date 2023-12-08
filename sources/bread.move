module fp::bread {

    // imports
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    use fp::dough::{Dough, delete_dough};

    
    struct Bread has key {
        id: UID, 
        
    }


    fun new_bread( ctx: &mut TxContext): Bread {
            
            Bread {
                id: object::new(ctx),
                
            }
        }
        

    // Function to bake Dough into Bread
    public entry fun bake(dough: Dough, ctx: &mut TxContext) {
        
        // Delete the Dough object
        delete_dough(dough);

        // Create and return new dough
        let bread = new_bread(ctx);
        transfer::transfer(bread, tx_context::sender(ctx))
    
    }

}
