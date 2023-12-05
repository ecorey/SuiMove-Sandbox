module fp::dough {

    // imports
    use std::string;
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

    
    

    public entry fun create_dough(ctx: &mut TxContext): Dough {
        
        let dough = new_dough(ctx);
        
        dough 
    }   

    

    public entry fun transfer_dough(dough: Dough, recipient: address) {
        transfer::transfer(dough, recipient);
    }


    // Function to combine Flour, Salt, and Yeast into Dough using references
    public fun combine(flour: &Flour, salt: &Salt, yeast: &Yeast, ctx: &mut TxContext): Dough {
        

        
        let dough = new_dough(ctx);
        
        
        create_dough(ctx)

    }



}