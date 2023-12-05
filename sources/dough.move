module fp::dough {

    // imports
    use std::string;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    use fp::flour::Flour;
    use fp::salt::Salt;
    use fp::yeast::Yeast;

    
    struct Dough has key {
        id: UID,
        
    }

    
    fun new_dough( ctx: &mut TxContext): Dough {
            Dough {
                id: object::new(ctx),
                
            }
        }

    
    
    public  fun create_dough(ctx: &mut TxContext): Dough {
        
        let dough = new_dough(ctx);
        
        dough 
    }   


    public fun transfer_dough(dough: Dough, recipient: address) {
        transfer::transfer(dough, recipient);
    }


     public fun delete_dough(dough: Dough) {
        let Dough { id } = dough;
        sui::object::delete(id);
    }

   
    // Function to combine Flour, Salt, and Yeast into Dough using references
    public fun combine(flour: Flour, salt: Salt, yeast: Yeast, ctx: &mut TxContext): Dough {
        
         // Delete flour, salt, and yeast
        fp::flour::delete_flour(flour); 
        fp::salt::delete_salt(salt);   
        fp::yeast::delete_yeast(yeast); 
        
        // Create and return new dough
        let dough = new_dough(ctx);
        dough

    }



}